<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DCItemOnboarding.aspx.cs" Inherits="DCItemOnboarding.DCItemOnboarding" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <link href="Content/bootstrap.css" rel="stylesheet" />
        <link href="Content/bootstrap-datepicker3.css" rel="stylesheet"/>
        
        <style type="text/css">
            .subheading {
                -moz-border-radius: 8px;
                -moz-box-shadow: #666 0px 2px 3px;
                -pie-background: linear-gradient(#F7FB9D, #EAE01A);
                -webkit-border-radius: 8px;
                -webkit-box-shadow: #666 0px 2px 3px;
                background: #F7FB9D;
                background: -webkit-gradient(linear, 0 0, 0 bottom, from(#F7FB9D), to(#EAE01A));
                background: -webkit-linear-gradient(#F7FB9D, #EAE01A);
                background: -moz-linear-gradient(#F7FB9D, #EAE01A);
                background: -ms-linear-gradient(#F7FB9D, #EAE01A);
                background: #F7FB9D;
                background: -webkit-gradient(linear, 0 0, 0 bottom, from(#F7FB9D), to(#EAE01A));
                border: 1px solid #696;
                border-radius: 8px;
                box-shadow: #666 0px 2px 3px;
                font-weight: bold;
                padding: 10px 0;
                text-align: center;
                width: 100%;
            }

            th.col-isAssigned, td.col-isAssigned {
                text-align: center;
                width: 30px;
            }

            th.col-name-skinny, td.col-name-skinny {
                text-align: center;
                width: 100px;
            }

            th.col-name, td.col-name { width: 130px; }

            th.col-feedByDate, td.col-feedByDate {
                text-align: center;
                width: 160px;
            }

            th.col-hasNoInventoryFeed, td.col-hasNoInventoryFeed {
                text-align: center;
                width: 100px;
            }

            th.col-hasNoInventoryFeedText, td.col-hasNoInventoryFeedText { width: 100px; }

            th.col-dcItemNumber, td.col-dcItemNumber { width: 150px; }

            th.col-notes, td.col-notes { width: 330px; }

            label { font-weight: bold; }

        </style>

        <title>DC Item Onboarding</title>
    </head>
    <body>
        <form id="dcItemForm" runat="server">
            <div id="divCards" class="container">
                <div id="divCard1">
                    <div id="divCard1Header" style="height: 200px;">
                        <h3>Assign DCs</h3>
                        <div class="subheading">Assign the DC's that will carry the item by clicking on the box next to each DC in the Assign column. Press next when complete.</div>
                        <br/>
                        <label>Family Restaurant Group</label>
                        <br/>
                        <label>77589-24 ounce waxed paper drinking cups (Carrie's Cups)</label>
                    </div>
                    <div style="height: 300px; overflow: auto;">
                    
                        <table class="table-striped table-hover table-bordered table-condensed">
                            <thead>
                                <tr>
                                    <th class="col-isAssigned"><input type="checkbox" id="chkMainIsAssigned" name="chkMainIsAssigned" onchange="assignAll(); " /></th>
                                    <th class="col-name-skinny">Name</th>
                                </tr>
                            </thead>
                            <tbody data-bind="foreach: DcItems">
                                <tr>
                                    <td class="col-isAssigned"><input type="checkbox" data-bind="checked: IsAssigned" name="chkIsAssigned" /></td>
                                    <td class="col-name-skinny" data-bind="text: Name"></td>
                                </tr>    
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="divCard2">
                    <div id="divCard2Header" style="height: 200px;">
                        <h3>Enter Data Feed Date</h3>
                        <div class="subheading">Enter the Data Feed No Later Than date. Press next when complete.</div>
                        <br/>
                        <table style="width: 100%;">
                            <tr>
                                <td style="vertical-align: baseline;"><label>Family Restaurant Group</label></td>
                                <td style="vertical-align: baseline; width: 650px; text-align: right;">
                                    <label>Data Feed No Later Than &nbsp;<input type="text" id="txtMainFeedByDate" style="vertical-align:baseline;" data-date-format="mm/dd/yyyy" />&nbsp;<button type="button" class="btn btn-primary" id="btnApplyMainFeedByDate" onclick=" javascript:applyMainFeedByDate(); ">Apply to Assigned DC's</button></label>
                                </td>
                            </tr>
                        </table>
                        <label>77589-24 ounce waxed paper drinking cups (Carrie's Cups)</label>
                    </div>
                    <div style="height: 300px; overflow: auto;">
                        
                        <table class="table-striped table-hover table-bordered table-condensed">
                            <thead>
                                <tr>
                                    <th class="col-name">Name</th>
                                    <th class="col-feedByDate">Data Feed No Less Than</th>
                                </tr>
                            </thead>
                            <tbody data-bind="foreach: DcItems">
                                <tr data-bind="visible: IsAssigned">
                                    <td class="col-name" data-bind="text: Name" ></td>
                                    <td class="col-feedByDate"><input type="text" data-bind="value: FeedByDate" name="txtFeedByDate" data-date-format="mm/dd/yyyy" /></td>
                                </tr>    
                            </tbody>
                        </table>
                         
                    </div>
                </div>
                <div id="divCard3">
                    <div id="divCard3Header" style="height: 200px;">
                        <h3>DC Inventory Feed Status</h3>
                        <div class="subheading">Indivate any DC's that will not be providing an inventory data feed by selecting "No Feed" next to the DC. Press next when complete.</div>
                        <br/>
                        <label>Family Restaurant Group</label>
                        <br/>
                        <label>77589-24 ounce waxed paper drinking cups (Carrie's Cups)</label>
                    </div>
                    <div style="height: 300px; overflow: auto;">
                        <table class="table-striped table-hover table-bordered table-condensed">
                            <thead>
                                <tr>
                                    <th class="col-name">Name</th>
                                    <th class="col-feedByDate">Data Feed No Less Than</th>
                                    <th class="col-hasNoInventoryFeed">No DC Inventory Feed</th>
                                </tr>
                            </thead>
                            <tbody data-bind="foreach: DcItems">
                                <tr data-bind="visible: IsAssigned">
                                    <td class="col-name" data-bind="text: Name"></td>
                                    <td class="col-feedByDate"><input type="text" data-bind="value: FeedByDate" disabled="disabled" name="txtFeedByDate" data-date-format="mm/dd/yyyy" /></td>
                                    <td class="col-hasNoInventoryFeed"><input type="checkbox" data-bind="checked: HasNoInventoryFeed" name="chkHasNoInventoryFeed" /></td>
                                </tr>    
                            </tbody>
                        </table>
                                
                    </div>
                </div>
                <div id="divCard4">
                    <div id="divCard4Header" style="height: 200px;">
                        <h3>Enter DC Item Number</h3>
                        <div class="subheading">If you have the DC Item Number, enter it and press Next. If not, press Next to advance.</div>
                        <br/>
                        <table>
                            <tr>
                                <td style="width: 50%"><label>Family Restaurant Group</label></td>
                                <td style="width: 50%"><label>DC Item Number&nbsp;
                                    <input type="text" id="txtMainDcItemNumber" style="vertical-align:baseline;" />&nbsp;
                                    <button type="button" class="btn btn-primary" id="Button1" onclick=" javascript:applyMainDcItemNumber(); ">Apply to DC's</button></label>
                                </td>
                            </tr>
                        </table>
                        <label>77589-24 ounce waxed paper drinking cups (Carrie's Cups)</label>
                    </div>
                    <div style="height: 300px; overflow: auto;">
                        <table class="table-striped table-hover table-bordered table-condensed">
                            <thead>
                                <tr>
                                    <th class="col-name">Name</th>
                                    <th class="feedByDate">Data Feed No Less Than</th>
                                    <th class="col-hasNoInventoryFeedText">No DC Inventory Feed</th>
                                    <th class="col-dcItemNumber">DC Item No.</th>
                                </tr>
                            </thead>
                            <tbody data-bind="foreach: DcItems">
                                <tr data-bind="visible: IsAssigned">
                                    <td class="col-name" data-bind="text: Name" ></td>
                                    <td class="col-feedByDate"><input type="text" data-bind="value: FeedByDate" disabled="disabled" name="txtFeedByDate" data-date-format="mm/dd/yyyy" /></td>
                                    <td class="col-hasNoInventoryFeedText" data-bind="text: HasNoInventoryFeedText" ></td>
                                    <td class="col-dcItemNumber"><input type="text" data-bind="value: DcItemNumber" name="txtDcItemNumber" maxlength="20" /></td>
                                </tr>    
                            </tbody>
                        </table>
                    </div>
                </div>
                <div id="divCard5">
                    <div id="divCard5Header" style="height: 200px;">
                        <h3>Enter Notes & Finish</h3>
                        <div class="subheading">Enter any Notes related to the item for each DC.<br/>
                            Review information to ensure it is correct. Use the Previous button to return and edit information. Press Finish when complete.</div>
                        <br/>
                        <label>Family Restaurant Group</label>
                        <br/>
                        <label>77589-24 ounce waxed paper drinking cups (Carrie's Cups)</label>
                    </div>
                    <div style="height: 300px; overflow: auto;">
                        <table class="table-striped table-hover table-bordered table-condensed">
                            <thead>
                                <tr>
                                    <th class="col-name">Name</th>
                                    <th class="col-feedByDate">Data Feed No Less Than</th>
                                    <th class="col-hasNoInventoryFeedText">No DC Inventory Feed</th>
                                    <th class="col-dcItemNumber">DC Item No.</th>
                                    <th class="col-notes">Notes</th>
                                </tr>
                            </thead>
                            <tbody data-bind="foreach: DcItems">
                                <tr data-bind="visible: IsAssigned">
                                    <td class="col-name" data-bind="text: Name"></td>
                                    <td class="col-feedByDate"><input type="text" data-bind="value: FeedByDate" disabled="disabled" name="txtFeedByDate" data-date-format="mm/dd/yyyy" /></td>
                                    <td class="col-hasNoInventoryFeedText" data-bind="text: HasNoInventoryFeedText" ></td>
                                    <td class="col-dcItemNumber" data-bind="text: DcItemNumber"></td>
                                    <td class="col-notes"><input type="text" data-bind="value: Notes" style="width: 310px;" /></td>
                                </tr>    
                            </tbody>
                        </table>
                    </div>
                </div>
                <br/>
                <div style="text-align: right;">
                    <button type="button" class="btn btn-danger" id="btnPrev" onclick=" javascript:decrementCardNumber(); ">Previous</button>
                    <button type="button" class="btn btn-primary" id="btnNext" onclick=" javascript:incrementCardNumber(); ">Next</button>
                    <button type="button" class="btn btn-success" id="btnSave" onclick=" javascript:save(); ">Finish</button>
                </div>    
            </div>
        </form>
        
        <script src="Scripts/knockout-3.1.0.js" type="text/javascript"> </script>
        <script src="Scripts/jquery-2.1.0.min.js" type="text/javascript"> </script>
        <script src="Scripts/jquery.validate.js" type="text/javascript"></script>
        <script src="Scripts/bootstrap-datepicker.js" type="text/javascript"> </script>
        <script type="text/javascript">
            
            // Global instance of view model
            var vm = new DcItemsViewModel();

            // Initial setup
            $(function() {
                $.each(getInitialDcItems(), function(i, item) {
                    if (item != undefined) {
                        vm.DcItems.push(new DcItem(item));
                    }
                });
                // Various UI setup now that the dc items have been populated in the view model (and bound to the page elements)
                $("input[name='txtFeedByDate']", document.getElementById('divCards')).datepicker({
                    autoclose: true,
                    startDate: "dateToday"
                });
                $("#txtMainFeedByDate").datepicker({
                    autoclose: true,
                    startDate: "dateToday"
                });
               
                initializeCard(vm.CardNumber());
            });
            


            // bind view model to page elements
            ko.applyBindings(vm);

            // VIEW MODEL definition

            function DcItemsViewModel() {
                var self = this;
                self.CardNumber = ko.observable(1);
                self.DcItems = ko.observableArray([]);
            }

            ;

            function DcItem(data) {
                var self = this;
                self.IsAssigned = ko.observable(false);
                self.Name = ko.observable(data.Name);
                self.FeedByDate = ko.observable(data.FeedByDate);
                self.HasNoInventoryFeed = ko.observable(data.HasNoInventoryFeed);
                self.DcItemNumber = ko.observable(data.DcItemNumber);
                self.Notes = ko.observable(data.Notes);
                self.HasNoInventoryFeedText = ko.computed(function() {
                    if (self.HasNoInventoryFeed()) {
                        return "No Feed";
                    }
                    return "";
                });
                
                self.IsAssigned.subscribe(function () { alert("Now we need to check to see if we shold enable/disable btnNext!"); });
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
                this.vm.CardNumber(this.vm.CardNumber() + 1);
                initializeCard(this.vm.CardNumber());
            }

            function decrementCardNumber() {

                this.vm.CardNumber(this.vm.CardNumber() - 1);
                initializeCard(this.vm.CardNumber());
            }

            function initializeCard(cardNumber) {
                showProperCard(cardNumber);
                showProperButtons(cardNumber);
            }

            function showProperCard(cardNumber) {
                for (var i = 1; i <= 5; i++) {
                    var divCardId = "divCard" + i;
                    $("#" + divCardId).hide();
                    if (cardNumber == i) {
                        $("#" + divCardId).show();
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
                
                for (var i = 0; i < vm.DcItems().length; i++) {
                    vm.DcItems()[i].FeedByDate(mainFeedByDate);
                }
            }

            function applyMainDcItemNumber() {
                var mainDcItemNumber = $("#txtMainDcItemNumber").val();

                for (var i = 0; i < vm.DcItems().length; i++) {
                    vm.DcItems()[i].DcItemNumber(mainDcItemNumber);
                }
            }

            function assignAll() {
                var checked = $("#chkMainIsAssigned").is(':checked');
                
                for(var i = 0; i < vm.DcItems().length; i++) {
                    vm.DcItems()[i].IsAssigned(checked);
                }
            }

            function isDate(val) {
                var d = new Date(val);
                return !isNaN(d.valueOf());
            }

        </script>
        
    </body>
</html>