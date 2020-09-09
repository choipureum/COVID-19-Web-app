<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- header 임포트 -->
<jsp:include page="/header.do" />

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

 <script>
        // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('e721ebffa13f4046dd1872bd485f5506');
        // SDK 초기화 여부를 판단합니다.
        console.log(Kakao.isInitialized());
</script>
<body>
<a id="login-form-btn" href="javascript:loginFormWithKakao()">
  <img
    src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
    width="222"
  />
</a>
<p id="login-form-result"></p>
<script type="text/javascript">
  function loginFormWithKakao() {
    Kakao.Auth.loginForm({
      success: function(authObj) {
        showResult(JSON.stringify(authObj))
      },
      fail: function(err) {
        showResult(JSON.stringify(err))
      },
    })
  }
  function showResult(result) {
    document.getElementById('login-form-result').innerText = result
  }
</script>

<!-- footer 임포트 -->
<jsp:include page="/footer.do" />
</body>