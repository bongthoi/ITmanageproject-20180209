 $(function () {
	
	   $(function () {
	    	var sstatus=$("#ulprojectstatus").data('active1');
	    	$("#ulprojectstatus li").each(function(){
	    			var active= $( this ).data( "active" );
	    			if(sstatus==active){
	    				$( this ).addClass( "active" );
	    			}
	    	});
	    	
	    });
	    $("#frm-project-insert-update input[name='start_date']").datepicker({
		      autoclose: true,
		      format: 'yyyy-mm-dd'
		    });
	    $("#frm-project-insert-update input[name='end_date']").datepicker({
		      autoclose: true,
		      format: 'yyyy-mm-dd'
		    });
	    
		 var objrules = {
					invalidHandler : function(form, validator) {
						var errors = validator.numberOfInvalids();
						if (errors) {
							validator.errorList[0].element.focus();
						}
					},
					rules : {
						name : {
							required : true
						},
						start_date : {
							required : true
						},end_date : {
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
		 
			var frm_add =   $('#frm-project-insert-update');
			frm_add.validate(objrules);		   
	    
	    $("#btn-open-modal-project-add").click(function(){
			 $('#modal-project-insert form')[0].reset();
			 $(frm_add).find("input[name='sqltype']").val("A");
			 
			 $("#modal-project-insert .modal-title").html('<i class="fa fa-plus"></i> Add new Project');
			 $("#modal-project-insert").modal("show");
		 });
		 
		 $(".btn-open-modal-project-edit").click(function(){
			 var project=$(this).data('project');
			 $('#modal-project-insert form')[0].reset();
			// alert(JSON.stringify(project));
			 frm_add.fromOBJECT(project);
			 $(frm_add).find("input[name='sqltype']").val("E");
			 $("#modal-project-insert .modal-title").html('<i class="fa fa-edit"></i> Edit Project');
			 $("#modal-project-insert").modal("show");
		 });
	    
			$("#btn-submit-project-insert").click(function(){
				 var frm_valib=frm_add.valid();
				 //alert(frm_valib);
					if(frm_valib){
						var pdata=  frm_add.serialize();
						$.post("management/ajax/Project/insert_or_update",pdata,function(data){
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