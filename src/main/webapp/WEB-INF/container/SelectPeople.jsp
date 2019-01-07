 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<label class="">Select Employee:</label>
	 <select class="form-control" name="people">
			 <c:forEach var="Select1" items="${SelectPeople}" varStatus="loopCounter">
					<option value="${Select1.username }"> ${Select1.name }</option>
				</c:forEach>
</select>