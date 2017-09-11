using ClassLibraryProject.EFDF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryProject
{
    
    public class DataContainer
    {
        public string ItemName { get; set; }
        public string ItemDescription { get; set; }
        public string ItemType { get; set; }
        public int AvailableCount { get; set; }
        public DateTime FromDate { get; set; }
        public DateTime ToDate { get; set; }
        public string Email { get; set; }
        public virtual ICollection<GeneralTopics> InterestedTopicChecks { get; set; }
        public GenderT Gender { get; set; }

        //public Continent Continent { get; set; }

        //public Country Country { get; set; }
        public string InterestedTopicMulti { get; set; }
        public byte[] FileDoc { get; set; }
        public byte[] ItemImage { get; set; }
    }
    public class GeneralTopics
    {
        public int TopicId { get; set; }
        public string TopicName { get; set; }
    }
    public enum GenderT
    {
        Male,Female
    }
    
}
