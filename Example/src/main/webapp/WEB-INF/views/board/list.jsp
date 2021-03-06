<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/css/bootstrap.css" />

    <!-- Custom CSS -->
    <link rel="stylesheet" href="/css/custom.css" />

    <title>게시판 프로젝트</title>
  </head>
  <body>
  
    <!-- start navbar -->
    <div class="container">
        <!-- 상단 메뉴 -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <a href="list.html" class="navbar-brand">
                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cloud-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383z"/>
                </svg>
                coldRain
            </a>
            <ul class="navbar-nav ml-auto" style="font-size: 12px">
                <li class="nav-item">
                    <a href="signin.html" class="nav-link text-white">로그인</a>
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
                            <a class="dropdown-item" href="list.html">게시판 프로젝트</a>
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

    <!-- 게시글 테이블  -->
    <div class="container mt-5">
        <!-- 게시글 폼  -->
        <form action="#" method="get">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>날짜</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>10</td>
                        <td>
                            <a href="detail.html" class="text-reset">샘플 게시글입니다.</a>
                            <span class="badge badge-info ml-3">New</span>
                        </td>
                        <td class="text-muted font-weight-bold">Mellow</td>
                        <td>2020-12-09</td>
                        <td>0</td>
                    </tr>

                    <tr>
                        <td>9</td>
                        <td>
                            <a href="detail.html" class="text-reset">샘플 게시글입니다.</a>
                            <span class="badge badge-info ml-3">New</span>
                        </td>
                        <td class="text-muted font-weight-bold">Mellow</td>
                        <td>2020-12-09</td>
                        <td>0</td>
                    </tr>

                    <tr>
                        <td>8</td>
                        <td>
                            <a href="detail.html" class="text-reset">샘플 게시글입니다.</a>
                            <span class="badge badge-info ml-3">New</span>
                        </td>
                        <td class="text-muted font-weight-bold">Mellow</td>
                        <td>2020-12-09</td>
                        <td>0</td>
                    </tr>

                    <tr>
                        <td>7</td>
                        <td><a href="detail.html" class="text-reset">샘플 게시글입니다.</a></td>
                        <td class="text-muted font-weight-bold">Mellow</td>
                        <td>2020-12-09</td>
                        <td>0</td>
                    </tr>

                    <tr>
                        <td>6</td>
                        <td><a href="detail.html" class="text-reset">샘플 게시글입니다.</a></td>
                        <td class="text-muted font-weight-bold">Mellow</td>
                        <td>2020-12-09</td>
                        <td>0</td>
                    </tr>
                    
                    <tr>
                        <td>5</td>
                        <td><a href="detail.html" class="text-reset">샘플 게시글입니다.</a></td>
                        <td class="text-muted font-weight-bold">Mellow</td>
                        <td>2020-12-09</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><a href="detail.html" class="text-reset">샘플 게시글입니다.</a></td>
                        <td class="text-muted font-weight-bold">Mellow</td>
                        <td>2020-12-09</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><a href="detail.html" class="text-reset">샘플 게시글입니다.</a></td>
                        <td class="text-muted font-weight-bold">Mellow</td>
                        <td>2020-12-09</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><a href="detail.html" class="text-reset">샘플 게시글입니다.</a></td>
                        <td class="text-muted font-weight-bold">Mellow</td>
                        <td>2020-12-09</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><a href="detail.html" class="text-reset">샘플 게시글입니다.</a></td>
                        <td class="text-muted font-weight-bold">Mellow</td>
                        <td>2020-12-09</td>
                        <td>0</td>
                    </tr>
                </tbody>
            </table>

            <button type="button" class="btn btn-primary float-right" onclick="location.href='write.html'">글작성</button>

            <!-- pagination -->
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center mt-5">
                    <li class="page-item">
                        <a href="#" class="page-link" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">이전</a>
                    </li>
                    <li class="page-item"><a href="list.html?p=1" class="page-link">1</a></li>
                    <li class="page-item"><a href="list.html?p=2" class="page-link">2</a></li>
                    <li class="page-item"><a href="list.html?p=3" class="page-link">3</a></li>
                    <li class="page-item"><a href="list.html?p=4" class="page-link">4</a></li>
                    <li class="page-item"><a href="list.html?p=5" class="page-link">5</a></li>
                    <li class="page-item"><a href="list.html?p=6" class="page-link">6</a></li>
                    <li class="page-item"><a href="list.html?p=7" class="page-link">7</a></li>
                    <li class="page-item"><a href="list.html?p=8" class="page-link">8</a></li>
                    <li class="page-item"><a href="list.html?p=9" class="page-link">9</a></li>
                    <li class="page-item active"><a href="list.html?p=10" class="page-link">10</a></li>
                    <li class="page-item disabled">
                        <a class="page-link" href="#">다음</a>
                      </li>
                    <li class="page-item disabled">
                        <a href="#" class="page-link" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- //pagination -->
        </form>
        <!-- //게시글 폼 -->
    </div>
    <!-- //게시글 테이블 -->
    
    <!-- start footer -->
    <div class="container mt-5">
        <div class="jumbotron text-center">
            <h3 class="text-secondary">coldRain Web Project</h3>
            <p class="text-dark">
                Bulletin pages created using the bootstrap framework.
            </p>
            <span class="float-right text-secondary">
                mady by coldRain
                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-emoji-heart-eyes" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                    <path fill-rule="evenodd" d="M11.315 10.014a.5.5 0 0 1 .548.736A4.498 4.498 0 0 1 7.965 13a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .548-.736h.005l.017.005.067.015.252.055c.215.046.515.108.857.169.693.124 1.522.242 2.152.242.63 0 1.46-.118 2.152-.242a26.58 26.58 0 0 0 1.109-.224l.067-.015.017-.004.005-.002zM4.756 4.566c.763-1.424 4.02-.12.952 3.434-4.496-1.596-2.35-4.298-.952-3.434zm6.488 0c1.398-.864 3.544 1.838-.952 3.434-3.067-3.554.19-4.858.952-3.434z"/>
                </svg>
            </span>
            
        </div>
    </div>
    <!-- //end footer -->


    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
  </body>
</html>