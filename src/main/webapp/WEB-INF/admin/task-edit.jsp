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
	                                            <button type="button" class="btn btn-primary btn-sm checkbox-toggle" id="private-task-save-manager"><i class="fa fa-save"></i>
	                                            </button>
                                            <a href="publicinfo/task/view/${task.id }" class="btn btn-danger btn-sm checkbox-toggle"><i class="fa fa-times"></i>
                                            </a>
                                        </div>

                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control"  id ="taskview-progress" value="${task.progress }">
                                    </div>
                                    <div class="col-md-4" style="text-align: right;line-height: 40px;">
                                        <span><strong>Status: </strong><select  id="selecttask_status">
											    					 <c:forEach var="status" items="${lstatus}" varStatus="loopCounter">
											    					    		<option value="${status.id }">${status.name }</option>
											    					    </c:forEach>
											    				</select></span>
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
                                               
                                            </div>
											<div class="form-group">
                                            	    <span class="description text-bold">Title:</span>
                                            	    <input type="text" class="form-control" value="${task.title }" id="private-task-title">
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
                                            	<div class="form-group">
                                            	    <span class="description text-bold">Description:</span>
                                            	     <textarea rows="10" cols="5" class="form-control" id="private-task-description">${task.description }</textarea>
                                            	</div>
                                            
                                           
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-md-4" style="padding:10px;background: #f7f7f7">

                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td class="">Estimated effort:<small class="label  bg-yellow">${task.getEstimated_h()}h ${task.getEstimated_m() }</small></td>
                                                    <td class="">Time spent:<small class="label  bg-yellow">${task.getSpent_h() }h ${task.getSpent_m() }</small></td>
                                                </tr>
                                                <tr>
                                                    <td class="">
                                                    			 <sec:authorize access="hasAnyRole('ROLE_MANAGER','ROLE_LEAD') and isAuthenticated()">
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
                                                    <td class=""><select class="form-control" id="selectAssigned">
											    					 <c:forEach var="User" items="${Users}" varStatus="loopCounter">
											    					    		<option value="${User.username }">${User.name }</option>
											    					    </c:forEach>
											    				</select>
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
                         
                        
                        </div>
                    </div>

                    <!-- /.col -->

                    <div class="col-md-4" style="position: relative;">
                       
                    </div>
                </div>
                <!-- /.row -->
            </section>
            <!-- /.content -->
        </div>
        
<script src="js/task/view.js"></script>