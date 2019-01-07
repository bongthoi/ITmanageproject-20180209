 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 <div class="box box-primary">
			        <div class="box-header with-border">
					    <h3 class="box-title">Result</h3>
					    <div class="box-tools pull-right">
				            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
				         
          				</div>
			        </div> 
			        <div class="box-body ">
			         <h3 class="text-primary">${employee }</h3>
			       		<table class="table table-bordered">
			       			<tr>
			       				<th>Order </th>
			       				<th>Project Name </th>
			       				<th>Task Name</th>
			       				<th>Number of hours</th>
			       			</tr>
			       			    <c:set var ="totalamount" value="0"/>
			       			  <c:forEach items="${map_reports}" var="entry" varStatus="entryCounter">
									    <c:set var="elem_project" value="${entry.value}" />
									
									 <tr>
					       				<td>${entryCounter.index +1}</td>
					       				<td colspan="3"><b class="text-green">${elem_project[0].project_name }</b></td>
					       			</tr>
					       			 <c:forEach items="${elem_project}" var="task" varStatus="taskCounter">
					       			 			<tr>
								       				<td></td>
								       				<td></td>
								       				<td>${task.task_title }</td>
								       				<td>${ExtraHelpper.convert_timetoH(task.spent_time) }</td>
								       			</tr>
								       			<c:set var="totalamount" value="${totalamount+ task.spent_time}" />		
					       			 </c:forEach>
						      </c:forEach>
			       			<tr>
			       				<td  colspan="3"><b class="pull-right text-danger">Total</b></td>
			       			   <td><b class="text-danger">${ExtraHelpper.convert_timetoH(totalamount) }</b></td>
			       			</tr>
			       		</table>
			        
			        </div>
			   </div>