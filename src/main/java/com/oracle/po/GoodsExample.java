package com.oracle.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class GoodsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public GoodsExample() {
        oredCriteria = new ArrayList<>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("`name` is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("`name` is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("`name` =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("`name` <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("`name` >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("`name` >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("`name` <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("`name` <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("`name` like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("`name` not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("`name` in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("`name` not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("`name` between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("`name` not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andOnshelfIsNull() {
            addCriterion("onshelf is null");
            return (Criteria) this;
        }

        public Criteria andOnshelfIsNotNull() {
            addCriterion("onshelf is not null");
            return (Criteria) this;
        }

        public Criteria andOnshelfEqualTo(Date value) {
            addCriterionForJDBCDate("onshelf =", value, "onshelf");
            return (Criteria) this;
        }

        public Criteria andOnshelfNotEqualTo(Date value) {
            addCriterionForJDBCDate("onshelf <>", value, "onshelf");
            return (Criteria) this;
        }

        public Criteria andOnshelfGreaterThan(Date value) {
            addCriterionForJDBCDate("onshelf >", value, "onshelf");
            return (Criteria) this;
        }

        public Criteria andOnshelfGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("onshelf >=", value, "onshelf");
            return (Criteria) this;
        }

        public Criteria andOnshelfLessThan(Date value) {
            addCriterionForJDBCDate("onshelf <", value, "onshelf");
            return (Criteria) this;
        }

        public Criteria andOnshelfLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("onshelf <=", value, "onshelf");
            return (Criteria) this;
        }

        public Criteria andOnshelfIn(List<Date> values) {
            addCriterionForJDBCDate("onshelf in", values, "onshelf");
            return (Criteria) this;
        }

        public Criteria andOnshelfNotIn(List<Date> values) {
            addCriterionForJDBCDate("onshelf not in", values, "onshelf");
            return (Criteria) this;
        }

        public Criteria andOnshelfBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("onshelf between", value1, value2, "onshelf");
            return (Criteria) this;
        }

        public Criteria andOnshelfNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("onshelf not between", value1, value2, "onshelf");
            return (Criteria) this;
        }

        public Criteria andOffshelfIsNull() {
            addCriterion("offshelf is null");
            return (Criteria) this;
        }

        public Criteria andOffshelfIsNotNull() {
            addCriterion("offshelf is not null");
            return (Criteria) this;
        }

        public Criteria andOffshelfEqualTo(Date value) {
            addCriterionForJDBCDate("offshelf =", value, "offshelf");
            return (Criteria) this;
        }

        public Criteria andOffshelfNotEqualTo(Date value) {
            addCriterionForJDBCDate("offshelf <>", value, "offshelf");
            return (Criteria) this;
        }

        public Criteria andOffshelfGreaterThan(Date value) {
            addCriterionForJDBCDate("offshelf >", value, "offshelf");
            return (Criteria) this;
        }

        public Criteria andOffshelfGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("offshelf >=", value, "offshelf");
            return (Criteria) this;
        }

        public Criteria andOffshelfLessThan(Date value) {
            addCriterionForJDBCDate("offshelf <", value, "offshelf");
            return (Criteria) this;
        }

        public Criteria andOffshelfLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("offshelf <=", value, "offshelf");
            return (Criteria) this;
        }

        public Criteria andOffshelfIn(List<Date> values) {
            addCriterionForJDBCDate("offshelf in", values, "offshelf");
            return (Criteria) this;
        }

        public Criteria andOffshelfNotIn(List<Date> values) {
            addCriterionForJDBCDate("offshelf not in", values, "offshelf");
            return (Criteria) this;
        }

        public Criteria andOffshelfBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("offshelf between", value1, value2, "offshelf");
            return (Criteria) this;
        }

        public Criteria andOffshelfNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("offshelf not between", value1, value2, "offshelf");
            return (Criteria) this;
        }

        public Criteria andStateIsNull() {
            addCriterion("`state` is null");
            return (Criteria) this;
        }

        public Criteria andStateIsNotNull() {
            addCriterion("`state` is not null");
            return (Criteria) this;
        }

        public Criteria andStateEqualTo(String value) {
            addCriterion("`state` =", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotEqualTo(String value) {
            addCriterion("`state` <>", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThan(String value) {
            addCriterion("`state` >", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateGreaterThanOrEqualTo(String value) {
            addCriterion("`state` >=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThan(String value) {
            addCriterion("`state` <", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLessThanOrEqualTo(String value) {
            addCriterion("`state` <=", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateLike(String value) {
            addCriterion("`state` like", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotLike(String value) {
            addCriterion("`state` not like", value, "state");
            return (Criteria) this;
        }

        public Criteria andStateIn(List<String> values) {
            addCriterion("`state` in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotIn(List<String> values) {
            addCriterion("`state` not in", values, "state");
            return (Criteria) this;
        }

        public Criteria andStateBetween(String value1, String value2) {
            addCriterion("`state` between", value1, value2, "state");
            return (Criteria) this;
        }

        public Criteria andStateNotBetween(String value1, String value2) {
            addCriterion("`state` not between", value1, value2, "state");
            return (Criteria) this;
        }

        public Criteria andNumIsNull() {
            addCriterion("num is null");
            return (Criteria) this;
        }

        public Criteria andNumIsNotNull() {
            addCriterion("num is not null");
            return (Criteria) this;
        }

        public Criteria andNumEqualTo(Integer value) {
            addCriterion("num =", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumNotEqualTo(Integer value) {
            addCriterion("num <>", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumGreaterThan(Integer value) {
            addCriterion("num >", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("num >=", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumLessThan(Integer value) {
            addCriterion("num <", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumLessThanOrEqualTo(Integer value) {
            addCriterion("num <=", value, "num");
            return (Criteria) this;
        }

        public Criteria andNumIn(List<Integer> values) {
            addCriterion("num in", values, "num");
            return (Criteria) this;
        }

        public Criteria andNumNotIn(List<Integer> values) {
            addCriterion("num not in", values, "num");
            return (Criteria) this;
        }

        public Criteria andNumBetween(Integer value1, Integer value2) {
            addCriterion("num between", value1, value2, "num");
            return (Criteria) this;
        }

        public Criteria andNumNotBetween(Integer value1, Integer value2) {
            addCriterion("num not between", value1, value2, "num");
            return (Criteria) this;
        }

        public Criteria andProdateIsNull() {
            addCriterion("prodate is null");
            return (Criteria) this;
        }

        public Criteria andProdateIsNotNull() {
            addCriterion("prodate is not null");
            return (Criteria) this;
        }

        public Criteria andProdateEqualTo(Date value) {
            addCriterionForJDBCDate("prodate =", value, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateNotEqualTo(Date value) {
            addCriterionForJDBCDate("prodate <>", value, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateGreaterThan(Date value) {
            addCriterionForJDBCDate("prodate >", value, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("prodate >=", value, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateLessThan(Date value) {
            addCriterionForJDBCDate("prodate <", value, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("prodate <=", value, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateIn(List<Date> values) {
            addCriterionForJDBCDate("prodate in", values, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateNotIn(List<Date> values) {
            addCriterionForJDBCDate("prodate not in", values, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("prodate between", value1, value2, "prodate");
            return (Criteria) this;
        }

        public Criteria andProdateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("prodate not between", value1, value2, "prodate");
            return (Criteria) this;
        }

        public Criteria andReldateIsNull() {
            addCriterion("reldate is null");
            return (Criteria) this;
        }

        public Criteria andReldateIsNotNull() {
            addCriterion("reldate is not null");
            return (Criteria) this;
        }

        public Criteria andReldateEqualTo(Date value) {
            addCriterionForJDBCDate("reldate =", value, "reldate");
            return (Criteria) this;
        }

        public Criteria andReldateNotEqualTo(Date value) {
            addCriterionForJDBCDate("reldate <>", value, "reldate");
            return (Criteria) this;
        }

        public Criteria andReldateGreaterThan(Date value) {
            addCriterionForJDBCDate("reldate >", value, "reldate");
            return (Criteria) this;
        }

        public Criteria andReldateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("reldate >=", value, "reldate");
            return (Criteria) this;
        }

        public Criteria andReldateLessThan(Date value) {
            addCriterionForJDBCDate("reldate <", value, "reldate");
            return (Criteria) this;
        }

        public Criteria andReldateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("reldate <=", value, "reldate");
            return (Criteria) this;
        }

        public Criteria andReldateIn(List<Date> values) {
            addCriterionForJDBCDate("reldate in", values, "reldate");
            return (Criteria) this;
        }

        public Criteria andReldateNotIn(List<Date> values) {
            addCriterionForJDBCDate("reldate not in", values, "reldate");
            return (Criteria) this;
        }

        public Criteria andReldateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("reldate between", value1, value2, "reldate");
            return (Criteria) this;
        }

        public Criteria andReldateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("reldate not between", value1, value2, "reldate");
            return (Criteria) this;
        }

        public Criteria andPrideIsNull() {
            addCriterion("pride is null");
            return (Criteria) this;
        }

        public Criteria andPrideIsNotNull() {
            addCriterion("pride is not null");
            return (Criteria) this;
        }

        public Criteria andPrideEqualTo(String value) {
            addCriterion("pride =", value, "pride");
            return (Criteria) this;
        }

        public Criteria andPrideNotEqualTo(String value) {
            addCriterion("pride <>", value, "pride");
            return (Criteria) this;
        }

        public Criteria andPrideGreaterThan(String value) {
            addCriterion("pride >", value, "pride");
            return (Criteria) this;
        }

        public Criteria andPrideGreaterThanOrEqualTo(String value) {
            addCriterion("pride >=", value, "pride");
            return (Criteria) this;
        }

        public Criteria andPrideLessThan(String value) {
            addCriterion("pride <", value, "pride");
            return (Criteria) this;
        }

        public Criteria andPrideLessThanOrEqualTo(String value) {
            addCriterion("pride <=", value, "pride");
            return (Criteria) this;
        }

        public Criteria andPrideLike(String value) {
            addCriterion("pride like", value, "pride");
            return (Criteria) this;
        }

        public Criteria andPrideNotLike(String value) {
            addCriterion("pride not like", value, "pride");
            return (Criteria) this;
        }

        public Criteria andPrideIn(List<String> values) {
            addCriterion("pride in", values, "pride");
            return (Criteria) this;
        }

        public Criteria andPrideNotIn(List<String> values) {
            addCriterion("pride not in", values, "pride");
            return (Criteria) this;
        }

        public Criteria andPrideBetween(String value1, String value2) {
            addCriterion("pride between", value1, value2, "pride");
            return (Criteria) this;
        }

        public Criteria andPrideNotBetween(String value1, String value2) {
            addCriterion("pride not between", value1, value2, "pride");
            return (Criteria) this;
        }

        public Criteria andPicUrlIsNull() {
            addCriterion("pic_url is null");
            return (Criteria) this;
        }

        public Criteria andPicUrlIsNotNull() {
            addCriterion("pic_url is not null");
            return (Criteria) this;
        }

        public Criteria andPicUrlEqualTo(String value) {
            addCriterion("pic_url =", value, "picUrl");
            return (Criteria) this;
        }

        public Criteria andPicUrlNotEqualTo(String value) {
            addCriterion("pic_url <>", value, "picUrl");
            return (Criteria) this;
        }

        public Criteria andPicUrlGreaterThan(String value) {
            addCriterion("pic_url >", value, "picUrl");
            return (Criteria) this;
        }

        public Criteria andPicUrlGreaterThanOrEqualTo(String value) {
            addCriterion("pic_url >=", value, "picUrl");
            return (Criteria) this;
        }

        public Criteria andPicUrlLessThan(String value) {
            addCriterion("pic_url <", value, "picUrl");
            return (Criteria) this;
        }

        public Criteria andPicUrlLessThanOrEqualTo(String value) {
            addCriterion("pic_url <=", value, "picUrl");
            return (Criteria) this;
        }

        public Criteria andPicUrlLike(String value) {
            addCriterion("pic_url like", value, "picUrl");
            return (Criteria) this;
        }

        public Criteria andPicUrlNotLike(String value) {
            addCriterion("pic_url not like", value, "picUrl");
            return (Criteria) this;
        }

        public Criteria andPicUrlIn(List<String> values) {
            addCriterion("pic_url in", values, "picUrl");
            return (Criteria) this;
        }

        public Criteria andPicUrlNotIn(List<String> values) {
            addCriterion("pic_url not in", values, "picUrl");
            return (Criteria) this;
        }

        public Criteria andPicUrlBetween(String value1, String value2) {
            addCriterion("pic_url between", value1, value2, "picUrl");
            return (Criteria) this;
        }

        public Criteria andPicUrlNotBetween(String value1, String value2) {
            addCriterion("pic_url not between", value1, value2, "picUrl");
            return (Criteria) this;
        }
    }

    /**
     *
     */
    public static class Criteria extends GeneratedCriteria {
        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}