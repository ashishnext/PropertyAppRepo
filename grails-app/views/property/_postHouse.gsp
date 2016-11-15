<%@ page import="project.propertyApp.property.House" %>
<h4 class="heading bold">Post House For Rent/SALE</h4><br>
%{--<p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>--}%

<g:form params="[houseId: houseCO?.id ]">

    <div class="form-group row">
        <label for="example-text-input4" class="col-xs-2 col-form-label">Location</label>

        <div class="col-xs-10">
            <g:textField placeholder="Location" class="form-control" type="text"
                         id="example-text-input9" name="location" value="${houseCO?.location}"/>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="location">
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <g:message code="CO.field.error"/>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Address</label>

        <div class="col-xs-10">
            <g:textField placeholder="Address" class="form-control" id="example-text-input"
                         name="address" value="${houseCO?.address}"/>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="address">
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <g:message code="CO.field.error"/>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input1" class="col-xs-2 col-form-label">pincode</label>

        <div class="col-xs-10">
            <g:textField placeholder="pincode" class="form-control" id="example-text-input1"
                         name="pincode" value="${houseCO?.pincode}"/>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="pincode">
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <g:message code="CO.field.error"/>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input2" class="col-xs-2 col-form-label">No. of rooms</label>

        <div class="col-xs-10">
            <g:textField placeholder="Rooms" class="form-control" id="example-text-input2"
                         name="rooms" value="${houseCO?.rooms}"/>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="rooms">
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <g:message code="CO.field.error"/>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input3" class="col-xs-2 col-form-label">Area</label>

        <div class="col-xs-10">
            <g:textField placeholder="Area" class="form-control" id="example-text-input3" name="area"
                         value="${houseCO?.area}"/>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="area">
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <g:message code="CO.field.error"/>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input4" class="col-xs-2 col-form-label">Price</label>

        <div class="col-xs-10">
            <g:textField placeholder="Price" class="form-control" id="example-text-input4"
                         name="price" value="${houseCO?.price}"/>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="price">
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <g:message code="CO.field.error"/>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Property For</label>

        <div class="col-xs-3">
            %{--<input class="form-control" type="text" value="Rooms in house" id="example-text-input" name="rooms">--}%
            <g:select name="propertyFor"
                      from="${project.propertyApp.enums.Enums.PropertyFor.propertyForList()}"
                      noSelection="['': 'Select']"></g:select>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="propertyFor">
        <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <g:message code="CO.field.error"/>
        </div>
    </g:hasErrors>


    <g:hiddenField name="id"></g:hiddenField>

    <div class="form-group row">

        <g:if test="${actionName == 'postProperty'}">
            <g:actionSubmit value="Post" action="saveHouse"></g:actionSubmit>
        </g:if>
        <g:elseif test="${actionName=='editHouse'}">
            <g:actionSubmit value="Update" action="updateHouse"></g:actionSubmit>
        </g:elseif>
        <g:else>
            <g:actionSubmit value="Update" action="editHouse"></g:actionSubmit>

        </g:else>

    </div>
</g:form>