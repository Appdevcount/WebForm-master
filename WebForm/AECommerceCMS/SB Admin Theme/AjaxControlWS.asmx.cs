using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebForm.AECommerceCMS.SB_Admin_Theme
{
    /// <summary>
    /// Summary description for CascadingDropdownFill
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class CascadingDropdownFill : System.Web.Services.WebService
    {

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public CascadingDropDownNameValue[] CascDD1Call(string knownCategoryValues,string category)
        {
            CascadingDropDownNameValue[] CascDD1NV = new CascadingDropDownNameValue[2];//Its better to set this array size exactly as refered from source/DB
            //Can be from DB as ID,Val
            CascDD1NV[0] = new CascadingDropDownNameValue("A", "A");
            CascDD1NV[1] = new CascadingDropDownNameValue("B", "B");

            //string query = "SELECT CountryName, CountryId FROM Countries";
            //List<CascadingDropDownNameValue> countries = GetData(query);
            //return countries.ToArray();

            return CascDD1NV;
        }
        [WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public CascadingDropDownNameValue[] CascDD2Call(string knownCategoryValues, string category)
        {
            StringDictionary DD1NameValue = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);
            string CascDD1Value = DD1NameValue["CascDD1"];

            //Can write SQL query to pull data based on DD1
            List<CascadingDropDownNameValue> CascDD2NV = new List<CascadingDropDownNameValue>();
            if(CascDD1Value=="A")
            {
                CascDD2NV.Add(new CascadingDropDownNameValue("A1", "A1"));
                CascDD2NV.Add(new CascadingDropDownNameValue("A2", "A2"));
            }
            else if(CascDD1Value=="B")
            {
                CascDD2NV.Add(new CascadingDropDownNameValue("B1", "B1"));
                CascDD2NV.Add(new CascadingDropDownNameValue("B2", "B2"));
            }

            //string country = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues)["CountryId"];
            //string query = string.Format("SELECT StateName, StateId FROM States WHERE CountryId = {0}", country);
            //List<CascadingDropDownNameValue> states = GetData(query);
            //return states.ToArray();

            return CascDD2NV.ToArray();
        }

        [WebMethod]
        //[System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public string[] AutoComplete(string prefixText,int count,string contextKey)
        {
            string[] PredefinedTexts = { "aaaaefef", "abcaddd", "aggwrgwrg", "aaasfaaa", "abbbbbbb" };
            string[] Suggestions=  PredefinedTexts.Where(i => i.StartsWith(prefixText.ToLower())).ToArray<string>();
            return Suggestions;//
        }
        [WebMethod]
        //[System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public string[] AutoCompleteJQUI(string term)
        {
            string[] PredefinedTexts = { "aaaaefef", "abcaddd", "aggwrgwrg", "aaasfaaa", "abbbbbbb" };
            string[] Suggestions = PredefinedTexts.Where(i => i.StartsWith(term.ToLower())).ToArray<string>();
            return Suggestions;//
        }
    }
}
