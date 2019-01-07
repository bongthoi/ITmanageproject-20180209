<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       User <small>List Items</small>
      </h1>
      <ol class="breadcrumb">
      <li><a href="manage"><i class="fa fa-dashboard"></i> Home</a></li>
       <li><a href="manage/User">User items</a></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box box-primary">
        <div class="box-header with-border">
		         <a href="javascript:void(0)" class="btn btn-success" id="btn-open-modal-User-add"><i class="fa fa-plus" aria-hidden="true"></i> Add</a>
		   <div class="box-tools pull-right">
                
              </div>
        </div> 
        
        <div class="box-body table-responsive no-padding tb-User">
		      <div class="mailbox-controls">
		        <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle-user"><i class="fa fa-square-o"></i>
                </button>
                 <div class="btn-group">
                  <button type="button" id="do_active_User" class="btn btn-success btn-sm"><i class="fa  fa-check"></i></button>
                </div>      
            	 <div class="btn-group">
                  <button type="button" id="do_disabled_User" class="btn btn-danger btn-sm"><i class="fa  fa-ban"></i></button>
                </div>   
                <div class="pull-right">
                ${pag.s_recore}-${pag.t_recore}/${pag.total_record}
                  <div class="btn-group">
                 	 <a href="manage/User?${findparam1}p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                    <a href="manage/User?${findparam1}p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
           	<table class="table table-hover">
                <tbody><tr>
                <th>  </th>
                <th>  </th>
                  <th>UserName</th>
                  <th>Name</th>
                  <th>Phone</th>
                  <th>Department</th>
                   <th>Position</th> 
                   <th>Role</th> 
                   <th>Create Date</th>
                   <th>Status</th>
                </tr>
              <c:forEach var="User" items="${Users}" varStatus="loopCounter">
                   <tr>
                    <td><input type="checkbox"  value="${User.username }"></td>
                       <c:set var="json_User" value="${jspHelper.toJson(User)}"/>
		                <td><a  href="javascript:void(0);" class="btn-open-modal-User-edit" data-User='${json_User }'><i class="fa fa-pencil"></i></a></td>
		                   <td>${User.username }</td>
		                   <td>${User.name }</td>
		                   <td>${User.phone }</td>
		                   <td>${User.dept_name }</td>
		                    <td>${User.positon }</td>
		                     <td>${User.user_role }</td>
		                      <td>${jspHelper.vietnamdate(User.create_date) }</td>
		                   <th>${jspHelper.slide_status( User.enabled)}</th> 
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
                 	 	 <a href="manage/User?${findparam1}p=${pag.previousp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></a>
                    <a href="manage/User?${findparam1}p=${pag.nextp}" class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></a>
                  </div>
                  <!-- /.btn-group -->
                </div>
                <!-- /.pull-right -->
              </div>
            </div>
      </div>
      <!-- /.box -->
      
	<div class="modal" class="modal fade" role="dialog" id="modal-User-insert">
          <div class="modal-dialog">
            <div class="modal-content">
                  <form role="form">
		              <div class="modal-header bg-green color-palette">
		                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                  <span aria-hidden="true">×</span></button>
		                <h4 class="modal-title"><i class="fa fa-plus"></i> Add new User</h4>
		              </div>
		              <div class="modal-body">
					              <div class="box-body">
					               <input type="hidden" name="sqltype" value="A">
					                <div class="form-group">
					                  <label for="">User Name</label>
					                  <input type="email" class="form-control"  placeholder="Enter User Name type Email" name="username">
					                </div>
					                <div class="form-group">
					                  <label for="">Password</label>
					                  <input type="password" class="form-control"  placeholder="Enter Password" name="password" id="id-user-password">
					                </div>
					                 <div class="form-group">
					                  <label for="">Re Password</label>
					                  <input type="password" class="form-control"  placeholder="Enter Password" name="password2">
					                </div>
					                <div class="form-group">
					                  <label for="">Name</label>
					                  <input type="text" class="form-control"  placeholder="Enter Name" name="name">
					                </div>
					                   <div class="form-group">
					                  <label for="">Phone</label>
					                  <input type="text" class="form-control"  placeholder="Enter Phone" name="phone">
					                </div>
					                
					                <div class="form-group">
					                  <label for="">Position</label>
					                  <input type="text" class="form-control"  placeholder="Enter Position" name="positon">
					                   
					                </div>
					                <div class="form-group">
					                  <label for="">Department</label>
					                  <select name="department" class="form-control"  >
					                  		 <c:forEach var="department" items="${departments}" varStatus="loopCounter">
					                  		 			<option value="${department.dept_id }">${department.dept_name } </option>
					                  		 </c:forEach>
					                  </select>
					                </div>
					                
					                
					                <div class="form-group">
					                  <label for="">Role</label>
					                  <select name="user_role" class="form-control"  >
					                  		 <c:forEach var="UserRole" items="${UserRoles}" varStatus="loopCounter">
					                  		 			<option value="${UserRole.id }">${UserRole.name } </option>
					                  		 </c:forEach>
					                  </select>
					                </div>
					                
					                <div class="form-group">
					                  <label for="">Status:</label>
					                 	<input type="radio" name="enabled"  value="0" aria-label="..." checked><span class='label label-danger'>Disabled</span> &nbsp;
					                 	<input type="radio" name="enabled"  value="1" aria-label="..."><span class='label label-success'>Active</span>
					                </div>
					               
					              </div>
			              </div>
			              <div class="modal-footer">
			                <button type="button" class="btn btn-default pull-left" data-dismiss="modal"> <i class="fa fa-close"></i> Close</button>
			                <button type="button" class="btn btn-success" id="btn-submit-User-insert"><i class="fa fa-save"></i> Save changes</button>
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