

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Car</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Car List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Car</g:link></span>
        </div>
        <div class="body">
            <h1>Show Car</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Name:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'name')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Manufacturer:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'manufacturer')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Current Mileage:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'currentMileage')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Initial Mileage:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'initialMileage')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Image:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'image')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Color:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'color')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Discharge Standard:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'dischargeStandard')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Engine:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'engine')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Gas Discplacement:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'gasDiscplacement')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Loan:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'loan')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Loan Bank:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'loanBank')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Next Inspection Date:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'nextInspectionDate')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Owner:</td>
                            
                            <td valign="top" class="value"><g:link controller="user" action="show" id="${carInstance?.owner?.id}">${carInstance?.owner?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Painting Code:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'paintingCode')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Plate Price:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'platePrice')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Price:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'price')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Purchase Date:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'purchaseDate')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Remarks:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'remarks')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tank Volume:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'tankVolume')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tax:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'tax')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Term Of Years:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'termOfYears')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Vendor:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'vendor')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Vendor Address:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'vendorAddress')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Vendor Contact:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'vendorContact')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Vendor Phone:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'vendorPhone')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Vin:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:carInstance, field:'vin')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${carInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
