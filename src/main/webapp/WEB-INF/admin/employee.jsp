<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Employee <small>List Items</small>
      </h1>
      <ol class="breadcrumb">
      <li><a href="manage"><i class="fa fa-dashboard"></i> Home</a></li>
       <li><a href="manage/employee">Employee items</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
      	    <c:forEach var="User" items="${Users}" varStatus="loopCounter">
            	<div class="col-md-3">
				          <!-- Widget: user widget style 1 -->
				          <div class="box box-widget widget-user-2">
				            <!-- Add the bg color to the header using any of the bg-* classes -->
				           <a href="management/employee/detail?username=${User.username }"><div class="widget-user-header bg-yellow">
				              <div class="widget-user-image">
				                <img class="img-circle" src="dist/img/Avatar-blank.jpg" alt="User Avatar">
				              </div>
				              <!-- /.widget-user-image -->
				              <h3 class="widget-user-username">${User.name}</h3>
				              <h5 class="widget-user-desc">${User.user_role }</h5>
				            </div></a> 
				            <div class="box-footer no-padding">
				              <ul class="nav nav-stacked">
				                <li><a href="javascript:void(0);">Projects <span class="pull-right badge bg-blue">${User.projects}</span></a></li>
				                <li><a href="javascript:void(0);">Opened Tasks  <span class="pull-right badge bg-aqua">${User.opened_tasks}</span></a></li>
				                 <li><a href="javascript:void(0);">Closed Tasks <span class="pull-right badge bg-green">${User.closed_tasks}</span></a></li>
				                <li><a href="javascript:void(0);">Comment <span class="pull-right badge bg-red">${User.comments}</span></a></li>
				              </ul>
				            </div>
				          </div>
				          <!-- /.widget-user -->
				        </div>
            	</c:forEach>
            </div><!-- end row -->
    </section>
    <!-- /.content -->
  </div>