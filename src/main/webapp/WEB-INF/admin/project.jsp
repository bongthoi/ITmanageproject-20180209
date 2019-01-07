<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Project <small>List Items</small>
      </h1>
      <ol class="breadcrumb">
      <li><a href="dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
       <li><a href="management/project">Project items</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
			<div class="row">
				<div class="col-md-8">
	<div class="box box-primary">
        <div class="box-header with-border">
		         <a href="javascript:void(0)" class="btn btn-success" id="btn-open-modal-project-add"><i class="fa fa-plus" aria-hidden="true"></i> Add </a>
		   <div class="box-tools pull-right">
                
              </div>
        </div> 
        
        <div class="box-body table-responsive no-padding tb-Project" style="   overflow-x: visible !important;overflow-y: visible !important;">
		      <div class="mailbox-controls">
		        <!-- Check all button -->
		        &nbsp;
                <div class="pull-right">
                ${pag.s_recore}-${pag.t_recore}/${pag.total_record}
                  <div class="btn-group">
                 	 <a href="management/project?${findparam1}p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                    <a href="management/project?${findparam1}p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
           	<table class="table table-hover" >
                <tbody><tr>
                <th>  </th>
                  <th>ID#</th>
                  <th>Name</th>
                  <th>Description</th>
                  <th>Start Date</th>
                   <th>End Date</th> 
                </tr>
              <c:forEach var="Project" items="${Projects}" varStatus="loopCounter">
                   <tr>
                    <td ><div class="btn-group">
								    <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								        Action
								        <span class="caret"></span>
								    </a>
								    <ul class="dropdown-menu">
								       <c:set var="json_project" value="${jspHelper.toJson(Project)}"/>
								            <li><a href="publicinfo/project/detail/${Project.id }">View Detail</a></li>
										      <li><a href="javascript:void(0)" data-project='${json_project }' class="btn-open-modal-project-edit">Edit</a></li>
									
								    </ul>
								</div>
                    </td>
		                   <td>${Project.id }</td>
		                   <td>${Project.name }</td>
		                   <td>${Project.description }</td>
		                   <td>${Project.start_date }</td>
		                    <td>${Project.end_date }</td>
		                </tr>
               </c:forEach>
               
              </tbody></table>
            
        </div>
        <!-- /.box-body -->
        <div class="box-footer no-padding">
              <div class="mailbox-controls">
              &nbsp;
                <div class="pull-right">
               ${pag.s_recore}-${pag.t_recore}/${pag.total_record}
                  <div class="btn-group">
                 	 	 <a href="management/project?${findparam1}p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                    <a href="management/project?${findparam1}p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
            </div>
      </div>
      <!-- /.box -->
    
				
				</div>
				<div class="col-md-4">
					<div class="box box-solid">
						<div class="box-body">
							<c:set var="list_status" value="${HelperServiceImpl.get_status_from_table('tb_project_status')}"/>
						 <ul class="nav nav-pills nav-stacked" id="ulprojectstatus" data-active1="${status }">
						 	  <c:forEach var="astatus" items="${list_status}" varStatus="loopCounter">
						 	  		 <li data-active="${astatus.id}"><a href="management/project?status=${astatus.id} "> ${astatus.html_display}</a></li>
						 	  </c:forEach>
                           </ul>
						</div>
					</div>
				</div>
			</div>
		      <!-- Default box -->
      
    </section>
    <!-- /.content -->
     <div class="modal" class="modal fade" role="dialog" id="modal-project-insert">
          <div class="modal-dialog">
            <div class="modal-content">
                  <form role="form" id="frm-project-insert-update">
		              <div class="modal-header bg-green color-palette">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                  <span aria-hidden="true">×</span></button>
		                <h4 class="modal-title"><i class="fa fa-plus"></i> Add new project</h4>
		              </div>
		              <div class="modal-body">
					              <div class="box-body">
					               <input type="hidden" name="sqltype" value="A">
					              <input type="hidden" name="id">
					        
					                <div class="form-group">
					                  <label for="">Name</label>
					                  <input type="text" class="form-control"  placeholder="Enter  Name" name="name">
					                </div>
					                <div class="form-group">
					                  <label for="">Description</label>
					                  <textarea class="form-control" name="description" cols="10" rows="5"></textarea> 
					                </div>
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
						    			
						    			<div class="form-group">
							    				<label class="">End Date</label>
							    				<div class="input-group date">
								                  <div class="input-group-addon">
								                    <i class="fa fa-calendar"></i>
								                  </div>
								                  	<input type="text" class="form-control" name="end_date">
								                </div>
								                <label id="end_date-error" class="error" for="end_date"></label>
							    			</div>	
					               
					              </div>
			              </div>
			              <div class="modal-footer">
			                <button type="button" class="btn btn-default pull-left" data-dismiss="modal"> <i class="fa fa-close"></i> Close</button>
			                <button type="button" class="btn btn-success" id="btn-submit-project-insert"><i class="fa fa-save"></i> Save changes</button>
			              </div>
	                </form>
	            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
  </div>
  <script src="js/project/main.js"></script>