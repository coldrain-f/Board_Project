<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@include file="includes/header.jsp" %>

    <!-- 글 수정 폼 -->
    <div class="container mt-5">
        <form action="/board/write" method="post" class="form-inline">
            <table class="table">
                <tr>
                    <td>
                        <input type="text" class="form-control w-100" name="title" placeholder="Title" autocomplete="off" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <textarea class="summernote form-control w-100" name="contents"  placeholder="Contents" cols="30" rows="15"></textarea>
                    </td>
                </tr>
                <tr>
                    <td class="text-right"> 
                        <input type="submit" class="btn btn-primary mr-1" value="등록" />
                        <button type="button" class="btn btn-primary" onclick="location.href='/board/list'">취소</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <!-- //글 수정 폼 -->

    <!-- 써머노트 웹 에디터 로딩 -->
    <script>
        $(".summernote").summernote({
            height: 300,    //에디터 높이
            minHeight: null,    //최소 높이
            maxHeight: null,    //최대 높이
            focus: true,    //에디터 로딩 후 포커스를 맞출지 여부
            lang: "ko-KR",  //한글 설정
            placeholder: "Contents"  //placeholder 설정
        });
    </script>
    
<%@include file="includes/footer.jsp" %>