
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="app">
    <title></title>
</head>

<body>
<h3>sdvsdf</h3>

<div class="container-fluid">
    <div class="row">

            <div class="col-md-2">
                <g:render template="sideBar"></g:render>
            </div>

            <div class="col-md-5">
                <g:render template="postHouse" model="[houseCO:houseObj? houseObj: houseCO, houseCOId: houseCO]"></g:render>
            </div>
    </div>
</div>

</body>
</html>