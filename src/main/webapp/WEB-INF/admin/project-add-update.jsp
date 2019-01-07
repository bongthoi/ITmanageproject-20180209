<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Project <small> ${title_tag}</small>
      </h1>
      <ol class="breadcrumb">
         <li><a href="management/"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="management/project">Project</a></li>
        <li class="active"><a href="javascript:void(0)"> ${title_tag}</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
	<div class="row">
	
		<div class="col-md-12" >
			 <!-- Default box -->
      <div class="box box-primary">
        <div class="box-header with-border">
		    <h3 class="box-title"><i class="fa fa-tag"></i>Project infomation</h3>
		   
        </div> 
            <form method="post" id="frm-project-insert-update" data-type="${type}" data-jjson='${project}' data-mem='${mem}'>
            <input type="hidden" name="sqltype" value="A">
             <input type="hidden" name="id" >
        <div class="box-body">
   
       		 <div class="row">
       		 	<div class="col-md-12">
       		 	 		<div class="form-group">
		    				<label class="">Name</label>
		    				<input type="text" class="form-control" name="name">
		    			</div>
       		 	</div>
       			 <div class="col-md-3">
		    			<div class="form-group">
		    				<label class="">Start Date</label>
		    				<div class="input-group date">
			                  <div class="input-group-addon">
			                    <i class="fa fa-calendar"></i>
			                  </div>
			                  	<input type="text" class="form-control" name="start_date">
			                </div>
			                <label id="start_date-error" class="error" for="start_date"></label>
		    			</div>
		    			
		    	</div>
        		<div class="col-md-3">
        				<div class="form-group">
		    				<label class="">Expect Date</label>
		    				<div class="input-group date">
			                  <div class="input-group-addon">
			                    <i class="fa fa-calendar"></i>
			                  </div>
			                  	<input type="text" class="form-control" name="expect_date">
			                </div>
			                <label id="expect_date-error" class="error" for="expect_date"></label>
		    			</div>
        				
        		</div>
       		 </div>
       				 <div class="form-group">
		    				<label class="">Employer Member</label>
		    				<select class="form-control select2" id="select2-member" multiple="multiple" name="members">
		    					    <c:forEach var="User" items="${Users}" varStatus="loopCounter">
		    					    		<option value="${User.username }">${User.name }</option>
		    					    </c:forEach>
		    				</select>
		    				<label id="select2-member-error" class="error" for="select2-member"></label>
		    			</div>
		    			<div class="form-group">
		    				<label class="">Description</label>
		    			<textarea class="form-control" rows="10" id="" name="description"></textarea>
		    			</div>
		    		
        </div>
        </form>	
        <!-- /.box-body -->
        <div class="box-footer ">
      	  <div class="mailbox-controls">
	             <div class="pull-right">
	             	<input type="button" class="btn btn-primary" value="Save" id="btn-project-submit">
	             </div>
	            </div>
            </div>
      </div>
      <!-- /.box -->
		</div><!-- end col md 6 -->
	
		
		
	<!-- end row --></div>
 						
    </section>
    <!-- /.content -->
  </div>
<script src="js/project/main.js"></script>
