<%@ page import="com.hyeonuk.jspcafe.member.domain.Member" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../component/header.jsp"%>
<!DOCTYPE html>
<html lang="kr">
<body>
<div class="container" id="main">
   <div class="col-md-10 col-md-offset-1">
      <div class="panel panel-default">
          <table class="table table-hover">
              <thead>
                <tr>
                    <th>#</th> <th>사용자 아이디</th> <th>이름</th> <th>이메일</th><th></th>
                </tr>
              </thead>
              <tbody>
              <%
                  List<Member> members = (List<Member>)request.getAttribute("members");
                  for(Member member : members){
              %>
              <tr>
                <th scope="row"><%=member.getId()%></th> <td><%=member.getMemberId()%></td> <td><%=member.getNickname()%></td> <td><%=member.getEmail()%></td><td><a href="/member/<%=member.getMemberId()%>" class="btn btn-success" role="button">수정</a></td>
              </tr>
              <%
                  }
              %>
              </tr>
              </tr>
              </tbody>
          </table>
        </div>
    </div>
</div>

<!-- script references -->
<script src="../js/jquery-2.2.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/scripts.js"></script>
	</body>
</html>