 $(function () {
	 
	 var activeproject=$("#task-search_project").data("activeproject");
	 var activetaskstatus=$("#task-search_project").data("activetaskstatus");
	 var activetasktitle=$("#task-search_project").data("activetasktitle");
	 
	 if(activeproject!=null){
		 $('#task-search_project option[value='+activeproject+']').attr('selected','selected');
		// alert(1);
	 }
	 if(activetaskstatus!=null){
		 $("#frm-search-task input[name='taskstatus'][value='" + activetaskstatus + "']").prop('checked', true);
		// alert(2);
	 }
	 if(activetasktitle!=null){
		 $("#frm-search-task input[name='tasktitle']").val(activetasktitle);
		// alert(3);
	 }
	 
	 $("#btn-search-task").click(function(){
		 var project= $('#task-search_project').val();
		var tasktitle= $("#frm-search-task input[name='tasktitle']").val();
		var taskstatus= $("#frm-search-task input[name='taskstatus']:checked").val();
		
		location.href="management/task?project="+project+"&taskstatus="+taskstatus+"&tasktitle="+tasktitle;
	 });
 });