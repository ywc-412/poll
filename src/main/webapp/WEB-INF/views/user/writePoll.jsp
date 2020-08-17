<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#title">설문지 제목</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#ques1">질문1</a></li>
            <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#ques2">질문2</a></li>
        </ul>
    </div>
</nav>
<div class="container-fluid p-0">
    <!-- About-->
    <section class="resume-section" id="title">
        <div class="resume-section-content">
        	<form class="form-inline">
        		<div class="container">
        			<h3 class="mb-4">설문지 제목을 입력해주세요</h3>
        			<input type="text" class="form-control" placeholder="설문지 제목을 입력해주세요" style="width: 100%; height: 60px;" />
        			<br><br>
        			<button class="btn btn-primary">
        				<a class="nav-link js-scroll-trigger" href="#ques1" style="color : white;">질문 작성하기</a>
        			</button>
        		</div>
        	</form>
        </div>
    </section>
    <hr class="m-0" />
    <section class="resume-section" id="ques1" >
        <div class="resume-section-content">
           	<input type="text" class="form-control" placeholder="질문을 작성해주세요" style="width: 100%; hight: 60px;"/>
            <div class="mt-3 mb-3">
	            <label>
	            	<input type="checkbox" value="checked"/ checked="true">&nbsp;서술형
	            </label>
	            <label>
	            	<input type="checkbox" />&nbsp;객관식
	            </label>
            </div>
            <div id="editor1" class="mt-3 mb-3">
            	
            </div>
   			<button class="btn btn-primary">
   				<a class="nav-link js-scroll-trigger" href="#ques1" style="color : white;">다음 질문 작성하기</a>
   			</button>
        </div>
    </section>
    <hr class="m-0" />
    <section class="resume-section" id="ques2" >
        <div class="resume-section-content">
           	<input type="text" class="form-control" placeholder="질문을 작성해주세요" style="width: 100%; hight: 60px;"/>
            <div class="mt-3 mb-3">
	            <label>
	            	<input type="checkbox" value="checked">&nbsp;서술형
	            </label>
	            <label>
	            	<input type="checkbox" value="checked" checked="true"/>&nbsp;객관식
	            </label>
            </div>
            <div id="editor2" class="mt-3 mb-3">
            	<div class="d-flex mt-3 mb-3">
           			1. &nbsp;&nbsp;<input type="text" class="form-control" placeholder="보기를 입력해주세요" style="width: 100%;"/>
            	</div>
            	<div class="d-flex mt-3 mb-3">
           			2. &nbsp;&nbsp;<input type="text" class="form-control" placeholder="보기를 입력해주세요" style="width: 100%;"/>
            	</div>
            </div>
            <div class="d-flex justify-content-center">
            	<i class="fas fa-plus-square" style="width: 30px; height: 30px;"></i>
            </div>
            <br>
   			<button class="btn btn-primary">
   				<a class="nav-link js-scroll-trigger" href="#ques3" style="color : white;">다음 질문 작성하기</a>
   			</button>
        </div>
    </section>
</div>

<script src="/resources/toast/js/toastui-editor.js"></script>
<script>
	const Editor = toastui.Editor;
	const editor = new Editor({
	  el: document.querySelector('#editor1'),
	  height: '300px',
	  initialEditType: 'wysiwyg'
	});
	
	editor.getHtml();

</script>