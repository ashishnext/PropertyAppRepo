
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="app">
    <title></title>
</head>

<body>
<h2>dekhfke</h2>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
            <g:render template="sideBar"></g:render>
        </div>
        <div class="col-md-6">
            <g:if test="${flash.message}">
                <h4>${flash.message}</h4>
            </g:if>
            <g:if test="${houseList}">

                <div class="bs-docs-section">

                    <h3 class="text-center alert-info"><b>Houses Posted</b></h3>
                    %{--<div class="row">--}%
                    %{--<div class="col-lg-12">--}%
                    %{--<div class="page-header">--}%
                    %{--</div>--}%


                    <div class="bs-component">
                        <table class="table table-striped table-hover ">
                            <thead>
                            <tr>
                                %{--<th>#</th>--}%
                                <th>Location</th>
                                <th>Area(In sqmtr)</th>
                                <th>Price</th>
                                <th>Property For</th>
                                <th>Rooms</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            </thead>
                            <tbody>

                            <g:each in="${houseList}" var="hl">

                                <tr class="alert-info">
                                    %{--<td>4</td>--}%
                                    <td>${hl.location}</td>
                                    <td>${hl.area}</td>
                                    <td>${hl.price}</td>
                                    <td>${hl.propertyFor}</td>
                                    <td>${hl.rooms}</td>
                                    <td><g:link controller="property" action="editHouse" params="[houseId:hl.id]">Edit</g:link> </td>
                                    <td><button class="btn-default">Delete</button> </td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div><!-- /example -->
                %{--</div>--}%
                %{--</div>--}%
                </div>
            </g:if>
            <g:else>
                <h3>No house property posted</h3>
            </g:else>

        </div>


        <div class="col-md-6">
            <g:if test="${officeList}">

                <div class="bs-docs-section">

                    <h3 class="text-center alert-info"><b>Offices Posted</b></h3>
                    %{--<div class="row">--}%
                    %{--<div class="col-lg-12">--}%
                    %{--<div class="page-header">--}%
                    %{--</div>--}%

                    <div class="bs-component">
                        <table class="table table-striped table-hover ">
                            <thead>
                            <tr>
                                %{--<th>#</th>--}%
                                <th>Location</th>
                                <th>Area(In sqmtr)</th>
                                <th>Price</th>
                                <th>Property For</th>
                                <th>Parking Facility</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            </thead>
                            <tbody>

                            <g:each in="${officeList}" var="hl">

                                <tr class="alert-info">
                                    %{--<td>4</td>--}%
                                    <td>${hl.location}</td>
                                    <td>${hl.area}</td>
                                    <td>${hl.price}</td>
                                    <td>${hl.propertyFor}</td>
                                    <td>${hl.parkingFacility}</td>
                                    <td><g:link controller="property" action="editOffice" params="[officeId:hl.id]">Edit</g:link> </td>
                                    <td><button class="btn-default">Delete</button> </td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div><!-- /example -->
                %{--</div>--}%
                %{--</div>--}%
                </div>
            </g:if>
            <g:else>
                <h3>No office property posted</h3>
            </g:else>

        </div>

    </div>
</div>

</body>
</html>