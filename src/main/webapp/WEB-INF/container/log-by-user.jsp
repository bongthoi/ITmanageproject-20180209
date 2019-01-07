 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
                       <div class="wrap_left" style="">
                            <div class="wrap_left_content">
                                <!-- /.box -->
                                <div class="box box-solid" style="background: white;">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Recent activity</h3>
                                    </div>

                                    <div class="box-body" style=" padding: 10px 0 10px 0;">
                                        <ul class="timeline">
	                                        <c:forEach var="activity" items="${activitys}" varStatus="loopCounter">
			    					    		   <li>
	                                                <img class="direct-chat-img" src="dist/img/user1-128x128.jpg" alt="message user image">
	                                                <div class="timeline-item">
	                                                    <span class="time">${jspHelper.time_ago(activity.create_date) }</span>
	                                                    <h3 class="timeline-header"><a href="#">${activity.ower }</a> ${activity.action_name }</h3>
	
	                                                    <div class="timeline-body">
			                                                   <c:choose>
																  <c:when test="${activity.action==2}">
																       <a href="#" ><b># ${activity.task_id  }</b>  </a>
																     <p>${activity.task_title  }</p>
																	 <ul class="" style="">
																	 <c:set var="logs" value="${jspHelper.fromJsonlog(activity.activity_detail)}"/>
																	    <c:forEach var="log" items="${logs}" varStatus="loopCounter">
																	     <li><span class="text-bold">${log.key }</span>➜ ${ log.value}</li>
																	    </c:forEach>
			                                                        </ul>
																  </c:when>
																  <c:otherwise>
																     <a href="#" ><b># ${activity.task_id  }</b>  </a>
																     <p>${activity.task_title  }</p>
																  </c:otherwise>
																</c:choose>
	                                                     
	                                                    </div>
	
	                                                </div>
	                                            </li>
			    					    	</c:forEach>   
                                            <li>
                                                <i class="fa fa-clock-o bg-gray"></i>
                                            </li>
                                        </ul>
                                    </div>

                                    <!-- /.box-body -->
                                    <div class="box-footer clearfix">
                                        <div class="box-tools pull-right">
                                           ${pag_html }
                                        </div>
                                    </div>
                                </div>

                                <!-- /.box -->
                            </div>
                        </div>