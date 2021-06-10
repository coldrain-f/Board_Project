<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/css/bootstrap.css" />

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/resources/css/custom.css" />
    
    <!-- JQuery 2.2.1 -->
    <script src="https://code.jquery.com/jquery-2.2.1.js"></script>
    
    <!-- Summernote -->
    <script src="/resources/summernote/summernote-lite.js"></script>
    <script src="/resources/summernote/lang/summernote-ko-KR.js"></script>
    <link rel="stylesheet" href="/resources/summernote/summernote-lite.css" />

    <title>게시판 프로젝트</title>
  </head>
  <body>
  
    <!-- start navbar -->
    <div class="container">
        <!-- 상단 메뉴 -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <a href="/board/list" class="navbar-brand">
                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cloud-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383z"/>
                </svg>
                coldRain
            </a>
            <ul class="navbar-nav ml-auto" style="font-size: 12px">
                <li class="nav-item">
                    <a href="#" class="nav-link text-white">로그인</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white">회원가입</a>
                </li>
            </ul>
        </nav>
        <!-- //상단 메뉴 -->

        <!-- 하단 메뉴 -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <!-- brand -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            알고리즘
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <div class="dropdown-header">Source Code</div>
                            <a class="dropdown-item" href="#">정올</a>
                            <a class="dropdown-item" href="#">코드업</a>
                            <a class="dropdown-item" href="#">프로그래머스</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            프로그래밍
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <div class="dropdown-header">Language</div>
                            <a class="dropdown-item" href="#">Java</a>
                            <a class="dropdown-item" href="#">Vue.js</a>
                            <a class="dropdown-item" href="#">Node.js</a>
                            
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            프로젝트
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <div class="dropdown-header">JSP & Servlet</div>
                            <a class="dropdown-item" href="#">게시판 프로젝트</a>
                            <a class="dropdown-item" href="#">차량관리 프로젝트</a>
                            <div class="dropdown-divider"></div>
                            <div class="dropdown-header">Spring Framework</div>
                            <a class="dropdown-item" href="#">쇼핑물 프로젝트</a>
                        </div>
                    </li>
                    
                </ul>
    
                <form action="" method="GET" class="form-inline my-2">
                    <div class="input-group">
                        <select name="" id="" class="custom-select w-25">
                            <option value="1">제목</option>
                            <option value="2">작성자</option>
                            <option value="3">내용</option>
                        </select>
                        
                        <input class="form-control w-50" type="search" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-danger" type="submit" onclick="alert('준비중입니다.')">검색</button>
                        </div>
                    </div>
                </form>
            </div>
        </nav>  
        <!-- //하단 메뉴 -->
    </div>
    <!-- //end navbar -->