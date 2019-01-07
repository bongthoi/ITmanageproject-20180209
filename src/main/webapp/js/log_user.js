

function jsgetlog(e){
	var url= $(e).data("option");
	$.get(baseurl+url,function(data){
		if(data!=null){
			$("#log-by-user").html(data);
		}
	},'text');
}

function get_logbyuser(pdata){
	$.get("publicinfo/log/getbyuser",pdata,function(data){
		if(data!=null){
			$("#log-by-user").html(data);
		}
	},'text');
}


function get_logbytask(pdata){
	$.get("publicinfo/log/getbytask",pdata,function(data){
		if(data!=null){
			$("#log-by-user").html(data);
		}
	},'text');
}
