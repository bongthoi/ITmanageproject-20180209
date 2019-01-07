<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Department <small>List Items</small>
      </h1>
      <ol class="breadcrumb">
      <li><a href="manage"><i class="fa fa-dashboard"></i> Home</a></li>
       <li><a href="manage/department">Department items</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box box-primary">
        <div class="box-header with-border">
		         <a href="javascript:void(0)" class="btn btn-success" id="btn-open-modal-department-add"><i class="fa fa-plus" aria-hidden="true"></i> Add</a>
		   <div class="box-tools pull-right">
                
              </div>
        </div> 
        
        <div class="box-body table-responsive no-padding tb-department">
		      <div class="mailbox-controls">
		        <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle7"><i class="fa fa-square-o"></i>
                </button>
                 <div class="btn-group">
                  <button type="button" id="do_active_department" class="btn btn-success btn-sm"><i class="fa  fa-check"></i></button>
                </div>      
            	 <div class="btn-group">
                  <button type="button" id="do_disabled_department" class="btn btn-danger btn-sm"><i class="fa  fa-ban"></i></button>
                </div>   
                <div class="pull-right">
                ${pag.s_recore}-${pag.t_recore}/${pag.total_record}
                  <div class="btn-group">
                 	 <a href="manage/department?${findparam1}p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                    <a href="manage/department?${findparam1}p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
           	<table class="table table-hover">
                <tbody><tr>
                <th>  </th>
                <th>  </th>
                  <th>ID#</th>
                  <th>Name</th>
                  <th>Description</th>
                  <th>Manager</th>
                   <th>Status</th> 
                </tr>
              <c:forEach var="department" items="${departments}" varStatus="loopCounter">
                   <tr>
                    <td><input type="checkbox"  value="${department.dept_id }"></td>
                       <c:set var="json_department" value="${jspHelper.toJson(department)}"/>
		                <td><a  href="javascript:void(0);" class="btn-open-modal-department-edit" data-department='${json_department }'><i class="fa fa-pencil"></i></a></td>
		                   <td>${department.dept_id }</td>
		                   <td>${department.dept_name }</td>
		                   <td>${department.dept_des }</td>
		                   <td>${department.dept_manager_user }</td>
		                   <spring:eval expression="T(vn.itwork.helper.jspHelper).slide_status(department.dept_visible)" var="status" />		
		                   <th>${status}</th> 
		                </tr>
               </c:forEach>
               
              </tbody></table>
            
        </div>
        <!-- /.box-body -->
        <div class="box-footer no-padding">
              <div class="mailbox-controls">
                <div class="pull-right">
               ${pag.s_recore}-${pag.t_recore}/${pag.total_record}
                  <div class="btn-group">
                 	 	 <a href="manage/department?${findparam1}p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                    <a href="manage/department?${findparam1}p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
            </div>
      </div>
      <!-- /.box -->
      
	<div class="modal" class="modal fade" role="dialog" id="modal-department-insert">
          <div class="modal-dialog">
            <div class="modal-content">
                  <form role="form">
		              <div class="modal-header bg-green color-palette">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                  <span aria-hidden="true">×</span></button>
		                <h4 class="modal-title"><i class="fa fa-plus"></i> Add new department</h4>
		              </div>
		              <div class="modal-body">
					              <div class="box-body">
					               <input type="hidden" name="sqltype" value="A">
					              <input type="hidden" name="dept_id">
					        
					                <div class="form-group">
					                  <label for="">Department Name</label>
					                  <input type="text" class="form-control"  placeholder="Enter Department Name" name="dept_name">
					                </div>
					                <div class="form-group">
					                  <label for="">Description</label>
					                  <input type="text" class="form-control"  placeholder="Enter Description" name="dept_des">
					                </div>
					                <div class="form-group">
					                  <label for="">Manager</label>
					                  <input type="text" class="form-control"  placeholder="Enter Manager" name="dept_manager_user">
					                </div>
					               
					              </div>
			              </div>
			              <div class="modal-footer">
			                <button type="button" class="btn btn-default pull-left" data-dismiss="modal"> <i class="fa fa-close"></i> Close</button>
			                <button type="button" class="btn btn-success" id="btn-submit-department-insert"><i class="fa fa-save"></i> Save changes</button>
			              </div>
	                </form>
	            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
    </section>
    <!-- /.content -->
  </div>