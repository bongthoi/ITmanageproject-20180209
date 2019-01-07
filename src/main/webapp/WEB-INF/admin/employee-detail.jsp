<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Employee <small>Employee detail</small>
      </h1>
      <ol class="breadcrumb">
         <li><a href="dashboard/"><i class="fa fa-dashboard"></i> Home</a></li>
          <li><a href="management/employee">Employee</a></li>
        <li><a href="management/employee/detail/111"> detail</a></li>
      </ol>
    </section>

<section class="content">
                <div class="row">
                    <!-- /.col -->
                    <div class="col-md-8">
                        <div class="box box-widget box_person">
                            <div class="box-header with-border no-padding">
                                <div class="">
                                    <div class="">
                                        <div class="mailbox-controls">
                                            <!-- Check all button -->
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-default btn-sm checkbox-toggle">
                                                    <i class="fa fa-save ">
                                                        
                                                    </i>
                                                </button>
                                                <button type="button" class="btn btn-default btn-sm checkbox-toggle">
                                                    <i class="fa fa-remove text-red"></i>
                                                </button>
                                            </div>
                                            <button type="button" class="btn btn-default btn-sm"><i class="fa fa-edit"></i></button>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-user-secret"></i></button>
                                                <button type="button" class="btn btn-default btn-sm"><i class="fa  fa-trash-o"></i></button>
                                            </div>

                                        </div>

                                    </div>



                                </div>

                            </div>
                            <!-- /.box-header -->
                            <div class="box-body box-body_info">
                                <div class="">
                                    <div class="col-md-3">
                                        <div class="pad">
                                            <img class="avatar" src="http://placehold.it/200x200" alt="">
                                        </div>

                                    </div>
                                    <div class="col-md-9" style="padding:10px;overflow: auto;">
                                        <div class="" style="">
                                            <div class="line_first margin-bottom">
                                                <span class="stt margin-r-5" style=""></span>
                                                <span class="name text-bold"></span>
                                                <span class="name text-bold pull-right">Status: 
                                                    <span class="label label-success ">Active</span>
                                                </span>
                                            </div>

                                            <div class="col-md-6">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <td class="">Username: </td>
                                                            <td class=""><a class="" href="javascript:void(0)">${User.username }</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="">Name: </td>
                                                            <td class=""><span class="font-color-light">${User.name }</span></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="">Phone: </td>
                                                            <td class=""><span class="font-color-light"><a href="vinhsang.com" class="">${User.phone }</a></span></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="">Positon: </td>
                                                            <td class=""><span class="font-color-light">${User.positon }</span></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                          

                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer pad overflow_auto" style="">
                                <div class="pad no-pad-top"><span class="name text-bold text-red">Participation</span></div>
                                <table class="table table-striped table-hover" id="tb-employee-project" data-employee="${User.username }">
                                    <tbody>
                                        <tr>
                                            <th style="">Project</th>
                                            <th>Public description</th>
                                            <th style="width: 100px">Actions</th>
                                        </tr>
                                         <c:forEach var="Project" items="${Projects}" varStatus="loopCounter">
                                         		 <tr>
		                                            <td>${Project.name}</td>
		                                            <td>${Project.description }</td>
		                                            <td class=""> <button class="btn btn-danger btn-sm " onclick="remove_tr(this);" data-option="${Project.id }"><i class="fa  fa-trash-o"></i></button></td>
		                                        </tr>
                                         </c:forEach>
                                       
									
                                    </tbody>
                                </table>
                                <button  class="btn btn-primary btn-sm" id="btn-add-role"><i class="fa  fa-plus margin-r-5"></i> Add Role</button>
                            </div>
                            <div class="box-footer pad overflow_auto" style="">
                                <div class="pad no-pad-top"><span class="name text-bold text-red">User statistics</span></div>
                                <table class="table table-striped table-hover ">
                                    <tbody>
                                        <tr class="">
                                          
                                            <th>Assigned items</th>
   
                                            <th>Comments</th>
                                            <th>Total time spent</th>
                                        </tr>
                                        <tr>
                                         
                                            <td>
                                                <span class="btn-block"><strong class="margin-r-5">${User.opened_tasks }</strong> Open</span>
                                                <span class="btn-block"><strong class="margin-r-5">${User.closed_tasks }</strong> Closed</span>
                                            </td>
                                            <td>
                                                <strong>${User.comments}</strong>
                                            </td>
                                            <td class=""> <strong>${jspHelper.convert_timetoH(User.total_time_spent)}</strong> </td>
                                        </tr>

                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>

                    <!-- /.col -->

                    <div class="col-md-4" style="position: relative;" id="log-by-user">
 
                    </div>
                </div>

                <!-- /.row -->
            </section>

  </div>
  
<script>

$(function () {
	var username=$("#tb-employee-project").data('employee');
	var pdata={"username":username};
	//console.log(pdata);
	get_logbyuser(pdata);
});

</script>
