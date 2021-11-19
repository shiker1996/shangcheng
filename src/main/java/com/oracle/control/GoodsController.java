package com.oracle.control;

import com.oracle.dao.CustomerMapper;
import com.oracle.dao.UserCartDao;
import com.oracle.dao.support.CartMapperSupport;
import com.oracle.po.Customer;
import com.oracle.po.Goods;
import com.oracle.po.Record;
import com.oracle.po.UserCart;
import com.oracle.service.CustomerService;
import com.oracle.service.GoodsService;
import com.oracle.service.RecordService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ClassUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.nio.file.*;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
public class GoodsController {

    @Autowired
    public GoodsService goodsService;
    @Autowired
    public RecordService recordService;
    @Resource
    private CartMapperSupport cartMapperSupport;
    @Resource
    private UserCartDao userCartDao;
    @Resource
    private CustomerMapper customerMapper;

    @RequestMapping("elist")
    public ModelAndView Elist() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("list", goodsService.selectAll());
        mav.setViewName("elist");
        return mav;
    }

    @RequestMapping("clist")
    public ModelAndView Clist() {
        System.out.println("haha");
        ModelAndView mav = new ModelAndView();
        List<Goods> list = goodsService.selectAll();
        List<Goods> clist = new ArrayList<>();
        for (Goods goods : list) {
            if (goods.getState().equals("good")) {
                clist.add(goods);
            }
        }
        mav.addObject("list", clist);
        mav.setViewName("clist");
        return mav;
    }

    @RequestMapping("station")
    public ModelAndView xiangQing(String id) {
        Goods good = goodsService.selectByPrimaryKey(Integer.parseInt(id));
        ModelAndView mav = new ModelAndView();
        mav.addObject("good", good);
        mav.setViewName("station");
        return mav;
    }

    @RequestMapping("purchase")
    public String purchase(@RequestParam("ids") List<Integer> ids) {
        cartMapperSupport.invalidCart(ids);
        for (Integer id : ids) {
            UserCart userCart = userCartDao.selectByPrimaryKey(id);
            Goods goodold = goodsService.selectByPrimaryKey(userCart.getGoodsId());
            Customer customer = customerMapper.selectByPrimaryKey(userCart.getCustomerId());
            goodold.setNum(goodold.getNum() - 1);
            Record record = new Record();
            record.setGname(goodold.getName());
            record.setGid(goodold.getId());
            record.setGstate("交易完毕");
            record.setName(customer.getName());
            recordService.insertSelective(record);
            goodsService.updateByPrimaryKeySelective(goodold);
        }
        cartMapperSupport.invalidCart(ids);
        return "redirect:clist";
    }

    @RequestMapping(value = "add")
    public ModelAndView add(@RequestParam("name") String name,
                            @RequestParam("num") String num,
                            @RequestParam("pride") String pride,
                            @RequestParam("reldate") String reldate,
                            @RequestParam("prodate") String prodate,
                            @RequestParam("onshelf") String onshelf, @RequestPart("file") MultipartFile file) throws FileNotFoundException {
        ModelAndView mav = new ModelAndView();
        if (!goodsService.isNotExist(name)) {
            mav.addObject("msg", "商品已存在，请勿重复添加！");
            mav.setViewName("add");
            return mav;
        }
        String fileName = file.getOriginalFilename();  // 文件名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));// 后缀名
        String localFilePath = ResourceUtils.getFile(ResourceUtils.FILE_URL_PREFIX + "src/main/resources/static/img/").getAbsolutePath();
        String filePath = ClassUtils.getDefaultClassLoader().getResource("static/img/").getPath();
        fileName = UUID.randomUUID() + suffixName;
        File dest = new File(filePath + fileName);
        File localDest = new File(localFilePath + "/" + fileName);
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdirs();
        }
        if (!localDest.getParentFile().exists()) {
            localDest.getParentFile().mkdirs();
        }
        try {
            file.transferTo(dest);
            FileUtils.copyFile(dest, localDest);
        } catch (IOException e) {
            mav.addObject("msg", "照片添加失败，" + e.getMessage());
            mav.setViewName("add");
            return mav;
        }
        Goods goods = new Goods();
        goods.setName(name);
        goods.setNum(Integer.parseInt(num));
        goods.setPride(pride);
        goods.setState("good");
        goods.setOnshelf(Date.valueOf(onshelf));
        goods.setProdate(Date.valueOf(prodate));
        goods.setReldate(Date.valueOf(reldate));
        goods.setPicUrl(fileName);
        goodsService.insertSelective(goods);
        mav.setViewName("redirect:elist");
        return mav;
    }

    @RequestMapping("updateInfo")
    public ModelAndView upinfo(String id) {
        Goods goods = goodsService.selectByPrimaryKey(Integer.parseInt(id));
        ModelAndView mav = new ModelAndView();
        mav.addObject("goods", goods);
        mav.setViewName("gupdate");
        return mav;
    }

    @RequestMapping("gupdate")
    public String update(Goods goods) {
        goodsService.updateByPrimaryKeySelective(goods);
        return "redirect:elist";
    }

    @RequestMapping("delete")
    public String update(String id) {
        goodsService.deleteByPrimaryKey(Integer.parseInt(id));
        return "redirect:elist";
    }
}
