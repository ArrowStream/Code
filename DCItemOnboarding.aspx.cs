using System;
using System.Collections.Generic;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;

namespace DCItemOnboarding
{
    public partial class DCItemOnboarding : System.Web.UI.Page
    {

        public string InitialDCItems
        {
            get
            {
                var dcItems = (new List<DCItem>
                    {
                        new DCItem
                            {
                                IsAssigned = false,
                                Name = "Item 1",
                                DcItemNumber = string.Empty,
                                FeedByDate = null,
                                HasNoInventoryFeed = false,
                                Notes = ""
                            },
                        new DCItem
                            {
                                IsAssigned = false,
                                Name = "Item 2",
                                DcItemNumber = string.Empty,
                                FeedByDate = null,
                                HasNoInventoryFeed = false,
                                Notes = ""
                            },
                        new DCItem
                            {
                                IsAssigned = false,
                                Name = "Item 3",
                                DcItemNumber = string.Empty,
                                FeedByDate = null,
                                HasNoInventoryFeed = false,
                                Notes = ""
                            },
                        new DCItem
                            {
                                IsAssigned = false,
                                Name = "Item 3",
                                DcItemNumber = string.Empty,
                                FeedByDate = null,
                                HasNoInventoryFeed = false,
                                Notes = ""
                            },
                        new DCItem
                            {
                                IsAssigned = false,
                                Name = "Item 3",
                                DcItemNumber = string.Empty,
                                FeedByDate = null,
                                HasNoInventoryFeed = false,
                                Notes = ""
                            },
                        new DCItem
                            {
                                IsAssigned = false,
                                Name = "Item 3",
                                DcItemNumber = string.Empty,
                                FeedByDate = null,
                                HasNoInventoryFeed = false,
                                Notes = ""
                            },
                        new DCItem
                            {
                                IsAssigned = false,
                                Name = "Item 3",
                                DcItemNumber = string.Empty,
                                FeedByDate = null,
                                HasNoInventoryFeed = false,
                                Notes = ""
                            },
                        new DCItem
                            {
                                IsAssigned = false,
                                Name = "Item 3",
                                DcItemNumber = string.Empty,
                                FeedByDate = null,
                                HasNoInventoryFeed = false,
                                Notes = ""
                            },
                        new DCItem
                            {
                                IsAssigned = false,
                                Name = "Item 3",
                                DcItemNumber = string.Empty,
                                FeedByDate = null,
                                HasNoInventoryFeed = false,
                                Notes = ""
                            },
                        new DCItem
                            {
                                IsAssigned = false,
                                Name = "Item 3",
                                DcItemNumber = string.Empty,
                                FeedByDate = null,
                                HasNoInventoryFeed = false,
                                Notes = ""
                            },
                        new DCItem
                            {
                                IsAssigned = false,
                                Name = "Item 3",
                                DcItemNumber = string.Empty,
                                FeedByDate = null,
                                HasNoInventoryFeed = false,
                                Notes = ""
                            }
                    }).ToArray();

                var js = new JavaScriptSerializer();
                return js.Serialize(dcItems);
            }
        }

        [WebMethod]
        public static bool SaveDCItems(string jsmodel)
        {
            // TODO: Deserialize, validate, and save the data to the database
            var js = new JavaScriptSerializer();
            var dcItems = js.Deserialize<List<DCItem>>(jsmodel);
            return true;
        }
    }
}