<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DCItemOnboarding.aspx.cs" Inherits="DCItemOnboarding.DCItemOnboarding" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <link href="Content/bootstrap.css" rel="stylesheet" />
        <link href="Content/bootstrap-switch.css" rel="stylesheet" />
        <link href="Content/bootstrap-datepicker3.css" rel="stylesheet"/>

        <title>DC Item Onboarding</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div id="divCards">
                <div id="divCard1">
                    <div id="divCard1Header" style="height: 200px; width: 90%;">
                        <h3>Assign DCs</h3>
                        <h4>Assign the DC's that will carry the item by clicking on the box next to each DC in the Assign column. Press next when complete.</h4>
                        Family Restaurant Group
                        <br/><br/>
                        77589-24 ounce waxed paper drinking cups (Carrie's Cups)
                    </div>
                    <div class="table-responsive" style="height: 300px; overflow-x: hidden; overflow-y: scroll; width: 90%;">
                        <table class="table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>Assign</th>
                                    <th>Name</th>
                                </tr>
                            </thead>
                            <tbody data-bind="foreach: dcItems">
                                <tr>
                                    <td><input type="checkbox" data-bind="checked: isAssigned" name="chkIsAssigned" /></td>
                                    <td data-bind="text: name"></td>
                                </tr>    
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="divCard2">
                    <div id="divCard2Header" style="height: 200px; width: 90%;">
                        <h3>Enter Data Feed Date</h3>
                        <h4>Enter the Data Feed No Later Than date. Press next when complete.</h4>
                        <table>
                            <tr>
                                <td style="width: 50%">Family Restaurant Group</td>
                                <td style="width: 50%">Data Feed No Later Than 
                                    <input type="text" id="txtMainFeedByDate" data-date-format="mm/dd/yyyy" />
                                    <button type="button" class="btn btn-primary" id="btnApplyMainFeedByDate" onclick=" javascript:applyMainFeedByDate(); ">Apply to Assigned DC's</button>
                                </td>
                            </tr>
                        </table>
                        
                        <br/><br/>
                        77589-24 ounce waxed paper drinking cups (Carrie's Cups)
                    </div>
                    <div class="table-responsive" style="height: 300px; overflow-x: hidden; overflow-y: scroll; width: 90%;">
                        <table class="table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>Assign</th>
                                    <th>Name</th>
                                    <th>Data Feed No Less Than</th>
                                </tr>
                            </thead>
                            <tbody data-bind="foreach: dcItems">
                                <tr data-bind="visible: isAssigned">
                                    <td><input type="checkbox" data-bind="checked: isAssigned" disabled="disabled" name="chkIsAssigned" /></td>
                                    <td data-bind="text: name"></td>
                                    <td><input type="text" data-bind="value: feedByDate" name="txtFeedByDate" data-date-format="mm/dd/yyyy" /></td>
                                </tr>    
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="divCard3">
                    <div id="divCard3Header" style="height: 200px; width: 90%;">
                        <h3>DC Inventory Feed Status</h3>
                        <h4>Indivate any DC's that will not be providing an inventory data feed by selecting "No Feed" next to the DC. Press next when complete.</h4>
                        Family Restaurant Group
                        <br/><br/>
                        77589-24 ounce waxed paper drinking cups (Carrie's Cups)
                    </div>
                    <div class="table-responsive" style="height: 300px; overflow-x: hidden; overflow-y: scroll; width: 90%;">
                        <table class="table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>Assign</th>
                                    <th>Name</th>
                                    <th>Data Feed No Less Than</th>
                                    <th>No DC Inventory Feed</th>
                                </tr>
                            </thead>
                            <tbody data-bind="foreach: dcItems">
                                <tr data-bind="visible: isAssigned">
                                    <td><input type="checkbox" data-bind="checked: isAssigned" disabled="disabled" name="chkIsAssigned" /></td>
                                    <td data-bind="text: name"></td>
                                    <td><input type="text" data-bind="value: feedByDate" disabled="disabled" name="txtFeedByDate" data-date-format="mm/dd/yyyy" /></td>
                                    <td><input type="checkbox" data-bind="checked: hasNoInventoryFeed" name="chkHasNoInventoryFeed" /></td>
                                </tr>    
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="divCard4">
                    <div id="divCard4Header" style="height: 200px; width: 90%;">
                        <h3>Enter DC Item Number</h3>
                        <h4>If you have the DC Item Number, enter it and press Next. If not, press Next to advance.</h4>
                        <table>
                            <tr>
                                <td style="width: 50%">Family Restaurant Group</td>
                                <td style="width: 50%">DC Item Number
                                    <input type="text" id="txtMainDcItemNumber" />
                                    <button type="button" class="btn btn-primary" id="Button1" onclick=" javascript:applyMainDcItemNumber(); ">Apply to DC's</button>
                                </td>
                            </tr>
                        </table>
                        <br/><br/>
                        77589-24 ounce waxed paper drinking cups (Carrie's Cups)
                    </div>
                    <div class="table-responsive" style="height: 300px; overflow-x: hidden; overflow-y: scroll; width: 90%;">
                        <table class="table table-striped table-hover table-bordered" >
                            <thead>
                                <tr>
                                    <th>Assign</th>
                                    <th>Name</th>
                                    <th>Data Feed No Less Than</th>
                                    <th>No DC Inventory Feed</th>
                                    <th>DC Item No.</th>
                                </tr>
                            </thead>
                            <tbody data-bind="foreach: dcItems">
                                <tr data-bind="visible: isAssigned">
                                    <td><input type="checkbox" data-bind="checked: isAssigned" disabled="disabled" name="chkIsAssigned" /></td>
                                    <td data-bind="text: name"></td>
                                    <td><input type="text" data-bind="value: feedByDate" disabled="disabled" name="txtFeedByDate" data-date-format="mm/dd/yyyy" /></td>
                                    <td data-bind="text: hasNoInventoryFeedText" ></td>
                                    <td><input type="text" data-bind="value: dcItemNumber" name="txtDcItemNumber" /></td>
                                </tr>    
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="divCard5">
                    <div id="divCard5Header" style="height: 200px; width: 90%;">
                        <h3>Enter Notes & Finish</h3>
                        <h4>Enter any Notes related to the item for each DC.<br/>
                            Review information to ensure it is correct. Use the Previous button to return and edit information. Press Finish when complete.</h4>
                        Family Restaurant Group
                        <br/><br/>
                        77589-24 ounce waxed paper drinking cups (Carrie's Cups)
                    </div>
                    <div class="table-responsive" style="height: 300px; overflow-x: hidden; overflow-y: scroll; width: 90%;">
                        <table class="table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>Assign</th>
                                    <th>Name</th>
                                    <th>Data Feed No Less Than</th>
                                    <th>No DC Inventory Feed</th>
                                    <th>DC Item No.</th>
                                    <th>Notes</th>
                                </tr>
                            </thead>
                            <tbody data-bind="foreach: dcItems">
                                <tr data-bind="visible: isAssigned">
                                    <td><input type="checkbox" data-bind="checked: isAssigned" disabled="disabled" name="chkIsAssigned" /></td>
                                    <td data-bind="text: name"></td>
                                    <td ><input type="text" data-bind="value: feedByDate" disabled="disabled" name="txtFeedByDate" data-date-format="mm/dd/yyyy" /></td>
                                    <td data-bind="text: hasNoInventoryFeedText" ></td>
                                    <td data-bind="text: dcItemNumber"></td>
                                    <td><input type="text" data-bind="value: notes" /></td>
                                </tr>    
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <br/>
            <button type="button" class="btn btn-danger" id="btnPrev" onclick=" javascript:decrementCardNumber(); ">Previous</button>
            <button type="button" class="btn btn-primary" id="btnNext" onclick=" javascript:incrementCardNumber(); ">Next</button>
            <button type="button" class="btn btn-success" id="btnSave" onclick=" javascript:save(); ">Finish</button>

            
        </form>
        
        <script src="Scripts/knockout-3.1.0.js" type="text/javascript"> </script>
        <script src="Scripts/jquery-2.1.0.min.js"> </script>
        <script src="Scripts/bootstrap-datepicker.js"> </script>
        <script type="text/javascript">
            
            // Global instance of view model
            var vm = new DcItemsViewModel();

            // Initial setup
            $(function() {
                $.each(getInitialDcItems(), function (i, item) {
                    if (item != undefined) {
                        vm.dcItems.push(new DcItem(item));
                    }
                });
                // Various UI setup now that the dc items have been populated in the view model (and bound to the page elements)
                $("input[name='txtFeedByDate']", document.getElementById('divCards')).datepicker({
                    autoclose: true
                });
                $("#txtMainFeedByDate").datepicker({
                    autoclose: true
                });

                initializeCard(vm.cardNumber());
            });

            // bind view model to page elements
            ko.applyBindings(vm);

            // VIEW MODEL definition
            function DcItemsViewModel() {
                var self = this;
                self.cardNumber = ko.observable(1);
                self.dcItems = ko.observableArray([]);
            }

            ;

            function DcItem(data) {
                var self = this;
                self.isAssigned = ko.observable(false);
                self.name = ko.observable(data.Name);
                self.feedByDate = ko.observable(data.FeedByDate);
                self.hasNoInventoryFeed = ko.observable(data.HasNoInventoryFeed);
                self.dcItemNumber = ko.observable(data.DcItemNumber);
                self.notes = ko.observable(data.Notes);
                self.hasNoInventoryFeedText = ko.computed(function() {
                    if (self.hasNoInventoryFeed()) {
                        return "No Feed";
                    }
                    return "";
                });
            }

            ;

            // Save
            function save() {
                $.ajax({
                    type: "POSt",
                    url: "DCItemOnboarding.aspx/SaveDCItems",
                    data: ko.toJSON({ jsmodel: ko.toJSON(vm) }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(content) {
                        if (content.d == true) {
                            alert("save!");
                        } else {
                            alert("denied (" + content.d + ")");
                        }
                        // TODO: Close window?
                    },
                    error: function(error) {
                        // redirect to error page?
                        alert('Error: ', error);
                    }
                });
            }

            function getInitialDcItems() {
                return <%= InitialDCItems %>;
            }

            // Helper functions from here down

            function incrementCardNumber() {
                this.vm.cardNumber(this.vm.cardNumber() + 1);
                initializeCard(this.vm.cardNumber());
            }

            function decrementCardNumber() {

                this.vm.cardNumber(this.vm.cardNumber() - 1);
                initializeCard(this.vm.cardNumber());
            }

            function initializeCard(cardNumber) {
                showProperCard(cardNumber);
                showProperButtons(cardNumber);
            }

            function showProperCard(cardNumber) {
                for (var i = 1; i <= 5; i++) {
                    var divCardId = "divCard" + i;
                    if (cardNumber == i) {
                        $("#" + divCardId).show();
                    } else {
                        $("#" + divCardId).hide();
                    }
                }
            }

            function showProperButtons(cardNumber) {
                if (cardNumber == 1) {
                    $("#btnPrev").hide();
                } else {
                    $("#btnPrev").show();
                }

                if (cardNumber == 5) {
                    $("#btnNext").hide();
                    $("#btnSave").show();
                } else {
                    $("#btnNext").show();
                    $("#btnSave").hide();
                }
            }

            function applyMainFeedByDate() {
                var mainFeedByDate = $("#txtMainFeedByDate").val();
                if (mainFeedByDate == undefined || !isDate(mainFeedByDate)) {
                    return;
                }

                $('input[name="txtFeedByDate"]').val(function() {
                    return mainFeedByDate;
                });
            }

            function applyMainDcItemNumber() {
                var mainDcItemNumber = $("#txtMainDcItemNumber").val();

                $('input[name="txtDcItemNumber"]').val(function() {
                    return mainDcItemNumber;
                });
            }

            function isDate(val) {
                var d = new Date(val);
                return !isNaN(d.valueOf());
            }

        </script>
        
    </body>
</html>