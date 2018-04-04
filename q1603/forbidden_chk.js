window.$ = window.$ ? window.$ : window.jQuery;
$(document).ready(function(){
	var answerarea=document.getElementById('edit-answer');
	$("#edit-submit").on('click', function(ev){
		var forbidden=['0','1','2','3','4','5','6','7','8','9','*','/','%','"',"'"];
		for(var i=0;i<forbidden.length;i++){
			if(answerarea.value.indexOf(forbidden[i]) >= 0){
				alert('禁止文字「'+forbidden[i]+'」が含まれています。');
				return false;
			}
		}
	});
});
