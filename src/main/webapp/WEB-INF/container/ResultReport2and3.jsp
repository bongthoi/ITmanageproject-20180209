 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

 <!-- Default box -->
			      <div class="box box-primary">
			        <div class="box-header with-border">
					    <h3 class="box-title">Result</h3>
					    <div class="box-tools pull-right">
				            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
				         
          				</div>
			        </div> 
			        <div class="box-body ">
				        <c:forEach items="${map_reports}" var="entry">
						    <c:set var="elem_project" value="${entry.value}" />
						    <c:set var="elems_pepole" value="${ExtraHelpper.group_pepole(entry.value)}" />
						    <c:set var ="totalamount" value="0"/>
						      <h3 class="text-primary">${elem_project[0].project_name }</h3>
						         <table class="table table-bordered">
						        			 <tr>
								       				<th width="25%">Order / employee</th>
								       				<th width="50%">Task Name</th>
								       				<th width="25%">Number of hours</th>
								       			</tr>
						       		  <c:forEach items="${elems_pepole}" var="entrypeople">
						         		  <c:set var="elem_pepole" value="${entrypeople.value}" />	
								       	   <c:set var="amount_people" value="0" />		
								       			<tr>
								       				<td colspan="3"><h5 class="text-green"> <b>${elem_pepole[0].employee_id }</b></h5></td>
								       			</tr>
								       			  <c:forEach var="task" items="${elem_pepole}" varStatus="loopCounter">
									       			<tr>
									       				<td>${loopCounter.index +1 }</td>
									       				<td>${task.task_title }</td>
									       				<td>${ExtraHelpper.convert_timetoH(task.spent_time) }</td>
									       			</tr>
									       			<c:set var="amount_people" value="${amount_people+ task.spent_time}" />		
									       		</c:forEach>
								      				<tr>
									       				<td></td>
									       				<td><b class="pull-right">Amount</b></td>
									       				<td><b>${ExtraHelpper.convert_timetoH(amount_people) }</b></td>
									       			</tr>
									       			 <c:set var ="totalamount" value="${totalamount + amount_people}"/>
						         		</c:forEach>
						         					<tr>
									       				<td></td>
									       				<td><b class="pull-right text-danger">Total</b></td>
									       				<td><b class="text-danger">${ExtraHelpper.convert_timetoH(totalamount) }</b></td>
									       			</tr>
						          	</table>
						</c:forEach>
			        </div>
			        <!-- /.box-body -->
			      </div>
			      <!-- /.box -->