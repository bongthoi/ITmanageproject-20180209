<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Report 
      </h1>
      <ol class="breadcrumb">
      <li><a href=""><i class="fa fa-dashboard"></i> Home</a></li>
       <li><a href="review/report">Report</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
      	 <div class="col-md-2">
      	  <!-- Default box -->
			      <div class="box box-primary">
			        <div class="box-header with-border">
					    <h3 class="box-title"><i class="fa fa-tag"></i>Tool</h3>
					    <div class="box-tools pull-right">
				            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
				         
          				</div>
			        </div> 
			        <div class="box-body">
				        <form id="frm-report">
			       		   <div class="form-group">
						    				<label class="">From Date</label>
						    				<div class="input-group date">
							                  <div class="input-group-addon">
							                    <i class="fa fa-calendar"></i>
							                  </div>
							                  	<input type="text" class="form-control" name="f_date">
							                </div>
							                <label id="f_date-error" class="error" for="f_date"></label>
						    			</div>
						    <div class="form-group">
						    				<label class="">To Date</label>
						    				<div class="input-group date">
							                  <div class="input-group-addon">
							                    <i class="fa fa-calendar"></i>
							                  </div>
							                  	<input type="text" class="form-control" name="t_date">
							                </div>
							                <label id="t_date-error" class="error" for="t_date"></label>
						    			</div> 	
									<div class="form-group">
						    				<label class="">Type</label>
							               <select class="form-control" name="type" >
							                   <option value="0">--Select type--</option>
							               		<option value="1"> By Employee</option>
							               		<option value="2"> By Project</option>
							               		<option value="3"> By Employee and Project</option>
							               </select>
						    			</div> 	
						    		<div class="form-group"  >
						    				<label class="">Select Department:</label>
							               <select class="form-control" name="department">
							                  <option value="0">--Select Department--</option>
							               	  <c:forEach var="Select11" items="${SelectDepartmemt}" varStatus="loopCounter">
							               		<option value="${Select11.dept_id }"> ${Select11.dept_name }</option>
							               		</c:forEach>
							               </select>
						    			</div> 			
						    				
						    			<div class="form-group"  style="display:none" id="group_project1">
						    				
						    			</div> 	
						    			<div class="form-group"  style="display:none" id="group_people1">
						    				
						    			</div> 		
						    			    					
				        </form>
			        
			        </div>
			        <!-- /.box-body -->
			        <div class="box-footer">
			        	<input class="btn btn-success" value="Report" type="button" id="btn-submit-report">
			        </div>
			      </div>
			      <!-- /.box -->
      	 
      	 </div>
      	 
      	 <div class="col-md-10" id="col-result-report">
      	       
			   
      	 </div>
      </div><!-- end row -->
    </section>
    <!-- /.content -->
  </div>
  <script src="js/report/main.js"></script>