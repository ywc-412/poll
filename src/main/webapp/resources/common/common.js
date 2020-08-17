function gfn_AppendAfterClear(data){
	$('#mustAppend').html('');
	$('#mustAppend').append(data);
}


function gfn_MovePage(pageUrl){
	$.ajax({
	    url: pageUrl, // 클라이언트가 요청을 보낼 서버의 URL 주소
	    data: {},                // HTTP 요청과 함께 서버로 보낼 데이터
	    type: "GET",                             // HTTP 요청 방식(GET, POST)
	    dataType: "html",                         // 서버에서 보내줄 데이터의 타입
		success : function(data){
			// SUCCESS CALLBACK FUNCTION
			gfn_AppendAfterClear(data);
		},
		error : function(){
			alert('error');
			// ERROR CALLBACK FUNCTION
		},
		complete : function(){
			// COMPLETE CALLBACK FUNCTION
		}
	});
}



