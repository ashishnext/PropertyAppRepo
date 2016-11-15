<h4 class="heading bold">Post Office For Rent/SALE</h4><br>
%{--<p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>--}%

<g:form params="[officeId: officeCO?.id]">

    <div class="form-group row">
        <label for="example-text-input4" class="col-xs-2 col-form-label">Location</label>

        <div class="col-xs-10">
            <g:textField placeholder="Location" class="form-control" type="text"
                         id="example-text-input10" name="location" value="${officeCO?.location}"/>
        </div>
    </div>

    <g:hasErrors bean="${officeCO}" field="location">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${officeCO}" field="location">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>


    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Address</label>

        <div class="col-xs-10">
            <g:textField placeholder="address" class="form-control" type="text" id="example-text-input5"
                         name="address" value="${officeCO?.address}"/>
        </div>
    </div>
    <g:hasErrors bean="${officeCO}" field="address">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${officeCO}" field="address">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input1" class="col-xs-2 col-form-label">pincode</label>

        <div class="col-xs-10">
            <g:textField placeholder="pincode" class="form-control" type="text" id="example-text-input8"
                         name="pincode" value="${officeCO?.pincode}"/>
        </div>
    </div>
    <g:hasErrors bean="${officeCO}" field="pincode">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${officeCO}" field="pincode">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input3" class="col-xs-2 col-form-label">Area</label>

        <div class="col-xs-10">
            <g:textField placeholder="In sqfeet" class="form-control" type="text"
                         id="example-text-input6" name="area" value="${officeCO?.area}"/>
        </div>
    </div>
    <g:hasErrors bean="${officeCO}" field="area">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${officeCO}" field="area">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input4" class="col-xs-2 col-form-label">Price</label>

        <div class="col-xs-10">
            <g:textField placeholder="Price" class="form-control" type="text" id="example-text-input7"
                         name="price" value="${officeCO?.price}"/>
        </div>
    </div>
    <g:hasErrors bean="${officeCO}" field="price">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${officeCO}" field="price">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Parking Facility</label>

        <div class="col-xs-3">
            %{--<input class="form-control" type="text" value="Rooms in house" id="example-text-input" name="rooms">--}%
            <g:select name="parkingFacility" from="['True', 'False']"
                      noSelection="['': 'Select']"></g:select>
        </div>
    </div>
    <g:hasErrors bean="${officeCO}" field="parkingFacility">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${officeCO}" field="parkingFacility">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
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
    <g:hasErrors bean="${officeCO}" field="propertyFor">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${officeCO}" field="propertyFor">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <g:hiddenField name="id"></g:hiddenField>

    <div class="form-group row">
        %{--<label for="example-text-input4" class="col-xs-2 col-form-label">Price</label>--}%
        %{--<div class="col-xs-10">--}%
        %{--<input class="form-control" type="text" value="In sqfeet" id="example-text-input4" name="price">--}%
        <g:if test="${actionName == 'editOffice'}">

            <g:actionSubmit value="Update" action="updateOffice"></g:actionSubmit>
        </g:if>
        <g:else>
            <g:actionSubmit value="Post" action="saveOffice"></g:actionSubmit>
        </g:else>
        %{--</div>--}%
    </div>
</g:form>   