<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="content-wrapper" style="min-height: 916px;">
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

                    <div class="col-md-9">
                        <div class="box">
                            <div class="box-header">
                                <div class="box-tools">
                                   ${pagging }
                                </div>
                            </div>

                            <div class="box-body no-padding">
                                <table id="project_table" class="table table-hover" role="grid" aria-describedby="example2_info">
                                    <thead>
                                        <tr role="row">
                                            <th style="">#</th>

                                            <th style="width:40%">Title</th>

                                            <th style="width: 40px;">Progress</th>

                                            <th style="">Status</th>

                                            <th class="">Created</th>

                                            <th class="">Modified</th>

                                            <th class="">Created by</th>

                                            <th class="">Assigned to</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    		  <c:forEach var="task" items="${tasks}" varStatus="loopCounter">
		                                        <tr role="row" class="odd">
		                                            <td class="sorting_1">${task.id} </td>
		                                            <td><a href="publicinfo/task/view/${task.id}">${task.title}</a></td>
		                                            <td>
		                                                <div class="progress progress-xs">
		                                                    <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"
		                                                    			 aria-valuenow=" ${task.progress}" aria-valuemin="0" 
		                                                    			aria-valuemax="100" style="width: ${task.progress}%">
		                                                        <span class="sr-only">${task.progress}% Complete </span>
		                                                    </div>
		                                                </div>
		                                            </td>
		                                            <td>${task.task_status }</td>
		                                            <td>${task.create_date }</td>
		                                            <td>${task.modify_date }</td>
		                                            <td>${task.create_user }</td>
		                                            <td>${task.employee_id }</td>
		                                        </tr>   
		                                       </c:forEach>                                
                                    </tbody>
                                </table>
                            </div>

                            <!-- /.box-body -->
                        </div>

                        <!-- /. box -->
                    </div>

                    <!-- /.col -->

                    <div class="col-md-3" style="position: relative;">
                        <div class="wrap_left" style="">
                        	 <c:set var = "searchurl"  value= "publicinfo/task"/>
                            <sec:authorize access="hasAnyRole('ROLE_MANAGER','ROLE_LEAD') and isAuthenticated()">
                         	   <c:set var = "searchurl"  value= "management/task"/>
                            </sec:authorize>
                        <form role="form" id="frm-search-task" action="${searchurl }">
                            <div class="wrap_left_content">
                                <!-- /.box -->
 						
                                <div class="box box-solid" style="background: white;">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Search</h3>

                                        <div class="box-tools">
                                            <button type="button" class="btn btn-box-tool" data-widget="collapse">
                                                <i class="fa fa-minus"></i>
                                            </button>
                                        </div>

                                        <div class="input-group input-group-sm" style="margin-top: 10px;">
                                            <input type="text" class="form-control" name="tasktitle">

                                            <span class="input-group-btn">
                                                <button type="submit" class="btn btn-info btn-flat" id="btn-search-task-2">Search</button>
                                            </span>
                                        </div>
                                    </div>
                                    

                                    <div class="box-body" style="display: block;">
                                     			     <!-- radio -->
										<div  class="form-group">
							           
							                 <label>Tasks of</label>    
							                  <select class="form-control" id="task-search_project" name="project" data-activeproject="${activeproject }"
							                  								data-activetaskstatus="${activetaskstatus }" data-activetasktitle="${activetasktitle }">
							                  	 <c:forEach var="Project" items="${Projects}" varStatus="loopCounter">
				    					    		<option value="${Project.id }">${Project.name }</option>
				    					    	</c:forEach>
							                  </select>
							                </div>
                                       
                                            <div class="form-group">
                                                <label>Status</label>

                                               <div class="radio">
                                                    <label>
                                                        <input type="radio" name="taskstatus"  value="0">
                                                        All
                                                    </label>
                                                </div>

                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="taskstatus"  value="1">

                                                        Open
                                                    </label>
                                                </div>

                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="taskstatus"  value="2">

                                                        Closed
                                                    </label>
                                                </div>
                                            </div>
                                       
                                    </div>

                                    <!-- /.box-body -->
                                </div>

                                <!-- /.box -->
                              
                            </div>
                       </form>
                        </div>
                    </div>
                </div>

                <!-- /.row -->
            </section>

            <!-- /.content -->
        </div>
        
   <script src="js/task/table.js"></script>     