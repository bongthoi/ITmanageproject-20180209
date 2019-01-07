<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

 <tr>
                                            <td><select id="project-not-in-employee" style="height: 34px;margin-left: 10px;">
							    					 <c:forEach var="Project" items="${Projects}" varStatus="loopCounter">
							    					    		<option value="${Project.id }">${Project.name }</option>
							    					    </c:forEach>
							    				</select></td>
                                            <td><input type="text" id="description-not-in-employee" style="height: 34px;margin-left: 10px;width:70%"></td>
                                            <td >
                                                <button type="button" class="btn btn-default btn-sm checkbox-toggle" onclick="save_not_in_employee(this)">
                                                    <i class="fa fa-save " > </i>
                                                </button>
                                                <button type="button" class="btn btn-default btn-sm checkbox-toggle" onclick="remove_tr2(this);">
                                                    <i class="fa fa-remove text-red"></i>
                                                </button>
                                            </td>
                                        </tr>