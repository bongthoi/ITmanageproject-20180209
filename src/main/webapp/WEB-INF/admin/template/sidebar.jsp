<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/Avatar-blank.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>	<c:if test="${pageContext.request.userPrincipal.name != null}">
              			${pageContext.request.userPrincipal.name}
              	</c:if>
              </p>
          <!-- Status -->
       <i class="fa fa-circle text-success"></i> Online
        </div>
      </div>

    

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <li class="header"></li>
        <!-- Optionally, you can add icons to the links -->
        <li class="" id="activeDashboard"><a href="manage">
        <i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
        
        		   <c:choose>
	             	 <c:when test="${pageContext.request.userPrincipal.name != null}">
	             	  	 <sec:authorize access="hasRole('ROLE_ADMIN') and isAuthenticated()">
			              		 <li class=""  id="activeUser">
							          <a href="manage/User">
							            <i class="fa fa-users" aria-hidden="true"></i> <span>User</span>
							          </a>
							  		 </li>
							  		 
							         <li class=""  id="activeDepartment">
							          <a href="manage/department">
							            <i class="fa fa-building-o" aria-hidden="true"></i> <span>Department</span>
							          </a>
							        </li>
		        
			              </sec:authorize>
			              
			                <sec:authorize access="hasAnyRole('ROLE_MANAGER','ROLE_LEAD') and isAuthenticated()">
								         <li class=""  id="activeEmployee">
								          <a href="management/employee">
								            <i class="fa fa-users"></i> <span>Employee</span>
								          </a>
								        </li>
								        
								        <li class=""  id="activeProject">
								          <a href="management/project">
								            <i class="fa fa-book"></i> <span>Project</span>
								          </a>
								        </li>
								          <li class=""  id="activeTask">
								          <a href="management/task">
								            <i class="fa fa-book"></i> <span>Task</span>
								          </a>
								        </li>
								           <li class="">
								          <a href="publicinfo/task">
								            <i class="fa fa-book"></i> <span>My Task</span>
								          </a>
								        </li>
								         <li class=""  id="activeReport">
								          <a href="review/report">
								            <i class="fa fa-book"></i> <span>Report</span>
								          </a>
								        </li>
			              </sec:authorize>
			                   <sec:authorize access="hasRole('ROLE_REVIEW') and isAuthenticated()">
								          <li class=""  id="activeReport">
								          <a href="review/report">
								            <i class="fa fa-book"></i> <span>Report</span>
								          </a>
								        </li>
			              </sec:authorize>
			              
			                 <sec:authorize access="hasRole('ROLE_EMPLOYEE') and isAuthenticated()">
								          <li class=""  id="activeTask">
								          <a href="publicinfo/task">
								            <i class="fa fa-book"></i> <span>Task</span>
								          </a>
								        </li>
			              </sec:authorize>
	             	 </c:when>
	             	 </c:choose>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>