<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<div class="content-wrapper item_page" style="min-height: 916px;">
            <!-- Content Header (Page header) -->

            <section class="content-header">
                <a href="management/task/create-task" class="btn btn-default" style="width: 120px;">
                    <i class="fa fa-edit" style="font-size: 20px;line-height: 14px;vertical-align: sub;"></i> Create a Task
                </a>
            </section>

            <!-- Main content -->

            <section class="content">
                <div class="row">
                    <!-- /.col -->

                    <div class="col-md-8">
                        <div class="box box-widget">
                            <div class="box-header with-border">
                                <div class="">
                                    <div class="col-md-4">
                                        <div class="mailbox-controls">
                                            <!-- Check all button -->
                                            <input type="hidden" id="id-hidden-json-task"  data-option='${jspHelper.toJson(task)}'>
                                            <sec:authorize access="hasRole('ROLE_MANAGER') and isAuthenticated()">
	                                            <button type="button" class="btn btn-primary btn-sm checkbox-toggle" id="public-task-save-manager"><i class="fa fa-save"></i>
	                                            </button>
                                            </sec:authorize>
                                               <sec:authorize access="hasRole('ROLE_EMPLOYEE') and isAuthenticated()">
	                                            <button type="button" class="btn btn-primary btn-sm checkbox-toggle" id="public-task-save-employer"><i class="fa fa-save"></i>
	                                            </button>
                                            </sec:authorize>
                                            <a href="management/task/edit/${task.id }" class="btn btn-warning btn-sm checkbox-toggle" id="public-task-edit"><i class="fa fa-edit"></i>
                                            </a>
                                            <a href="publicinfo/task/view/${task.id }" class="btn btn-danger btn-sm checkbox-toggle"><i class="fa fa-times"></i>
                                            </a>
                                        </div>

                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control"  id ="taskview-progress" value="${task.progress }">
                                    </div>
                                    <div class="col-md-4" style="text-align: right;line-height: 40px;">
                                        <span><strong>Status: </strong>${task.task_status_html }</span>
                                    </div>

                                </div>

                            </div>
                            <!-- /.box-header -->
                            <div class="box-body box-body_info">
                                <div class="">
                                    <div class="col-md-8" style="padding:10px;overflow: auto;">
                                        <div class="" style="">
                                            <div class="line_first margin-bottom">
                                                <span class="stt margin-r-5" style="">#${task.id }</span>
                                                <span class="name text-bold">${task.title }</span>
                                            </div>

                                            <div class="">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <td class="">Project: </td>
                                                            <td class=""><a href="publicinfo/project/detail/${task.project_id }" class="font-color-light">${task.project_name }</a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="col-xs-12 line_last">
                                                <span class="description text-bold">Description:</span>
                                                <p>${task.description }</p>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-md-4" style="padding:10px;background: #f7f7f7">

                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td class="" style="width: 50%;">Estimated effort:<small class="label  bg-yellow">${task.getEstimated_h()}h ${task.getEstimated_m() }</small></td>
                                                    <td class="">Time spent:<small class="label  bg-yellow">${task.getSpent_h() }h ${task.getSpent_m() }</small></td>
                                                </tr>
                                                <tr>
                                                    <td class="">
                                                    			 <sec:authorize access="hasRole('ROLE_MANAGER') and isAuthenticated()">
                                                    				<input type="text" style="width:30%" placeholder="" id="Estimated_h"> h
                                                    				<input type="text" style="width:30%" placeholder="" id="Estimated_m"> m
                                                    				</sec:authorize>
                                                    </td>
                                                     <td class="">
                                                     	 <sec:authorize access="hasRole('ROLE_EMPLOYEE') and isAuthenticated()">
                                                     				<input type="text" style="width:30%" placeholder="" id="Spent_h"> h
                                                    				<input type="text" style="width:30%" placeholder="" id="Spent_m"> m
                                                    				</sec:authorize>
                                                    </td>
                                                   
                                                </tr>
                                                <tr>
                                                    <td class="" colspan="2"></td>
                                                </tr>
                                                <tr>
                                                    <td class="">Assigned to: </td>
                                                    <td class=""><a href="" class="">${task.employee_id }</a></td>
                                                </tr>

                                                <tr>
                                                    <td class=""></td>
                                                    <td class=""></td>
                                                </tr>
                                                <tr>
                                                    <td class="" colspan="2"></td>
                                                </tr>
                                                <tr>
                                                    <td class="">Created by: </td>
                                                    <td class=""><a href="#">${task.create_user }</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="">Created: </td>
                                                    <td class=""><strong>${jspHelper.time_ago(task.create_date) }</strong></td>
                                                </tr>
                                                <tr>
                                                    <td class="">Last modified: </td>
                                                    <td class=""><strong>
                                                    			<c:choose>
																    <c:when test="${empty task.modify_date}">
																      	Not set
																    </c:when>
																    <c:otherwise>
																        ${jspHelper.time_ago(task.modify_date) }
																    </c:otherwise>
																</c:choose>
                                                    </strong></td>
                                                </tr>
                                                <tr>
                                                    <td class="" colspan="2"></td>
                                                </tr>
                                               
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer" style="">
                                <strong class="mr-l-30">Comments: </strong> 2 <strong class="mr-l-30">Views: </strong> ${task.count_visisted } <strong class="mr-l-30">Subscribers: </strong> 2
                            </div>
                            <div class="box-footer ">
                                <div class="direct-chat-messages" style="height: 300px;overflow: auto;">
                                    <!-- Message. Default to the left -->
                                    <div class="direct-chat-msg">
                                        <div class="direct-chat-info clearfix">
                                            <span class="direct-chat-name pull-left">Alexander Pierce</span>
                                            <span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
                                        </div>
                                        <!-- /.direct-chat-info -->
                                        <img class="direct-chat-img" src="dist/img/user1-128x128.jpg" alt="message user image">
                                        <!-- /.direct-chat-img -->
                                        <div class="direct-chat-text">
                                            Is this template really for free? That's unbelievable!
                                        </div>
                                        <!-- /.direct-chat-text -->
                                    </div>
                                    <!-- Message. Default to the left -->
                                    <div class="direct-chat-msg">
                                        <div class="direct-chat-info clearfix">
                                            <span class="direct-chat-name pull-left">Alexander Pierce</span>
                                            <span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
                                        </div>
                                        <!-- /.direct-chat-info -->
                                        <img class="direct-chat-img" src="dist/img/user1-128x128.jpg" alt="message user image">
                                        <!-- /.direct-chat-img -->
                                        <div class="direct-chat-text">
                                            Is this template really for free? That's unbelievable!
                                        </div>
                                        <!-- /.direct-chat-text -->
                                    </div>
                                    <!-- /.direct-chat-msg -->

                                    <!-- Message. Default to the left -->
                                    <div class="direct-chat-msg">
                                        <div class="direct-chat-info clearfix">
                                            <span class="direct-chat-name pull-left">Alexander Pierce</span>
                                            <span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
                                        </div>
                                        <!-- /.direct-chat-info -->
                                        <img class="direct-chat-img" src="dist/img/user1-128x128.jpg" alt="message user image">
                                        <!-- /.direct-chat-img -->
                                        <div class="direct-chat-text">
                                            Is this template really for free? That's unbelievable!
                                        </div>
                                        <!-- /.direct-chat-text -->
                                    </div>
                                    <!-- /.direct-chat-msg -->
                                    <!-- Message. Default to the left -->
                                    <div class="direct-chat-msg">
                                        <div class="direct-chat-info clearfix">
                                            <span class="direct-chat-name pull-left">Alexander Pierce</span>
                                            <span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
                                        </div>
                                        <!-- /.direct-chat-info -->
                                        <img class="direct-chat-img" src="dist/img/user1-128x128.jpg" alt="message user image">
                                        <!-- /.direct-chat-img -->
                                        <div class="direct-chat-text">
                                            Is this template really for free? That's unbelievable!
                                        </div>
                                        <!-- /.direct-chat-text -->
                                    </div>
                                    <!-- /.direct-chat-msg -->
                                    <!-- Message. Default to the left -->
                                    <div class="direct-chat-msg">
                                        <div class="direct-chat-info clearfix">
                                            <span class="direct-chat-name pull-left">Alexander Pierce</span>
                                            <span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
                                        </div>
                                        <!-- /.direct-chat-info -->
                                        <img class="direct-chat-img" src="dist/img/user1-128x128.jpg" alt="message user image">
                                        <!-- /.direct-chat-img -->
                                        <div class="direct-chat-text">
                                            Is this template really for free? That's unbelievable!
                                        </div>
                                        <!-- /.direct-chat-text -->
                                    </div>
                                    <!-- /.direct-chat-msg -->
                                    <!-- Message. Default to the left -->
                                    <div class="direct-chat-msg">
                                        <div class="direct-chat-info clearfix">
                                            <span class="direct-chat-name pull-left">Alexander Pierce</span>
                                            <span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
                                        </div>
                                        <!-- /.direct-chat-info -->
                                        <img class="direct-chat-img" src="dist/img/user1-128x128.jpg" alt="message user image">
                                        <!-- /.direct-chat-img -->
                                        <div class="direct-chat-text">
                                            Is this template really for free? That's unbelievable!
                                        </div>
                                        <!-- /.direct-chat-text -->
                                    </div>
                                    <!-- /.direct-chat-msg -->


                                </div>
                            </div>
                            <!-- /.box-footer -->
                            <div class="box-footer">
                                <form action="#" method="post">
                                    <img class="img-responsive img-circle img-sm" src="../Admin-glorious/dist/img/user4-128x128.jpg" alt="Alt Text">
                                    <!-- .img-push is used to add margin to elements next to floating images -->
                                    <div class="img-push">
                                        <input type="text" class="form-control input-sm" placeholder="Press enter to post comment">
                                    </div>
                                </form>
                            </div>
                            <!-- /.box-footer -->
                        </div>
                    </div>

                    <!-- /.col -->

                    <div class="col-md-4" style="position: relative;" id="log-by-user">
           
                    </div>
                </div>
                <!-- /.row -->
            </section>
            <!-- /.content -->
        </div>
        
<script src="js/task/view.js"></script>

<script>

$(function () {
	var task=$("#id-hidden-json-task").data('option');
	var pdata={"taskid":task.id};
	//console.log(pdata);
	get_logbytask(pdata);
});

</script>