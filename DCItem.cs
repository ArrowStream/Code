using System;

namespace DCItemOnboarding
{
    [Serializable]
    public class DCItem
    {
        public bool IsAssigned { get; set; }
        public string Name { get; set; }
        public DateTime? FeedByDate { get; set; }
        public bool HasNoInventoryFeed { get; set; }
        public string DcItemNumber { get; set; }
        public string Notes { get; set; }

    }
}