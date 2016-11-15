<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>`
    <meta name="layout" content="app">
    <title></title>
</head>

<body>

<h5>gjdfkjg</h5>

<div class="container-fluid">
    <div class="row">

        <div class="container-fluid bg-info">
            <div class="table">
                <div class="header-text">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h2 class="blue">Property App</h2>

                            <h3 class=" typed">One place for all your property related issues</h3>
                            <span class="typed-cursor"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <br><br>
        <h4 class="bold">Search Property</h4>
    </div>


    <g:form controller="landing" action="radioSearch">
        <label for="cb">For Rent</label>
        <g:radio name="cb" value="${project.propertyApp.enums.Enums.PropertyFor.RENT}" checked="true"></g:radio>

        <label for="cb">For Sale</label>
        <g:radio name="cb" value="${project.propertyApp.enums.Enums.PropertyFor.SALE}"></g:radio>

        <g:submitButton name="Submit"/>
    </g:form>





    <g:if test="${radioVal== 'RENT'}">
    <g:form class="form-horizontal" controller="property" action="searchByLocation" params="[propertyFor: radioVal]">

        <div class="form-group row">
            <label for="example-text-input7" class="col-xs-1 col-form-label">By Location</label>

            <div class="col-xs-3">
                <g:textField placeholder="Search" class="form-control" type="text" id="example-text-input7"
                             name="searchLocation"/>
            </div>
        </div>


        <div class="form-group row ">
            <label for="example-text-input7" class="col-xs-1 col-form-label">By Price</label>

            <g:select name="price" from="['0-5000', '5000-1000', '10000-15000', '15000-20000', '20000-30000']" noSelection="['': 'Select range']"/>
        </div>


        <div class="form-group row">
            <g:submitButton name="Submit" class="btn btn-primary"></g:submitButton>
        </div>
    </g:form>
    </g:if>

    <g:else>
        <g:form class="form-horizontal" controller="property" action="searchByLocation" params="[propertyFor: radioVal]">

            <div class="form-group row">
                <label for="example-text-input7" class="col-xs-1 col-form-label">By Location</label>

                <div class="col-xs-3">
                    <g:textField placeholder="Search" class="form-control" type="text" id="example-text-input7"
                                 name="searchLocation"/>
                </div>
            </div>


            <div class="form-group row ">
                <label for="example-text-input7" class="col-xs-1 col-form-label">By Price</label>

                <g:select name="price" from="['500000-1000000', '1000000-2000000', '2000000-5000000', '5000000-7500000', '7500000-8000000']" noSelection="['': 'Select range']"/>
            </div>


            <div class="form-group row">
                <g:submitButton name="Submit" class="btn btn-primary"></g:submitButton>
            </div>
        </g:form>
    </g:else>



    <g:if test="${houseByLocation || officeByLocation}">
        <h4>Properties matching your input</h4>

        <div class="col-md-6">
            <g:render template="/property/showHouse" model="[showHouseList: houseByLocation]"></g:render>
        </div>

        <div class="col-md-6">
            <g:render template="/property/showOffice" model="[showOfficeList: officeByLocation]"></g:render>
        </div>
    </g:if>
    <g:else>
    %{--<h4>No result matching your input</h4>--}%
        <div class="col-md-6">
            <g:render template="/property/showHouse"
                      model="[showHouseList: project.propertyApp.property.House.newHousePosted()]"></g:render>
        </div>

        <div class="col-md-6">
            <g:render template="/property/showOffice"
                      model="[showOfficeList: project.propertyApp.property.Office.newOfficePosted()]"></g:render>
        </div>
    </g:else>

</div>
</div>

</body>
</html>