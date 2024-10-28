<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>影院订票系统后台登陆</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
    <script>
        function login() {
            $('#msg').html('');
            if ($('#name').val() == '') {
                $('#msg').html('请输入用户名');
                return;
            }
            if ($('#password').val() == '') {
                $('#msg').html('请输入密码');
                return;
            }

            $('#logform').submit();
        }

        function keyLogin() {
            if (event.keyCode == 13) {
                login();
            }
        }
    </script>
</head>

<body onkeydown="keyLogin()">
    <div class="login_box">
        <div class="login_l_img"><img src="${pageContext.request.contextPath}/images/login-img.png"></div>
        <div class="login">
            <div class="login_logo"><img src="${pageContext.request.contextPath}/images/login_logo.png"></div>
            <div class="login_name">
                <p>影院订票系统后台登陆</p>
                <span id="msg"></span>
            </div>
            <form action="${pageContext.request.contextPath}/admin/login.action" method="post" id="logform">
                <input type="text" name="username" id="username" placeholder="用户名">
                <input type="password" name="password" id="password" placeholder="密码">
                <input value="登录" style="width:100%;" type="button" onclick="login()">
            </form>
        </div>
    </div>
</body>

</html>