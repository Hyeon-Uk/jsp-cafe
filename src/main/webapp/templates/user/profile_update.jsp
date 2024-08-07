<%@ page import="com.hyeonuk.jspcafe.member.domain.Member" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../component/header.jsp"%>
<!DOCTYPE html>
<html lang="kr">
<body>
<div class="container" id="main">
    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default content-main">
            <%
                Member member = (Member) request.getAttribute("member");
            %>
            <form name="question" method="post" action="${pageContext.request.contextPath}/members/<%=member.getMemberId()%>">
                <div class="form-group">
                    <label for="userId">사용자 아이디</label>
                    <input class="form-control" id="userId" placeholder="User ID" value = "<%=member.getMemberId()%>" disabled>
                </div>
                <div class="form-group">
                    <label for="password">비밀번호</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="name">이름</label>
                    <input class="form-control" id="name" name="nickname" placeholder="Name" value="<%=member.getNickname()%>">
                </div>
                <div class="form-group">
                    <label for="email">이메일</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="<%=member.getEmail()%>">
                </div>
                <div class="form-group">
                    <label for="passwordCheck">비밀번호 확인</label>
                    <input type="password" class="form-control" id="passwordCheck" name="passwordCheck" placeholder="passwordCheck">
                </div>
                <button type="submit" class="btn btn-success clearfix pull-right">회원가입</button>
                <div class="clearfix" />
            </form>
        </div>
    </div>
</div>
	</body>
</html>