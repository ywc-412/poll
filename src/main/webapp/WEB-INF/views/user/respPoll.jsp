<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-block d-lg-none">Clarence Taylor</span>
        <span class="nav-item">설문지</span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#ques1">1번 문항</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#ques2">2번 문항</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#ques3">3번 문항</a></li>
        </ul>
    </div>
</nav>
<div style="position : fixed; bottom: 5%; right: 3%;" data-toggle="tooltip" data-placement="top" title="설문지 등록">
	<i class="fas fa-pen-square" style="width: 50px; height: 50px; cursor: pointer;"></i>
</div>
<!-- Page Content-->
<div class="container-fluid p-0">
    <!-- About-->
    <section class="resume-section" id="about">
        <div class="resume-section-content">
            <h1 class="mb-0">
                COVID-19 설문지 조사입니다.
            </h1>
            <div class="subheading mb-5">
            	<span class="text-primary">2020.08.09 </span>
            	<span class="text-primary">~ 2020.09.20</span>
            </div>
            <button class="lead mb-5"><a class="nav-link js-scroll-trigger" href="#ques1">설문 조사 시작</a></button>
        </div>
    </section>
    <hr class="m-0" />
    <!-- Experience-->
    <section class="resume-section" id="ques1" >
        <div class="resume-section-content">
            <h2 class="mb-3">최근 2주간 해외에 방문한 적이 있습니까?</h2>
            <div class="flex-shrink-0"><span class="text-danger">다중 선택 불가</span></div><br>
            <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                <div class="flex-grow-1">
                	<div class="custom-control custom-radio">
						<input type="radio" class="custom-control-input" id="check1-1" name="check1-1"/>
						<label class="custom-control-label" for="check1-1">네. 방문한 적 이 있습니다.</label>
					</div><br>
                	<div class="custom-control custom-radio">
						<input type="radio" class="custom-control-input" id="check1-2" name="check1-2"/>
						<label class="custom-control-label" for="check1-2">아니오. 방문한 적 이 없습니다.</label>
                	</div><br>
                	
	                <button class="btn btn-primary">
	                	<a class="nav-link js-scroll-trigger" href="#ques2" style="color : white;">다음</a>
	                </button>
                </div>
            </div>
        </div>
    </section>
    <hr class="m-0" />
    <!-- Education-->
    <section class="resume-section" id="ques2">
        <div class="resume-section-content">
            <h2 class="mb-3">최근 2주간 해외에 방문한 적이 있습니까?</h2>
            <div class="flex-shrink-0"><span class="text-primary">다중 선택 가능</span></div><br>
            <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                <div class="flex-grow-1">
                	<div class="custom-control custom-radio">
						<input type="radio" class="custom-control-input" id="check2-1" name="check2-1"/>
						<label class="custom-control-label" for="check2-1">네. 방문한 적 이 있습니다.</label>
					</div><br>
                	<div class="custom-control custom-radio">
						<input type="radio" class="custom-control-input" id="check2-2" name="check2-2"/>
						<label class="custom-control-label" for="check2-2">아니오. 방문한 적 이 없습니다.</label>
                	</div><br>
                	<div class="custom-control custom-radio">
						<input type="radio" class="custom-control-input" id="check2-3" name="check2-3"/>
						<label class="custom-control-label" for="check2-3">아니오. 방문한 적 이 없습니다.</label>
                	</div><br>
                	<div class="custom-control custom-radio">
						<input type="radio" class="custom-control-input" id="check2-4" name="check2-4"/>
						<label class="custom-control-label" for="check2-4">아니오. 방문한 적 이 없습니다.</label>
                	</div><br>
	                <button class="btn btn-primary">
	                	<a class="nav-link js-scroll-trigger" href="#ques3" style="color : white;">다음</a>
	                </button>
                </div>
            </div>
        </div>
    </section>
    <hr class="m-0" />
    <!-- Skills-->
    <section class="resume-section" id="ques3">
        <div class="resume-section-content">
            <h2 class="mb-3">TEST 서술형 문항</h2>
            <div class="flex-shrink-0"><span class="text-primary">필수 입력</span></div><br>
            <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                <div class="flex-grow-1">
    				<div id="editor">
    					
    				</div>            	
                </div>
            </div><br>
            <button class="btn btn-primary">
            	<a class="nav-link js-scroll-trigger" href="#ques3" style="color : white;">제출</a>
            </button>
        </div>
    </section>
</div>
<script src="/resources/toast/js/toastui-editor.js"></script>
<script>
	const Editor = toastui.Editor;
	const editor = new Editor({
	  el: document.querySelector('#editor'),
	  height: '300px',
	  initialEditType: 'wysiwyg'
	});
	
	editor.getHtml();

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