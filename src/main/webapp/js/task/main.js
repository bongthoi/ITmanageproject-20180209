 $(function () {
	 
	 $("#frm-task input[name='progress']").ionRangeSlider({
			 min:0,
			 max: 100,
			 postfix: " %"});
	 
	    
	    
	 var objrules = {
				invalidHandler : function(form, validator) {
					var errors = validator.numberOfInvalids();
					if (errors) {
						validator.errorList[0].element.focus();
					}
				},
				rules : {
					project_id : {
						required : true
					},
					title : {
						required : true
					},employee_id : {
						required : true
					},
					Estimated_h : {
						required : true,
						digits: true
					},
					Estimated_m : {
						required : true,
						digits: true,
						max:59
					},
					Spent_h : {
						digits: true,
					},
					Spent_m : {
						digits: true,
						max:59
					}
				}/*,//end rules
				messages : {
					product_type_name : {
						required : "This field is required!"
					},
					name_vi : {
						required : "This field is required!"
					}
				}*/
			};//end obj rules 
	 
		var frm_add =   $('#frm-task');
		frm_add.validate(objrules);		   
	 
	 $("#btn-new-task-submit").click(function(){
		 var frm_valib=frm_add.valid();
		 //alert(frm_valib);
			if(frm_valib){
				var pdata=  frm_add.serialize();
				console.log(pdata);
				$.post("management/ajax/Task/insert_or_update",pdata,function(data){
					//console.log(data);
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
 });