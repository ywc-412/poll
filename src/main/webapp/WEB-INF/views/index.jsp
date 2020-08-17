<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    	<%@ include file="/resources/jsFileInclude/bootstrap/jsForBootstrap.jsp" %>
    	<link rel="stylesheet" href="/resources/toast/css/codemirror.min.css" />
  		<link rel="stylesheet" href="/resources/toast/css/toastui-editor.css" />
    	<script src="/resources/common/common.js"></script>
    </head>
    <body id="page-top">
    	<div  id="writePoll"  style="position : fixed; bottom: 90%; right: 3%;">
    		<i class="fas fa-home" onclick="gfn_MovePage('/main');" style="width: 40px; height: 40px; cursor:pointer;" title="메인페이지"></i>
    		<i class="fas fa-clipboard-list" onclick="gfn_MovePage('/user/pollList');" style="width: 40px; height: 40px; cursor:pointer;" title="설문지 목록"></i>
    		<i class="fas fa-pen-square" onclick="gfn_MovePage('/user/writePoll');"  style="width: 40px; height: 40px; cursor: pointer;" title="설문지등록"></i>
    	</div>
    	
    	<!-- ajax 통신으로 html append 시키기 -->
		<div id="mustAppend">
    		<%@ include file="/WEB-INF/views/main.jsp" %>
    		<%-- <%@ include file="/WEB-INF/views/user/pollList.jsp" %> --%>
    		<%-- <%@ include file="/WEB-INF/views/user/writePoll.jsp" %> --%>
		</div>
		
		
		<!-- 공통 js 로드 -->
        <%@ include file="/resources/jsFileInclude/essential.jsp" %>
    </body>
</html>
