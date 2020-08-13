<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    	<%@ include file="/resources/jsFileInclude/bootstrap/jsForBootstrap.jsp" %>
    	<link rel="stylesheet" href="/resources/toast/css/codemirror.min.css" />
  		<link rel="stylesheet" href="/resources/toast/css/toastui-editor.css" />
    </head>
    <body id="page-top">	
		<div id="writePoll" onclick="fn_WritePoll()" style="position : fixed; bottom: 5%; right: 3%;" data-toggle="tooltip" data-placement="top" title="설문지 등록">
			<i class="fas fa-pen-square" style="width: 50px; height: 50px; cursor: pointer;"></i>
		</div>
		<div id="mustAppend">
    		<%@ include file="/WEB-INF/views/main.jsp" %>
		</div>
    	<%-- <%@ include file="/WEB-INF/views/user/quesResp.jsp" %> --%>
        <%@ include file="/resources/jsFileInclude/essential.jsp" %>
    	<script src="/resources/common/common.js"></script>
    	<script>
    		function fn_WritePoll(){
    			$.ajax({
    			    url: "/user/respPoll", // 클라이언트가 요청을 보낼 서버의 URL 주소
    			    data: { name: "홍길동" },                // HTTP 요청과 함께 서버로 보낼 데이터
    			    type: "GET",                             // HTTP 요청 방식(GET, POST)
    			    dataType: "html",                         // 서버에서 보내줄 데이터의 타입
					success : function(data){
						// SUCCESS CALLBACK FUNCTION
						fn_AppendAfterClear(data);
					},
					error : function(){
						alert('error');
						// ERROR CALLBACK FUNCTION
					},
					complete : function(){
						alert('complete');
						// COMPLETE CALLBACK FUNCTION
					}
    			});
    		}
    	</script>
    </body>
</html>
