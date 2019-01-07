<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="content-wrapper" style="min-height: 1126px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Project <small>Detail</small>
      </h1>
      <ol class="breadcrumb">
      <li><a href="dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
       <li><a href="management/project">Project items</a></li>
        <li class="active">Detail</li>
      </ol>
    </section>
    
    
    
    <!-- Main content -->
    <section class="content">
    <div class="row">
				<div class="col-md-8">
				<div class="box box-widget box_project">
                            <div class="box-header with-border no-padding" style="    line-height: 44px;">
                                <div class="col-md-7 title">
                                    <span class="main_title user-block">${project.name }</span>
                                   
                                </div>
                                <div class="col-md-5 time">
                                    <div class=" pull-left" style="margin-bottom: 10px;">
                                        <strong>Start date:</strong>
                                        <span class="label bg-green">${project.start_date }</span>
                                    </div>
                                    <div class=" pull-right">
                                        <strong>End date:</strong>
                                        <span class="label bg-green">${project.end_date }</span>
                                    </div>
                                </div>


                            </div>
                            <!-- /.box-header -->
                            <div class="box-footer pad overflow_auto" style="">
                                <div class="pad no-pad-top"><span class="name text-bold">Description</span></div>

                                <div class="des pad">
                                    <p class="">${project.description }</p>
                                </div>
                            </div>
                           <!--  <div class="box-footer pad overflow_auto" style="">
                                <div class="pad no-pad-top"><span class="name text-bold">Participation</span></div>
                                <table class="table table-striped table-hover">
                                    <tbody>

                                        <tr>
                                            <td><b>1.0.1.0</b> Update 1</td>
                                            <td style="">
                                                <div class="progress progress-xs margin-r-5" style="background: rgba(243, 156, 18, 0.26);display:inline-block;width:70px;">
                                                    <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                    </div>
                                                </div>
                                                <div class="text-centert" style="display: inline-block;line-height: 7px;vertical-align: initial;"> 60%</div>
                                            </td>
                                            <td>
                                                <div>
                                                    Open: 5
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    Close: 0
                                                </div>
                                            </td>
                                            <td>
                                                <span class="date_label pull-right">22 Oct 2016</span>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td><b>1.0.1.0</b> Update 1</td>
                                            <td style="">
                                                <div class="progress progress-xs margin-r-5" style="background: rgba(243, 156, 18, 0.26);display:inline-block;width:70px;">
                                                    <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                    </div>
                                                </div>
                                                <div class="text-centert" style="display: inline-block;line-height: 7px;vertical-align: initial;"> 60%</div>
                                            </td>
                                            <td>
                                                <div>
                                                    Open: 5
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    Close: 0
                                                </div>
                                            </td>
                                            <td>
                                                <span class="date_label pull-right">22 Oct 2016</span>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td><b>1.0.1.0</b> Update 1</td>
                                            <td style="">
                                                <div class="progress progress-xs margin-r-5" style="background: rgba(243, 156, 18, 0.26);display:inline-block;width:70px;">
                                                    <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                    </div>
                                                </div>
                                                <div class="text-centert" style="display: inline-block;line-height: 7px;vertical-align: initial;"> 60%</div>
                                            </td>
                                            <td>
                                                <div>
                                                    Open: 5
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    Close: 0
                                                </div>
                                            </td>
                                            <td>
                                                <span class="date_label pull-right">22 Oct 2016</span>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td><b>1.0.1.0</b> Update 1</td>
                                            <td style="">
                                                <div class="progress progress-xs margin-r-5" style="background: rgba(243, 156, 18, 0.26);display:inline-block;width:70px;">
                                                    <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                    </div>
                                                </div>
                                                <div class="text-centert" style="display: inline-block;line-height: 7px;vertical-align: initial;"> 60%</div>
                                            </td>
                                            <td>
                                                <div>
                                                    Open: 5
                                                </div>
                                            </td>
                                            <td>
                                                <div>
                                                    Close: 0
                                                </div>
                                            </td>
                                            <td>
                                                <span class="date_label pull-right">22 Oct 2016</span>
                                            </td>

                                        </tr>

                                    </tbody>
                                </table>

                            </div>-->
                            <div class="box-footer pad overflow_auto" style="">
                                <div class="pad no-pad-top"><span class="name text-bold">Project statistics</span></div>
                                <table class="table table-striped table-hover ">
                                    <tbody>
                                        <tr class="">
                                            <th style="">Item completion</th>
                                            <th>Contributors</th>
                                            <th>Total time spent</th>

                                        </tr>
                                        <tr style="font-size: 24px;">
                                            <td><strong>${project.itemcompletion }%</strong></td>
                                            <td>
                                                <strong class="margin-r-5">${project.contributors }</strong>

                                            </td>
                                            <td>
                                                <strong class="margin-r-5">${jspHelper.convert_timetoH(project.total_spent) }</strong>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>

                            </div>
                        </div>
				
				</div>
	</div>
    </section>
 </div>