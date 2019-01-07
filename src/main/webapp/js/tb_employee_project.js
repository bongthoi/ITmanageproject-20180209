function remove_tr(e){
	var username=$("#tb-employee-project").data('employee');
	var project=$(e).data("option");
	var pdata={"username":username,"project":project};
	$.post("management/ajax/Project/delete/em",pdata,function(data){
				if(data!=null){
					if((data)==1){
						$(e).closest( "tr" ).remove();
		 			}
		 			else{
		 				alert("delete fail!");
		 			}
				}
	},"json");
}
function remove_tr2(e){
	$(e).closest( "tr" ).remove();
	$("#btn-add-role").show();
}

function save_not_in_employee(e){
	var p=$("#project-not-in-employee").val();

	if(p==""){
		return;
	}
	var username=$("#tb-employee-project").data('employee');
	var description=$("#description-not-in-employee").val();
	var pdata={"username":username,"project":p,"description":description};
	$.post("management/ajax/Project/ins/em",pdata,function(data){
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
$(function () {
	
$("#btn-add-role").click(function(){
	var username=$("#tb-employee-project").data('employee');
	$.get("management/employee/get/tr",{"username":username},function(data){
		if(data!=null){
			$("#tb-employee-project").append(data);
			$("#btn-add-role").hide();
		}
	},'text');
});

});