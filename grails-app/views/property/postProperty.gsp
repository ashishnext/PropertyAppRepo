<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="project.propertyApp.property.House" %>
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
                %{--<g:render template="postHouse" model="[houseCO: houseCO]"></g:render>--}%


                <h4 class="heading bold">Post House For Rent/SALE</h4><br>
            %{--<p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>--}%

                <g:form action="saveHouse" method="post" enctype="multipart/form-data" useToken="true">
                    <g:render template="postHouse" model="[houseCO:houseCO]"/>

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input4" class="col-xs-2 col-form-label">Location</label>--}%

                        %{--<div class="col-xs-10">--}%
                            %{--<g:textField placeholder="Location" class="form-control" type="text"--}%
                                         %{--id="example-text-input9" name="location" value="${houseCO?.location}"/>--}%
                        %{--</div>--}%
                    %{--</div>--}%

                    %{--<g:hasErrors bean="${houseCO}" field="location">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${houseCO}" field="location">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input" class="col-xs-2 col-form-label">Address</label>--}%

                        %{--<div class="col-xs-10">--}%
                            %{--<g:textField placeholder="Address" class="form-control" id="example-text-input"--}%
                                         %{--name="address" value="${houseCO?.address}"/>--}%
                        %{--</div>--}%
                    %{--</div>--}%

                    %{--<g:hasErrors bean="${houseCO}" field="address">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${houseCO}" field="address">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input1" class="col-xs-2 col-form-label">pincode</label>--}%

                        %{--<div class="col-xs-10">--}%
                            %{--<g:textField placeholder="pincode" class="form-control" id="example-text-input1"--}%
                                         %{--name="pincode" value="${houseCO?.pincode}"/>--}%
                        %{--</div>--}%
                    %{--</div>--}%

                    %{--<g:hasErrors bean="${houseCO}" field="pincode">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${houseCO}" field="pincode">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input2" class="col-xs-2 col-form-label">No. of rooms</label>--}%

                        %{--<div class="col-xs-10">--}%
                            %{--<g:textField placeholder="Rooms" class="form-control" id="example-text-input2"--}%
                                         %{--name="rooms" value="${houseCO?.rooms}"/>--}%
                        %{--</div>--}%
                    %{--</div>--}%

                    %{--<g:hasErrors bean="${houseCO}" field="rooms">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${houseCO}" field="rooms">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input3" class="col-xs-2 col-form-label">Area</label>--}%

                        %{--<div class="col-xs-10">--}%
                            %{--<g:textField placeholder="Area" class="form-control" id="example-text-input3" name="area"--}%
                                         %{--value="${houseCO?.area}"/>--}%
                        %{--</div>--}%
                    %{--</div>--}%

                    %{--<g:hasErrors bean="${houseCO}" field="area">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${houseCO}" field="area">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input4" class="col-xs-2 col-form-label">Price</label>--}%

                        %{--<div class="col-xs-10">--}%
                            %{--<g:textField placeholder="Price" class="form-control" id="example-text-input4"--}%
                                         %{--name="price" value="${houseCO?.price}"/>--}%
                        %{--</div>--}%
                    %{--</div>--}%

                    %{--<g:hasErrors bean="${houseCO}" field="price">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${houseCO}" field="price">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input" class="col-xs-2 col-form-label">Property For</label>--}%

                        %{--<div class="col-xs-3">--}%
                            %{--<input class="form-control" type="text" value="Rooms in house" id="example-text-input" name="rooms">--}%
                            %{--<g:select name="propertyFor"--}%
                                      %{--from="${project.propertyApp.enums.Enums.PropertyFor.propertyForList()}"--}%
                                      %{--noSelection="['': 'Select']" value="${houseCO?.propertyFor}"></g:select>--}%
                        %{--</div>--}%
                    %{--</div>--}%

                    %{--<g:hasErrors bean="${houseCO}" field="propertyFor">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${houseCO}" field="propertyFor">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%


                    %{--<g:hiddenField name="id" value="${houseCOId?.id}"></g:hiddenField>--}%

                    %{--<g:hiddenField name="id2" value="${houseCOId?.id2}"></g:hiddenField>--}%

                    <div class="form-group row">

                        <g:submitButton class="btn btn-primary" name="Post" ></g:submitButton>

                    </div>
                </g:form>

            </div>

            <div class="col-md-5">
                %{--<g:render template="postOffice" model="${officeCO}"></g:render>--}%

                <h4 class="heading bold">Post Office For Rent/SALE</h4><br>
            %{--<p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>--}%

                <g:form action="saveOffice" method="post" enctype="multipart/form-data" useToken="true">
                    <g:render template="postOffice" model="[officeCO:officeCO]"></g:render>

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input4" class="col-xs-2 col-form-label">Location</label>--}%

                        %{--<div class="col-xs-10">--}%
                            %{--<g:textField placeholder="Location" class="form-control" type="text"--}%
                                         %{--id="example-text-input10" name="location" value="${officeCO?.location}"/>--}%
                        %{--</div>--}%
                    %{--</div>--}%

                    %{--<g:hasErrors bean="${officeCO}" field="location">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${officeCO}" field="location">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%


                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input" class="col-xs-2 col-form-label">Address</label>--}%

                        %{--<div class="col-xs-10">--}%
                            %{--<g:textField placeholder="address" class="form-control" type="text" id="example-text-input5"--}%
                                         %{--name="address" value="${officeCO?.address}"/>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                    %{--<g:hasErrors bean="${officeCO}" field="address">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${officeCO}" field="address">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input1" class="col-xs-2 col-form-label">pincode</label>--}%

                        %{--<div class="col-xs-10">--}%
                            %{--<g:textField placeholder="pincode" class="form-control" type="text" id="example-text-input8"--}%
                                         %{--name="pincode" value="${officeCO?.pincode}"/>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                    %{--<g:hasErrors bean="${officeCO}" field="pincode">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${officeCO}" field="pincode">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input3" class="col-xs-2 col-form-label">Area</label>--}%

                        %{--<div class="col-xs-10">--}%
                            %{--<g:textField placeholder="In sqfeet" class="form-control" type="text"--}%
                                         %{--id="example-text-input6" name="area" value="${officeCO?.area}"/>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                    %{--<g:hasErrors bean="${officeCO}" field="area">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${officeCO}" field="area">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input4" class="col-xs-2 col-form-label">Price</label>--}%

                        %{--<div class="col-xs-10">--}%
                            %{--<g:textField placeholder="Price" class="form-control" type="text" id="example-text-input7"--}%
                                         %{--name="price" value="${officeCO?.price}"/>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                    %{--<g:hasErrors bean="${officeCO}" field="price">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${officeCO}" field="price">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input" class="col-xs-2 col-form-label">Parking Facility</label>--}%

                        %{--<div class="col-xs-3">--}%
                            %{--<input class="form-control" type="text" value="Rooms in house" id="example-text-input" name="rooms">--}%
                            %{--<g:select name="parkingFacility" from="['True', 'False']"--}%
                                      %{--noSelection="['': 'Select']" value="${officeCO?.parkingFacility}"></g:select>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                    %{--<g:hasErrors bean="${officeCO}" field="parkingFacility">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${officeCO}" field="parkingFacility">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%

                    %{--<div class="form-group row">--}%
                        %{--<label for="example-text-input" class="col-xs-2 col-form-label">Property For</label>--}%

                        %{--<div class="col-xs-3">--}%
                            %{--<input class="form-control" type="text" value="Rooms in house" id="example-text-input" name="rooms">--}%
                            %{--<g:select name="propertyFor"--}%
                                      %{--from="${project.propertyApp.enums.Enums.PropertyFor.propertyForList()}"--}%
                                      %{--noSelection="['': 'Select']" value="${officeCO?.propertyFor}"></g:select>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                    %{--<g:hasErrors bean="${officeCO}" field="propertyFor">--}%
                        %{--<div class="alert alert-danger">--}%
                            %{--<ul class="errors">--}%
                                %{--<g:eachError bean="${officeCO}" field="propertyFor">--}%
                                    %{--<li>${it.defaultMessage}</li>--}%
                                %{--</g:eachError>--}%
                            %{--</ul>--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%

                    %{--<g:hiddenField name="id"></g:hiddenField>--}%

                    <div class="form-group row">
                        %{--<label for="example-text-input4" class="col-xs-2 col-form-label">Price</label>--}%
                        %{--<div class="col-xs-10">--}%
                        %{--<input class="form-control" type="text" value="In sqfeet" id="example-text-input4" name="price">--}%

               <g:submitButton name="Post" class="btn btn-primary" ></g:submitButton>

                        %{--</div>--}%
                    </div>
                </g:form>

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
