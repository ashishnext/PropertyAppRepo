<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="app">
    <title></title>
</head>

<body>
<h2>Login as Owner or Agent to post property</h2>


<div class="container-fluid">
    <div class="row">
        <sec:ifNotGranted roles="ROLE_CUSTOMER">

            <div class="col-md-2">
                <g:render template="sideBar"></g:render>
            </div>

            <div class="col-md-5">
                <g:render template="postHouse" model="${houseCO}"></g:render>
            </div>

            <div class="col-md-5">
                <g:render template="postOffice" model="${officeCO}"></g:render>

            </div>

        </sec:ifNotGranted>
    </div>
</div>
%{--<g:else>Login as Owner or Agent to post property</g:else>--}%
<sec:ifAnyGranted roles="ROLE_CUSTOMER">
    <h2>Login as Owner or Agent to post property</h2>

    <h2>Login as Owner or Agent to post property</h2>
</sec:ifAnyGranted>
</body>
</html>