 $(function () {
	
	   //iCheck for checkbox and radio inputs
	    $('.tb-User input[type="checkbox"]').iCheck({
	      checkboxClass: 'icheckbox_flat-blue',
	      radioClass: 'iradio_flat-blue'
	    });

	    //Enable check and uncheck all functionality
	   $(".checkbox-toggle-user").click(function () {
	      var clicks = $(this).data('clicks');
	      if (clicks) {
	        //Uncheck all checkboxes
	        $(".tb-User input[type='checkbox']").iCheck("uncheck");
	        $(".fa", this).removeClass("fa-check-square-o").addClass('fa-square-o');
	      } else {
	        //Check all checkboxes
	        $(".tb-User input[type='checkbox']").iCheck("check");
	        $(".fa", this).removeClass("fa-square-o").addClass('fa-check-square-o');
	      }
	      $(this).data("clicks", !clicks);
	    });
	 
	  //$("#modal-User-insert form input[name='empl_birthday']").inputmask("dd/mm/yyy", {"placeholder": "dd/mm/yyy"});
	
		 var objrules = {
		invalidHandler : function(form, validator) {
			var errors = validator.numberOfInvalids();
			if (errors) {
				validator.errorList[0].element.focus();
			}
		},
		rules : {
			username : {
				required : true,
				email :true
			},
			password : {
				required : true,
				minlength: 6
			},password2 : {
				required : true,
				minlength: 6,
				 equalTo: "#id-user-password"
			},name : {
				required : true
			},phone : {
				required : true
			},department : {
				required : true
			},Position : {
				required : true
			},Role : {
				required : true
			},enabled : {
				required : true
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
	var frm_add =   $('#modal-User-insert form');
	frm_add.validate(objrules);		   
	
	 $("#btn-open-modal-User-add").click(function(){
		 $('#modal-User-insert form')[0].reset();
		 $(frm_add).find("input[name='sqltype']").val("A");
		 $(frm_add).find("input[name='password']").closest(".form-group").show();
		 $(frm_add).find("input[name='password2']").closest(".form-group").show();
		 
		 $(frm_add).find("input[name='username']").prop("readonly",false);
		 $("#modal-User-insert .modal-title").html('<i class="fa fa-plus"></i> Add new User');
		 $("#modal-User-insert").modal("show");
	 });
	 
	 $(".btn-open-modal-User-edit").click(function(){
		 var User=$(this).data('user');
		// console.log(User);
		 $('#modal-User-insert form')[0].reset();
		// alert(JSON.stringify(User));
		 frm_add.fromOBJECT(User);
		 $(frm_add).find("input[name='sqltype']").val("E");
		 $(frm_add).find("input[name='password']").closest(".form-group").hide();
		 $(frm_add).find("input[name='password2']").closest(".form-group").hide();
		 
		 $(frm_add).find("input[name='username']").prop("readonly",true);
		 $("#modal-User-insert .modal-title").html('<i class="fa fa-edit"></i> Edit User');
		 $("#modal-User-insert").modal("show");
	 });
	
	   
	   $("#do_disabled_User").click(function(){
			 var ids = [];
		     $.each($(".tb-User input[type='checkbox']:checked"), function(){            
		    	 ids.push("'"+$(this).val()+"'");
		     });
		     if(ids.length>0){
		    	 var pdata={"ids":ids.join(","),"status":0};
		    	 var _length=ids.length
		    	 $.post("manage/ajax/User/active",pdata,function(data){
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
	   
	   $("#do_active_User").click(function(){
			 var ids = [];
		     $.each($(".tb-User input[type='checkbox']:checked"), function(){            
		    	 ids.push("'"+$(this).val()+"'");
		     });
		     if(ids.length>0){
		    	 var pdata={"ids":ids.join(","),"status":1};
		    	 var _length=ids.length
		    	 $.post("manage/ajax/User/active",pdata,function(data){
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
	$("#btn-submit-User-insert").click(function(){
		 var frm_valib=frm_add.valid();
		 //alert(frm_valib);
			if(frm_valib){
				var pdata=  frm_add.serialize();
				//console.log(pdata);
				$.post("manage/ajax/User/insert_or_update",pdata,function(data){
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