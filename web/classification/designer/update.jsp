<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
%>
<!doctype html>
<html class="no-js fixed-layout">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>设计师后台</title>
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="<%=path %>/css/amazeui.min.css"/>
    <link rel="stylesheet" href="<%=path %>/css/admin.css">
    <link rel="stylesheet" href="<%=path %>/css/beaut-home.css"/>
    <link rel="stylesheet" href="<%=path %>/css/style.css"/>
</head>
<body>

<c:choose>
	<c:when test="${sessionScope.customer != null ||
	 sessionScope.supply != null || sessionScope.company != null ||
	  sessionScope.admin != null || sessionScope.designer != null}">
		<c:import url="/model/menu_logined.jsp"></c:import>
	</c:when>
	<c:otherwise>
		<c:import url="/model/menu.jsp"></c:import>
	</c:otherwise>
</c:choose>

<div class="am-cf admin-main">
    <!-- sidebar start -->
    
    <c:import url="/model/designer-left.jsp"></c:import>

    <div class="admin-content">
        <div class="admin-content-body">
            <div class="am-cf am-padding">
                <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg"><a href="javascript:history.go(-1)" >返回</a></strong> / <small>设计师资料</small></div>
            </div>

            <div class="am-g">
                <div class="am-u-sm-12 am-u-lg-10 am-u-lg-offset-1">
                    <div class="am-panel am-panel-default">
                        <div class="am-panel-bd">
                        
                        	<a href="<%=path %>/des/headpage"><img src="<%=path %>/${sessionScope.designer.headicon}" 
                            alt="${sessionScope.designer.name }" class="am-img-thumbnail am-circle img-tx am-center" 
                            data-am-popover="{content: '点击修改头像', trigger: 'hover focus'}"></a>

                            <form id="form" method="post" class="am-form am-form-horizontal" enctype="multipart/form-data">
                                <span id="error">${requestScope.error }</span>
                                <input type="hidden" id="id" name="id" value="${sessionScope.designer.id }">
                                <div class="am-form-group">
                                    <label for="name" class="am-u-sm-2 am-form-label">昵称</label>
                                    <div class="am-u-sm-10">
                                        <input type="text" id="name" name="name" value="${sessionScope.designer.name }">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="email" class="am-u-sm-2 am-form-label">邮箱</label>
                                    <div class="am-u-sm-10">
                                        <input type="email" id="email" name="email" value="${sessionScope.designer.email }">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="address" class="am-u-sm-2 am-form-label">地址</label>
                                    <div class="am-u-sm-10">
                                        <input type="text" id="address" name="address" value="${sessionScope.designer.address }">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="phone" class="am-u-sm-2 am-form-label">手机号码</label>
                                    <div class="am-u-sm-10">
                                        <input type="text" id="phone" name="phone" value="${sessionScope.designer.phone }">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="style" class="am-u-sm-2 am-form-label">擅长风格</label>
                                    <div class="am-u-sm-10">
                                        <input type="text" id="style" name="style" value="${sessionScope.designer.style }">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="des" class="am-u-sm-2 am-form-label">描述</label>
                                    <div class="am-u-sm-10">
                                        <input type="text" id="des" name="des" value="${sessionScope.designer.des }">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="work_exp1" class="am-u-sm-2 am-form-label">工作经验</label>
                                    <div class="am-form-group am-u-sm-10">
                                    	  <c:if test="${sessionScope.designer.experience == 'workexp1' }">
		                                  	<label class="radio-inline">
                                            	<input type="radio" name="work_exp" id="work_exp1" checked value="workexp1"> 1-3年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp2" value="workexp2"> 3-5年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp3" value="workexp3"> 5-8年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp4" value="workexp4"> 8年以上
	                                        </label>
		                                  </c:if>
		                                  <c:if test="${sessionScope.designer.experience == 'workexp2' }">
		                                  	<label class="radio-inline">
                                            	<input type="radio" name="work_exp" id="work_exp1" value="workexp1"> 1-3年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp2" checked value="workexp2"> 3-5年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp3" value="workexp3"> 5-8年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp4" value="workexp4"> 8年以上
	                                        </label>
		                                  </c:if>
		                                  <c:if test="${sessionScope.designer.experience == 'workexp3' }">
		                                  	<label class="radio-inline">
                                            	<input type="radio" name="work_exp" id="work_exp1" value="workexp1"> 1-3年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp2" value="workexp2"> 3-5年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp3" checked value="workexp3"> 5-8年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp4" value="workexp4"> 8年以上
	                                        </label>
		                                  </c:if>
		                                  <c:if test="${sessionScope.designer.experience == 'workexp4' }">
		                                  	<label class="radio-inline">
                                            	<input type="radio" name="work_exp" id="work_exp1" value="workexp1"> 1-3年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp2" value="workexp2"> 3-5年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp3" value="workexp3"> 5-8年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp4" checked value="workexp4"> 8年以上
	                                        </label>
		                                  </c:if>
		                                  <c:if test="${sessionScope.designer.experience == null }">
		                                  	<label class="radio-inline">
                                            	<input type="radio" name="work_exp" id="work_exp1" checked value="workexp1"> 1-3年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp2" value="workexp2"> 3-5年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp3" value="workexp3"> 5-8年
	                                        </label>
	                                        <label class="radio-inline">
	                                            <input type="radio" name="work_exp" id="work_exp4" value="workexp4"> 8年以上
	                                        </label>
		                                  </c:if>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-10 am-u-sm-offset-2">
                                        <input type="button" class="am-btn am-btn-primary am-btn-block" value="提交修改" onclick="des_update();"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <c:import url="/model/footer.jsp"></c:import>
</div>
<!-- content end -->

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="<%=path %>/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="<%=path %>/js/amazeui.min.js"></script>
<script src="<%=path %>/js/app.js"></script>
<script src="<%=path %>/js/des-update.js"></script>
</body>
</html>
