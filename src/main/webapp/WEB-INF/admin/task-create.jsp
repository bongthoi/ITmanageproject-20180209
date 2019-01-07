<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Task <small>Create a Task</small>
      </h1>
      <ol class="breadcrumb">
         <li><a href="management/"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="management/task">Task</a></li>
        <li  class="active">Create a Task</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
	<div class="row">
	<form  method="post" id="frm-task">
	<input type="hidden" name="sqltype" value="A">
		<div class="col-md-6" >
			 <!-- Default box -->
      <div class="box box-primary">
        <div class="box-header with-border">
		    <h3 class="box-title"><i class="fa fa-tag"></i>Task info</h3>
        </div> 
        <div class="box-body">
       		 <div class="row">
       			 <div class="col-md-6">
        			  <div class="form-group">
		    				<label class="">Project</label>
		    				<select class="form-control" name="project_id">
		    					 <c:forEach var="Project" items="${Projects}" varStatus="loopCounter">
		    					    		<option value="${Project.id }">${Project.name }</option>
		    					    </c:forEach>
		    				</select>
		    			</div>
		    			
		    	</div>
       		 </div>
		    			<div class="form-group">
		    				<label class="">Title</label>
		    				<input type="text" class="form-control" name="title">
		    			</div>
		    			<div class="form-group">
		    				<label class="">Description</label>
		    				<textarea class="form-control" rows="10" name="description"></textarea>
		    			</div>
		    	<div class="row">
       			 <div class="col-md-6">
        			  <div class="form-group">
		    				<label class="">Assign to:</label>
		    				<select class="form-control" name="employee_id">
		    					 <c:forEach var="User" items="${Users}" varStatus="loopCounter">
		    					    		<option value="${User.username }">${User.name }</option>
		    					    </c:forEach>
		    				</select>
		    			</div>
		    			<div class="form-group">
		    				<label class="">Progress</label>
		    				<input type="text" class="form-control"  name="progress">
		    			</div>
		    		
		    	</div>
        		<div class="col-md-6">
		    			<div class="row">
		    					<div class="col-md-6">
		    							<div class="form-group">
						    				<label class="">Estimated(:h)</label>
						    				<div class="input-group">
									                    <input type="text" class="form-control " name="Estimated_h">
									                    <div class="input-group-addon">
									                  			  h
									                    </div>
									                  </div>
						    			</div>
		    					</div>
		    					<div class="col-md-6">
				    					<div class="form-group">
						    				<label class="">(:m)</label>
						    					<div class="input-group">
									                    <input type="text" class="form-control " name="Estimated_m">
									                    <div class="input-group-addon">
									                  			  m
									                    </div>
									                  </div>
						    			</div>
		    					</div>
		    			</div>
		    			<div class="row">
		    					<div class="col-md-6">
		    							<div class="form-group">
						    				<label class="">Spent(:h)</label>
						    				<div class="input-group">
									                    <input type="text" class="form-control " name="Spent_h">
									                    <div class="input-group-addon">
									                  			  h
									                    </div>
									                  </div>
						    			</div>
		    					</div>
		    					<div class="col-md-6">
				    					<div class="form-group">
						    				<label class="">(:m)</label>
						    				<div class="input-group">
									                    <input type="text" class="form-control " name="Spent_m">
									                    <div class="input-group-addon">
									                  			  m
									                    </div>
									                  </div>
						    			</div>
		    					</div>
		    			</div>
        				
        		</div>
       		 </div>
       	
		    		
        </div>
		        <!-- /.box-body -->
		        <div class="box-footer ">
		      	  <div class="mailbox-controls">
			             <div class="pull-right">
			             	<input type="button" class="btn btn-primary" value="Save" id="btn-new-task-submit">
			             </div>
			            </div>
		            </div>
		      </div>
		      <!-- /.box -->
				</div><!-- end col md 6 -->
			
				<div class="col-md-3">      
				</div><!-- end col md 3 -->
		</form>
	<!-- end row --></div>
 					
    </section>
    <!-- /.content -->
  </div>

<script src="js/task/main.js"></script>