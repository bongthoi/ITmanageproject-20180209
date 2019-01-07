 $(function () {
	
	   //iCheck for checkbox and radio inputs
	    $('.tb-employee input[type="checkbox"]').iCheck({
	      checkboxClass: 'icheckbox_flat-blue',
	      radioClass: 'iradio_flat-blue'
	    });

	    //Enable check and uncheck all functionality
	   $(".checkbox-toggle8").click(function () {
	      var clicks = $(this).data('clicks');
	      if (clicks) {
	        //Uncheck all checkboxes
	        $(".tb-employee input[type='checkbox']").iCheck("uncheck");
	        $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
	      } else {
	        //Check all checkboxes
	        $(".tb-employee input[type='checkbox']").iCheck("check");
	        $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
	      }
	      $(this).data("clicks", !clicks);
	    });
	 
	  //$("#modal-employee-insert form input[name='empl_birthday']").inputmask("dd/mm/yyy", {"placeholder": "dd/mm/yyy"});
	
		 var objrules = {
		invalidHandler : function(form, validator) {
			var errors = validator.numberOfInvalids();
			if (errors) {
				validator.errorList[0].element.focus();
			}
		},
		rules : {
			empl_firstname : {
				required : true
			},
			empl_lastname : {
				required : true
			},empl_position : {
				required : true
			},empl_birthday : {
				required : true
			},dept_id : {
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
	var frm_add =   $('#modal-employee-insert form');
	frm_add.validate(objrules);		   
	
	 $("#btn-open-modal-employee-add").click(function(){
		 $('#modal-employee-insert form')[0].reset();
		 $(frm_add).find("input[name='sqltype']").val("A");
		 
		 $("#modal-employee-insert .modal-title").html('<i class="fa fa-plus"></i> Add new Employee');
		 $("#modal-employee-insert").modal("show");
	 });
	 
	 $(".btn-open-modal-employee-edit").click(function(){
		 var employee=$(this).data('employee');
		 $('#modal-employee-insert form')[0].reset();
		// alert(JSON.stringify(employee));
		 frm_add.fromOBJECT(employee);
		 $(frm_add).find("input[name='sqltype']").val("E");
		 $("#modal-employee-insert .modal-title").html('<i class="fa fa-edit"></i> Edit Employee');
		 $("#modal-employee-insert").modal("show");
	 });
	
	   
	   $("#do_disabled_empl").click(function(){
			 var ids = [];
		     $.each($(".tb-employee input[type='checkbox']:checked"), function(){            
		    	 ids.push("'"+$(this).val()+"'");
		     });
		     if(ids.length>0){
		    	 var pdata={"ids":ids.join(","),"status":0};
		    	 var _length=ids.length
		    	 $.post("manage/ajax/employee/active",pdata,function(data){
		    		// alert(data);
		    		 if(parseInt(data) ==_length){
		    			 location.reload();
		    		 }else{
		    			 alert("Server error! Please try again!");
		    		 }
		    	 },"text");
		     }else{
		    	 return;
		     }
			
		}) ;  
	   
	   $("#do_active_empl").click(function(){
			 var ids = [];
		     $.each($(".tb-employee input[type='checkbox']:checked"), function(){            
		    	 ids.push("'"+$(this).val()+"'");
		     });
		     if(ids.length>0){
		    	 var pdata={"ids":ids.join(","),"status":1};
		    	 var _length=ids.length
		    	 $.post("manage/ajax/employee/active",pdata,function(data){
		    		// alert(data);
		    		 if(parseInt(data) ==_length){
		    			 location.reload();
		    		 }else{
		    			 alert("Server error! Please try again!");
		    		 }
		    	 },"text");
		     }else{
		    	 return;
		     }
			
		}) ;  
	$("#btn-submit-emplyee-insert").click(function(){
		 var frm_valib=frm_add.valid();
			if(frm_valib){
				var pdata=  frm_add.serialize();
				//console.log(pdata);
				$.post("manage/ajax/employee/insert_or_update",pdata,function(data){
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