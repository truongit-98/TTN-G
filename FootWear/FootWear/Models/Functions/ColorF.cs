using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FootWear.Models.Entity;
namespace FootWear.Models.Functions
{
    public class ColorF
    {

        private MyDB context;
        public ColorF()
        {
            context = new MyDB();
        }

        // tra ve colors

        public IQueryable<COLOR> COLORs
        {
            get { return context.COLORs; }
        }

        //tra ve doi tuong khi biet khoa

        public COLOR FindColor(int ID_COLOR)
        {
            COLOR dbcolor = context.COLORs.Find(ID_COLOR);
            return dbcolor;
        }
         //them

        public int? AddColor(COLOR color)
        {
            COLOR dbcolor = context.COLORs.Find(color.ID_COLOR);
            if (dbcolor != null)
            {
                return null;
            }
            context.COLORs.Add(color);
            context.SaveChanges();
            return color.ID_COLOR;
        }
       
        //sua mot doi tuong 

        public int? EditColor(int id, COLOR color)
        {
            COLOR dbcolor = context.COLORs.Find(id);
            if (dbcolor == null)
            {
                return null;
            }
            dbcolor.COLOR_NAME = color.COLOR_NAME;
            context.SaveChanges();
            return color.ID_COLOR;
        }
        //xoa mot doi tuong

        public int? DeleteColor(int id)
        {
            COLOR dbcolor = context.COLORs.Find(id);
            if (dbcolor == null)
            {
                return null;
            }
            context.COLORs.Remove(dbcolor);
            context.SaveChanges();
            return dbcolor.ID_COLOR;
        }

  

        
    }
}