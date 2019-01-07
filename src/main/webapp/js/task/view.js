 $(function () {
	 
	 var obtask=$("#id-hidden-json-task").data('option');
	 $("#selecttask_status").val(obtask.task_status);
	 $("#selectAssigned").val(obtask.employee_id);
	 
	 var slider= $("#taskview-progress").ionRangeSlider({
		 min:0,
		 max: 100,
		 postfix: " %",
		 onChange: function (data) {
		       if(data.from==100){
		    		 $("#selecttask_status").val(2);
		       }else{
		    	   $("#selecttask_status").val(1);
		       }
		    }});
	 var slider= $("#taskview-progress").data("ionRangeSlider");
	
	 $("#selecttask_status").change(function(){
		 var status=$(this).val();
		 if(status==2){
			 slider.update({
			         from: 100
			    });
		
		 }
		 if(status==1){

			  if($("#taskview-progress").val()==100){
				  slider.update({
					  from: 100-10
				    });
			  }
		 }
	 });
	$("#private-task-save-manager").click(function(){
		 if(check_Estimated()){
				var h=$("#Estimated_h").val();
				var m=$("#Estimated_m").val();
				
			 var task=$("#id-hidden-json-task").data('option');
			 var task_id=task.id;
			 var task_progress=$("#taskview-progress").val();
			 var task_status=$("#selecttask_status").val();
			 var task_title=$("#private-task-title").val();
			 var task_description=$("#private-task-description").val();
			 var task_employee=$("#selectAssigned").val();
			 var task_expect_time=(parseInt(h)*60)+ parseInt(m);
			 var log=get_log_private_manager(task,task_progress,task_expect_time);
			 var pdata={'task_id':task_id,'task_progress':task_progress,'task_expect_time':task_expect_time,'task_employee':task_employee,
					 'task_title':task_title,'task_description':task_description,'project_id':task.project_id,'log':JSON.stringify(log)};
			 $.post("management/ajax/Task/update2",pdata,function(data){
				 if(data!=null){
			 			if((data.p_return_code)==0){
			 				alert(data.p_return_message);
			 				location.reload();
			 			}
			 			else{
			 				alert("Code:"+ data.p_return_code + "| Message:"+ data.p_return_message);
			 			}
			 		}
			 },"json");
		 }
	});
	
	 $("#public-task-save-manager").click(function(){
		 if(check_Estimated()){
				var h=$("#Estimated_h").val();
				var m=$("#Estimated_m").val();
				
			 var task=$("#id-hidden-json-task").data('option');
			 var task_id=task.id;
			 var task_progress=$("#taskview-progress").val();
			 var task_expect_time=(parseInt(h)*60)+ parseInt(m);
			 var log=get_log_public_manager(task,task_progress,task_expect_time);
			 var pdata={'task_id':task_id,'task_progress':task_progress,'task_expect_time':task_expect_time,
					 'task_title':task.title,'project_id':task.project_id,'log':JSON.stringify(log)};
			 //console.log(pdata);
			 $.post("publicinfo/ajax/Task/update1",pdata,function(data){
				 if(data!=null){
			 			if((data.p_return_code)==0){
			 				alert(data.p_return_message);
			 				location.reload();
			 			}
			 			else{
			 				alert("Code:"+ data.p_return_code + "| Message:"+ data.p_return_message);
			 			}
			 		}
			 },"json");
		 }
	 });
	 $("#public-task-save-employer").click(function(){
		 if(check_Spent()){
				var h=$("#Spent_h").val();
				var m=$("#Spent_m").val();
				
			 var task=$("#id-hidden-json-task").data('option');
			 var task_id=task.id;
			 var task_progress=$("#taskview-progress").val();
			 var task_spent_time=(parseInt(h)*60)+ parseInt(m);
			 var log=get_log_public_employee(task,task_progress,task_spent_time);
			 var pdata={'task_id':task_id,'task_progress':task_progress,'task_spent_time':task_spent_time,
					 'task_title':task.title,'project_id':task.project_id,'log':JSON.stringify(log)};
			 //console.log(pdata);
			 $.post("publicinfo/ajax/Task/update3",pdata,function(data){
				 if(data!=null){
			 			if((data.p_return_code)==0){
			 				alert(data.p_return_message);
			 				location.reload();
			 			}
			 			else{
			 				alert("Code:"+ data.p_return_code + "| Message:"+ data.p_return_message);
			 			}
			 		}
			 },"json");
		 }
	 });
	 function get_log_public_employee(task,task_progress,task_spent_time){
		  var h=$("#Spent_h").val();
			var m=$("#Spent_m").val();
	 	 var array1=[];
		 if(task.progress!=task_progress){
			 array1.push({"key":"Progress","value":task_progress});
		 }
		 if(task.spent_time!=task_spent_time){
			 array1.push({"key":"Time spent","value":h+"h"+m});
		 }
		 if(task_progress==100){
			 array1.push({"key":"Status","value":"Close"});
		 }
		 if(task_progress!=100){
			 array1.push({"key":"Status","value":"Open"});
		 }
		 return array1;
	 }
	 function get_log_private_manager(task,task_progress,task_expect_time){
			var h=$("#Estimated_h").val();
			var m=$("#Estimated_m").val();
		 var array1=[];
		 var task_status=$("#selecttask_status").val();
		 var task_title=$("#private-task-title").val();
		 var task_description=$("#private-task-description").val();
		 var task_employee=$("#selectAssigned").val();
		 
		 
		 if(task_employee!=task.employee_id){
			 array1.push({"key":"Assigned","value":task_employee});
		 }
		 if(task_description!=task.description){
			 array1.push({"key":"Description","value":task_description});
		 }
		 if(task_title!=task.title){
			 array1.push({"key":"Title","value":task_title});
		 }
		 if(task.progress!=task_progress){
			 array1.push({"key":"Progress","value":task_progress});
		 }
		 if(task.expect_time!=task_expect_time){
			 array1.push({"key":"Estimated effort","value":h+"h"+m});
		 }
		 if(task_progress==100){
			 array1.push({"key":"Status","value":"Close"});
		 }
		 if(task_progress!=100){
			 array1.push({"key":"Status","value":"Open"});
		 }
		 return array1;
	 }
	 function get_log_public_manager(task,task_progress,task_expect_time){
		   var h=$("#Estimated_h").val();
			var m=$("#Estimated_m").val();
	 	 var array1=[];
		 if(task.progress!=task_progress){
			 array1.push({"key":"Progress","value":task_progress});
		 }
		 if(task.expect_time!=task_expect_time){
			 array1.push({"key":"Estimated effort","value":h+"h"+m});
		 }
		 if(task_progress==100){
			 array1.push({"key":"Status","value":"Close"});
		 }
		 if(task_progress!=100){
			 array1.push({"key":"Status","value":"Open"});
		 }
		 return array1;
	 }
	 function check_Estimated(){
		var h=$("#Estimated_h").val();
		if(!/^[0-9.]+$/.test(h)){
			alert("input number please");
			$("#Estimated_h").focus();
			return false;
		}
			
		var m=$("#Estimated_m").val();
		if(!/^[0-9.]+$/.test(m)){
			alert("input number please");
			$("#Estimated_m").focus();
			return false;
		}
		if(parseInt(m)>59){
			alert("input number rage [0-59] please");
			$("#Estimated_m").focus();
			return false;
		}
		return true;
	 }
	 function check_Spent(){
			var h=$("#Spent_h").val();
			if(!/^[0-9.]+$/.test(h)){
				alert("input number please");
				$("#Spent_h").focus();
				return false;
			}
				
			var m=$("#Spent_m").val();
			if(!/^[0-9.]+$/.test(m)){
				alert("input number please");
				$("#Spent_m").focus();
				return false;
			}
			if(parseInt(m)>59){
				alert("input number rage [0-59] please");
				$("#Spent_m").focus();
				return false;
			}
			return true;
		 }
 });