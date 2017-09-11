using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryProject.EFDF
{
    public class DAL
    {
        //Primary key is must in Child Table also so that related child object data cane be saved in child table
        public List<Gender> GenderData()
        {
            using (WEBFORMSEntities dctx = new WEBFORMSEntities())
            {
                return dctx.Genders.ToList<Gender>();
            }
        }

        public List<GenderLinks> GenderlinkedTopicData(int GenderType)
        {
            using (WEBFORMSEntities dctx = new WEBFORMSEntities())
            {
                return dctx.GenderlinkedTopics.Where(i => i.GID == GenderType).Select(i => new GenderLinks { ID = i.ID, Topic = i.Topic }).ToList<GenderLinks>();
            }
        }
        public void CreateItem(ItemData ie)
        {
            using (WEBFORMSEntities dctx = new WEBFORMSEntities())
            {
                dctx.ItemDatas.Add(ie);
                dctx.SaveChanges();
            }
        }
        public int UpdateItem(ItemData ie)
        {
            using (WEBFORMSEntities dctx = new WEBFORMSEntities())
            {
                ItemData olddata = dctx.ItemDatas.Find(ie.ProfileDetId);
                olddata.ItemName = ie.ItemName;
                dctx.Entry(olddata).State = System.Data.Entity.EntityState.Modified;
                return dctx.SaveChanges();//Returns the number of affected rows[int]
            }
        }
        public int DeteteItem(int ProfileDetId)
        {
            using (WEBFORMSEntities dctx = new WEBFORMSEntities())
            {
                ItemData dd = dctx.ItemDatas.Find(ProfileDetId);
                dctx.ItemDatas.Remove(dd);
                dctx.Entry(dd).State = System.Data.Entity.EntityState.Deleted;
                return dctx.SaveChanges();//Returns the number of affected rows[int]
            }
        }
        public IEnumerable<ItemData> GetAllItemsbyFromDate(DateTime fd1, DateTime fd2, string sortColumn)
        {
            //string sortColumn -- Added this parameter for Gridview sorting in Object datasource.. Grudview allows direct sortin gin SQLDatasource and dataset only , so some explicit handling required for Object datasource
            //https://blog.michaelckennedy.net/2008/07/02/dynamic-data-access-with-linq/ This has a simple way of workaround for this
            //I had issue in forming dynamic linq queries. it helped to solve with simple trick of using enum for propertoes to help in ording 
            //return ieie = dctx.ItemDatas.Where(d => d.FromDate >= fd1 & d.FromDate <= fd2).OrderBy(sortColumn).ToList<ItemData>();
            //return ieie = dctx.ItemDatas.Where(d => d.FromDate >= fd1 & d.FromDate <= fd2).OrderBy(c => sortColumn).ToList<ItemData>();
            //return dctx.ItemDatas.Where(d => d.FromDate >= fd1 & d.FromDate <= fd2).OrderBy(c => c.GetType().GetProperty(sortColumn).GetValue(c,null).ToString()).ToList<ItemData>();
            //return dctx.ItemDatas.Where(d => d.FromDate >= fd1 & d.FromDate <= fd2).OrderBy(c => sortpropbyreflection.GetValue(c, null)).ToList<ItemData>();
            //But able to sort always in ASC only , for dual way not tried - for that can consider ADO.NET as in Kudreference
            using (WEBFORMSEntities dctx = new WEBFORMSEntities())
            {
                if (!string.IsNullOrEmpty(sortColumn))
                {
                    ItemOrderProp prp = (ItemOrderProp)Enum.Parse(typeof(ItemOrderProp), sortColumn.Replace(" ", ""));
                    switch (prp)
                    {
                        case ItemOrderProp.AvailableCount:
                            return dctx.ItemDatas.Where(d => d.FromDate >= fd1 & d.FromDate <= fd2).OrderBy(c => c.AvailableCount).ToList<ItemData>();
                        case ItemOrderProp.FromDate:
                            return dctx.ItemDatas.Where(d => d.FromDate >= fd1 & d.FromDate <= fd2).OrderBy(c => c.FromDate).ToList<ItemData>();
                    }

                }

                return dctx.ItemDatas.Where(d => d.FromDate >= fd1 & d.FromDate <= fd2).OrderBy(c => c.ProfileDetId).ToList<ItemData>();
            }
        }
        public IEnumerable<ItemData> GetAllItems()
        {
            using (WEBFORMSEntities dctx = new WEBFORMSEntities())
            {
                return dctx.ItemDatas.ToList<ItemData>();
            }
        }
        public IEnumerable<LessPropItemData> GetLessItemsProp()
        {
            using (WEBFORMSEntities dctx = new WEBFORMSEntities())
            {
                return dctx.ItemDatas.Select(c => new LessPropItemData { ProfDetID = c.ProfileDetId, IName = c.ItemName, IDesc = c.ItemDescription, AvailableCount = c.AvailableCount, FromDate = c.FromDate }).Take(5).ToList<LessPropItemData>();
            }
        }
        public IEnumerable<GRIDSIMPLEEDIT> GetEDITLessItemsProp()
        {
            using (WEBFORMSEntities dctx = new WEBFORMSEntities())
            {
                return dctx.GRIDSIMPLEEDITs.ToList();
            }
        }
        public void GetEDITUpdateLessItemsProp(GRIDSIMPLEEDIT GE)
        {
            using (WEBFORMSEntities dctx = new WEBFORMSEntities())
            {
                //GRIDSIMPLEEDIT GEtu=dctx.GRIDSIMPLEEDITs.Find(ID);
                //GEtu.TBOX = GE.TBOX;
                //GEtu.CB = GE.CB;
                //GEtu.RB = GE.RB;
                //GEtu.DD = GE.DD;
                //dctx.Entry(GEtu).State = System.Data.Entity.EntityState.Modified;
                dctx.Entry(GE).State = System.Data.Entity.EntityState.Modified;
                dctx.SaveChanges();
            }
        }
        public static IEnumerable<IDataforNestedGrid> GetMultiInterests()
        {
            using (WEBFORMSEntities dctx = new WEBFORMSEntities())
            {
                return dctx.ItemDatas.Select(s => new IDataforNestedGrid
                {
                    ProfileDetId = s.ProfileDetId,
                    ItemName = s.ItemName

                }).ToList<IDataforNestedGrid>();
            }
        }


    }
    public class GenderLinks
    {
        public int ID { get; set; }
        public string Topic { get; set; }
    }
    public enum ItemOrderProp
    {
        AvailableCount, ConfirmText1, ConfirmText2, Continent, Country, Email, FileDoc, FromDate, Gender
        , InterestedTopicMulti, ItemDescription, ItemImage,
        ItemInterests,
        ItemIntroDate,
        ItemName,
        ItemType,
        ProfileDetId,
        PublishDate,
        ToDate
    }
    public class IDataforNestedGrid
    {
        public int ProfileDetId { get; set; }
        public string ItemName { get; set; }

        public List<ItemInterest> MultiInterest
        {
            get
            {
                using (WEBFORMSEntities dctx = new WEBFORMSEntities())
                {
                    return dctx.ItemInterests.Where(i => i.ProfileDetId == this.ProfileDetId).ToList<ItemInterest>();
                }
            }
        }
    }

    public class LessPropItemData
    {
        public int ProfDetID { get; set; }
        public string IName { get; set; }
        public string IDesc { get; set; }
        public decimal? AvailableCount { get; set; }
        public DateTime? FromDate { get; set; }
    }

}
