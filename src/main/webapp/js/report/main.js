 $(function () {
	 
	  $("#frm-report input[name='f_date']").datepicker({
	      autoclose: true,
	      format: 'yyyy-mm-dd'
	    });
    $("#frm-report input[name='t_date']").datepicker({
	      autoclose: true,
	      format: 'yyyy-mm-dd'
	    });
    $("#frm-report select[name='type']").change(function(){
    	var valu=$(this).val();
    	if(valu==2){
    		  $("#group_project1").show();
    	}else{
    		  $("#group_project1").hide();
    	}
    	if(valu==1){
  		    $("#group_people1").show();
	  	}else{
	  		$("#group_people1").hide();
	  	}
    	
    });
    
    $("#frm-report select[name='department']").change(function(){
    	var valu=$(this).val();
    	if(valu==0){
    		  $("#group_project1").hide();
    		  $("#group_people1").hide();
    		return ;
    	}
    	var pdata={"department":valu};
    	$.get("publicinfo/project/get_select_project",pdata,function(data){
    		if(data!=null){
    			$("#group_project1").html(data);
    		}
    	},'text');
    	
    	$.get("publicinfo/project/get_select_people",pdata,function(data){
    		if(data!=null){
    			$("#group_people1").html(data);
    		}
    	},'text');
    });
    $("#frm-report select[name='department']").change();
    
    
	 var objrules = {
				invalidHandler : function(form, validator) {
					var errors = validator.numberOfInvalids();
					if (errors) {
						validator.errorList[0].element.focus();
					}
				},
				rules : {
					type : {
						required : true
					},
					f_date : {
						required : true
					},t_date : {
						required : true
					},
					department : {
						required : true
					},
					project : {
						required : true
					},
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
	 
		var frm_add =   $('#frm-report');
		frm_add.validate(objrules);		   
		$("#btn-submit-report").click(function(){
			if($("#frm-report select[name='type']").val()==0){
				alert("Please select type!");
				return;
				}
			if(  $("#frm-report select[name='department']").val()==0){
				alert("Please select department!");
				return;
			}
			 var frm_valib=frm_add.valid();
				if(frm_valib){
					var pdata=  frm_add.serialize();
					var type=$("#frm-report select[name='type']").val();
					$.get("review/report/jsp/do_report"+type,pdata,function(data){
						//console.log(data);
					 		if(data!=null){
					 			$("#col-result-report").html(data);
					 		}else{
					 			alert("error!");
					 		}
					 	 },"text");
				}	
		});
		
 });
 