<g:if test="${showOfficeList}">

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
                    <th>Address</th>
                    <th>Area(In sqmtr)</th>
                    <th>Price</th>
                    <th>Property For</th>
                    <th>Parking Facility</th>
                    <th>Posted By</th>
                    %{--<th>Delete</th>--}%
                </tr>
                </thead>
                <tbody>

                <g:each in="${showOfficeList}" var="hl">

                    <tr class="alert-info">
                        %{--<td>4</td>--}%
                        <td>${hl.location}</td>
                        <td>${hl.address}</td>
                        <td>${hl.area}</td>
                        <td>${hl.price}</td>
                        <td>${hl.propertyFor}</td>
                        <td>${hl.parkingFacility}</td>
                        <td>${hl.person.name}</td>
                        <td></td>
                        %{--<td><g:link controller="topic" action="editTopic">Edit</g:link> </td>--}%
                        %{--<td><button class="btn-default">Delete</button> </td>--}%
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
    <h3>No Office property posted</h3>
</g:else>