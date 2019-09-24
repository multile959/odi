<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오디에서 정장빌려</title>
</head>
<body>
	<%@ include file="views/common/header.jsp" %>
	<!-- MAIN PAGE -->
    <div class="main-section">
		
        <section class="main-jumbotron">
            <div class="dropdown sel-location">

            </div>
            <div class="dropdown sel-date">

            </div>
            <div class="btn-search search-main">
                SEARCH
            </div>
        </section>

        <section class="sub-section">
            <input type="text" placeholder="양복점 이름으로 검색">
            <div class="btn-search-shop">
                SEARCH
            </div>
        </section>

        <article class="main-article">
            <div>

            </div>
            <div>

            </div>
        </article>
        <section class="main-ad-left">

        </section><section class="main-ad-right">

        </section>

    </div>
	<%@ include file="views/common/footer.jsp" %>
</body>
</html>