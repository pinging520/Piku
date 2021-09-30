using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Piku_01.Models
{
    public class member
    {
        public int id { get; set; }
        public string name { get; set; }

        public static List<member> ShowData = new List<member>();
        public static List<member> Data = new List<member>();
        public static List<member> newitem = new List<member>();
        public static List<member> temp = new List<member>();
    }

    public class Cont
    {
        public static int con { get; set; }
        public static bool sec { get; set; }
        public static int num { get; set; }

        public static void C(int _id)
        {
            if (member.newitem[0].id == _id)
            {
                member.newitem.RemoveAt(0);
            }
            else
            {
                member.newitem.RemoveAt(1);
            }

            if (member.temp.Find(x => x.id == member.newitem[0].id) == null)
            {
                if (sec == true)
                {
                    member.temp.Insert(con, new member() { id = member.newitem[0].id, name = member.newitem[0].name });
                    con++;
                }
                else
                { 
                    member.temp.Add(new member() { id = member.newitem[0].id, name = member.newitem[0].name });
                }
            }

            num++;

            if (num < member.Data.Count)
            {
                member.newitem.Add(new member() { id = member.Data[num].id, name = member.Data[num].name });
            }
            else
            {
                foreach(member _member in member.temp) { 
                var a = member.Data.Find(x => x.id == _member.id);
                member.Data.Remove(a);
                }
                
                member.newitem.Clear();
                for (int i = 0; i < 2; i++)
                {
                    if ( i < member.Data.Count)
                    {
                        member.newitem.Add(new member() { id = member.Data[i].id, name = member.Data[i].name });
                    }
                }

                num = 1;
                sec = true;
                con = 0;
            }
        }

        public static int Basic(string text)
        {
            if (text == null)
            {
                return 0;
            }
            int finish = 100 / member.ShowData.Count;
            int temp = member.temp.Count;
            int _Basic = finish * temp;

            return _Basic;
        }
    }
}