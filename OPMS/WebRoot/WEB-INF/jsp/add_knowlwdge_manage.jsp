<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="" lang="en">
<head>
    <meta charset="UTF-8">
    <title>OPMS管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="author" content="lock">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/png">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">
    <link href="css/table-responsive.css" rel="stylesheet">
    <link href="css/default.css" rel="stylesheet">
</head>
<body class="sticky-header">
<section>
      <div class="left-side sticky-left-side" style="overflow: hidden;" tabindex="5000">
        <div class="logo">
            <a href="#">
                <img src="img/logo-left.png" alt="OPMS管理系统">
            </a>
        </div>
        <div class="logo-icon text-center">
            <a href="#">
                <img src="img/logo_icon.png" style="width: 40px;" alt="OPMS管理系统">
            </a>
        </div>
        <div class="left-side-inner">
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img alt="libai" src="img/96d7546cbe9cbe9e36ce11ffd9afcc95-cropper.jpg" class="media-object">
                    <div class="media-body">
                        <h4>
                            <a href="">${sessionScope.user.username}</a>
                        </h4>
                        <span>OPMS系统</span>
                    </div>
                </div>
                <h5 class="left-nav-title">控制台</h5>
                <ul class="nav nav-pills nav-stacked custom-nav">
                    <li>
                        <a href="">
                            <i class="fa fa-user"></i>
                            <span>个人设置</span>
                        </a>
                    </li>
                    <li>
                        <a href="tologout">
                            <i class="fa fa-sign-out"></i>
                            <span>退出</span></a>
                    </li>
                </ul>
            </div>
            <ul class="nav nav-pills nav-stacked custom-nav js-left-nav">
                <li class="">
                    <a href="#">
                        <i class="fa fa-home"></i>
                        <span>我的主页</span>
                    </a>
                </li>
                <li class="">
                    <a href="listProjectInfo">
                        <i class="fa fa-book"></i>
                        <span>项目管理</span>
                    </a>
                </li>
                <li>
                    <a href="listCheckworkbyuserid">
                        <i class="fa fa-tasks"></i>
                        <span>考勤管理</span>
                    </a>
                </li>
                <li>
                    <a href="approvalindex">
                        <i class="fa fa-suitcase"></i>
                        <span>审批管理</span>
                    </a>
                </li>
                <li>
                    <a href="all_knowledge_manage">
                        <i class="fa fa-tasks"></i>
                        <span>知识分享</span>
                    </a>
                </li>
                <li>
                    <a href="listAlbums">
                        <i class="fa fa-plane"></i>
                        <span>员工相册</span>
                    </a>
                </li>
                <li>
                    <a href="listResumes">
                        <i class="fa fa-laptop"></i>
                        <span>简历管理</span>
                    </a>
                </li>
                <li>
                    <a href="listPmsUsersProfile">
                        <i class="fa fa-user"></i>
                        <span>组织管理</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-content">
        <div class="header-section">
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <div class="menu-right">
                <ul class="notification-menu">
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-head pull-right">
                            <h5 class="title">你有 0 最新信息</h5>
                            <ul class="dropdown-list normal-list">
                                <li class="text-center">目前还没有最新消息</li>
                                <li class="new">
                                    <a href="message_manage.html">查看更多</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="javascript:;" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <img src="img/96d7546cbe9cbe9e36ce11ffd9afcc95-cropper.jpg" alt="libai">
                            ${user.username}
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li>
                                <a href="">
                                    <i class="fa fa-user"></i>
                                    个人主页
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-cog"></i>
                                    基本资料
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-camera"></i>
                                    更换头像
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-cog"></i>
                                    更换密码
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-th-list"></i>
                                    我的任务</a>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-sign-out"></i>
                                    退出
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="page-heading">
            <h3> 知识分享 </h3>
            <ul class="breadcrumb pull-left">
                <li> <a href="">OPMS</a> </li>
                <li> <a href="<%=request.getContextPath()%>/all_knowledge_manage">知识分享</a> </li>
                <li class="active"> 知识 </li>
            </ul>
            <div class="pull-right"><a href="#" class="btn btn-success">+分享知识</a></div>
        </div>
        <div class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading"></header>
                        <div class="panel-body">
                            <form  class="form-horizontal adminex-form" id="knowledge-form1" novalidate=""action="add_knowlwdge_manage01" method="post">
                            <!-- 写隐藏域  那userid值 -->
                               <input type="hidden" name="userid" value="${user.userid}">
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label"><span>*</span>类别</label>
                                    <div class="col-sm-10">
                                        <select name="sortid" class="form-control">
                                            <option value=" ">请选择分类</option>
                                            <option value="1">企业文化</option>
                                            <option value="2">管理知识</option>
                                            <option value="3">财务知识</option>
                                            <option value="4">技术分享</option>
                                            <option value="5">服务器</option>
                                            <option value="6">市场营销</option>
                                            <option value="7">运营</option>
                                            <option value="8">随笔</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label"><span>*</span>标题</label>
                                    <div class="col-sm-10">
                                        <input name="title" value="" class="form-control" placeholder="请填写标题" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label">标签</label>
                                    <div class="col-sm-10">
                                        <input name="tag" value="" class="form-control" placeholder="填写标签" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label">URL</label>
                                    <div class="col-sm-10">
                                        <input name="url" value="" class="form-control" placeholder="http://" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label"><span>*</span>简介</label>
                                    <div class="col-sm-10">
                                        <textarea name="summary" placeholder="请填写简介" style="height: 90px;" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 col-sm-2 control-label"><span>*</span>内容</label>
                                    <div class="col-sm-10">
                                        <textarea name="content" placeholder="请填写内容" style="height: 400px;" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-2 col-sm-2 control-label"></label>
                                    <div class="col-lg-10">
                                        <input name="id" value="1" type="hidden">
                                        <button type="submit" class="btn btn-primary">提 交</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <footer> 2016 © Admin by Lock &nbsp;&nbsp;<a href="">OPMS官网</a> · <a href="">OPMS手册</a></footer>
    </div>
</section>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<div id="ascrail2000" class="nicescroll-rails" style="width: 6px; z-index: 1000; background: rgb(66, 79, 99) none repeat scroll 0% 0%; cursor: default; position: fixed; top: 0px; height: 100%; right: 0px; opacity: 0;">
    <div style="position: relative; top: 0px; float: right; width: 6px; height: 404px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
</div>
<div id="ascrail2000-hr" class="nicescroll-rails" style="height: 6px; z-index: 1000; background: rgb(66, 79, 99) none repeat scroll 0% 0%; position: fixed; left: 0px; width: 100%; bottom: 0px; cursor: default; display: none; opacity: 0;">
    <div style="position: relative; top: 0px; height: 6px; width: 1366px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
</div>
<div id="ascrail2001" class="nicescroll-rails" style="width: 3px; z-index: 100; background: rgb(66, 79, 99) none repeat scroll 0% 0%; cursor: default; position: fixed; top: 0px; left: 137px; height: 636px; display: none; opacity: 0;">
    <div style="position: relative; top: 0px; float: right; width: 3px; height: 0px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px;"></div>
</div>
<div id="ascrail2001-hr" class="nicescroll-rails" style="height: 3px; z-index: 100; background: rgb(66, 79, 99) none repeat scroll 0% 0%; top: 633px; left: 0px; position: fixed; cursor: default; display: none; opacity: 0;">
    <div style="position: relative; top: 0px; height: 3px; width: 0px; background-color: rgb(101, 206, 167); border: 0px none; background-clip: padding-box; border-radius: 0px; left: 0px;"></div>
</div>
<script src="js/jquery.validate.js"></script>
<script src="js/opms.js"></script>
<script src="js/kindeditor-min.js"></script>
<script src="js/zh-CN.js"></script>
<script>
    $(function(){
        var editor = KindEditor.create('textarea[name="content"]', {
            uploadJson: "/kindeditor/upload",
            allowFileManager: true,
            filterMode : false,
            afterBlur: function(){this.sync();}
        });
        $('#knowledge-form1').validate({
            ignore:'',		    
    		rules : {
    			sortid:{required:true},
    			title:{required: true},
    			summary:{required: true},
    			content:{required:true}
            },
            messages : {
    			sortid:{required:'请选择分类'},
    			title:{required: '请填写标题'},
    			summary:{required: '请填写简介'},
    			content:{required:'请填写正文'}
            },
        });	
    })
</script>

</body>
</html>
