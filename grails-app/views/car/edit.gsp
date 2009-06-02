

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Car</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Car List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Car</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Car</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${carInstance}">
            <div class="errors">
                <g:renderErrors bean="${carInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post"  enctype="multipart/form-data">
                <input type="hidden" name="id" value="${carInstance?.id}" />
                <input type="hidden" name="version" value="${carInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name">Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'name','errors')}">
                                    <input type="text" id="name" name="name" value="${fieldValue(bean:carInstance,field:'name')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="manufacturer">Manufacturer:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'manufacturer','errors')}">
                                    <input type="text" id="manufacturer" name="manufacturer" value="${fieldValue(bean:carInstance,field:'manufacturer')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="currentMileage">Current Mileage:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'currentMileage','errors')}">
                                    <input type="text" id="currentMileage" name="currentMileage" value="${fieldValue(bean:carInstance,field:'currentMileage')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="initialMileage">Initial Mileage:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'initialMileage','errors')}">
                                    <input type="text" id="initialMileage" name="initialMileage" value="${fieldValue(bean:carInstance,field:'initialMileage')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="image">Image:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'image','errors')}">
                                    <input type="file" id="image" name="image" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="color">Color:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'color','errors')}">
                                    <input type="text" id="color" name="color" value="${fieldValue(bean:carInstance,field:'color')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dischargeStandard">Discharge Standard:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'dischargeStandard','errors')}">
                                    <input type="text" id="dischargeStandard" name="dischargeStandard" value="${fieldValue(bean:carInstance,field:'dischargeStandard')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="engine">Engine:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'engine','errors')}">
                                    <input type="text" id="engine" name="engine" value="${fieldValue(bean:carInstance,field:'engine')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="gasDiscplacement">Gas Discplacement:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'gasDiscplacement','errors')}">
                                    <input type="text" id="gasDiscplacement" name="gasDiscplacement" value="${fieldValue(bean:carInstance,field:'gasDiscplacement')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="loan">Loan:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'loan','errors')}">
                                    <input type="text" id="loan" name="loan" value="${fieldValue(bean:carInstance,field:'loan')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="loanBank">Loan Bank:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'loanBank','errors')}">
                                    <input type="text" id="loanBank" name="loanBank" value="${fieldValue(bean:carInstance,field:'loanBank')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nextInspectionDate">Next Inspection Date:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'nextInspectionDate','errors')}">
                                    <g:datePicker name="nextInspectionDate" value="${carInstance?.nextInspectionDate}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="owner">Owner:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'owner','errors')}">
                                    <g:select optionKey="id" from="${User.list()}" name="owner.id" value="${carInstance?.owner?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paintingCode">Painting Code:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'paintingCode','errors')}">
                                    <input type="text" id="paintingCode" name="paintingCode" value="${fieldValue(bean:carInstance,field:'paintingCode')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="platePrice">Plate Price:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'platePrice','errors')}">
                                    <input type="text" id="platePrice" name="platePrice" value="${fieldValue(bean:carInstance,field:'platePrice')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="price">Price:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'price','errors')}">
                                    <input type="text" id="price" name="price" value="${fieldValue(bean:carInstance,field:'price')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="purchaseDate">Purchase Date:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'purchaseDate','errors')}">
                                    <g:datePicker name="purchaseDate" value="${carInstance?.purchaseDate}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="remarks">Remarks:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'remarks','errors')}">
                                    <input type="text" id="remarks" name="remarks" value="${fieldValue(bean:carInstance,field:'remarks')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tankVolume">Tank Volume:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'tankVolume','errors')}">
                                    <input type="text" id="tankVolume" name="tankVolume" value="${fieldValue(bean:carInstance,field:'tankVolume')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tax">Tax:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'tax','errors')}">
                                    <input type="text" id="tax" name="tax" value="${fieldValue(bean:carInstance,field:'tax')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="termOfYears">Term Of Years:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'termOfYears','errors')}">
                                    <input type="text" id="termOfYears" name="termOfYears" value="${fieldValue(bean:carInstance,field:'termOfYears')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vendor">Vendor:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'vendor','errors')}">
                                    <input type="text" id="vendor" name="vendor" value="${fieldValue(bean:carInstance,field:'vendor')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vendorAddress">Vendor Address:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'vendorAddress','errors')}">
                                    <input type="text" id="vendorAddress" name="vendorAddress" value="${fieldValue(bean:carInstance,field:'vendorAddress')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vendorContact">Vendor Contact:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'vendorContact','errors')}">
                                    <input type="text" id="vendorContact" name="vendorContact" value="${fieldValue(bean:carInstance,field:'vendorContact')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vendorPhone">Vendor Phone:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'vendorPhone','errors')}">
                                    <input type="text" id="vendorPhone" name="vendorPhone" value="${fieldValue(bean:carInstance,field:'vendorPhone')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="vin">Vin:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carInstance,field:'vin','errors')}">
                                    <input type="text" id="vin" name="vin" value="${fieldValue(bean:carInstance,field:'vin')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
