using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FootWear.Models.Entity;
namespace FootWear.Models.Functions
{
    public class BrandF
    {
        private MyDB context; 
        public BrandF()
        {
            context = new MyDB();
        }
        

        //tra ve 
        public IQueryable<BRAND> BRANDs
        {
            get { return context.BRANDs; }
        }

        //tra ve doi tuong  khi biet khoa

        public BRAND FindEntity(int ID_BRAND)
        {
            BRAND dbBrand = context.BRANDs.Find(ID_BRAND);
            return dbBrand;
        }


        //them 1 doi tuong 

        public int? AddBrand(BRAND br)
        {
           
            BRAND dbEntry = context.BRANDs.Find(br.ID_BRAND);
            if (dbEntry != null)
            {
                return null;
            }
            context.BRANDs.Add(br);
            context.SaveChanges();
            return br.ID_BRAND;
 
        }

        //sua 1 doi tuong

        public int? EditBrand(int ID_BRAND, BRAND br)
        {
            BRAND dbEntry = context.BRANDs.Find(ID_BRAND);
            if (dbEntry == null)
            {
                return null;
            }
            dbEntry.BRAND_NAME = br.BRAND_NAME;
            context.SaveChanges();
            return br.ID_BRAND;
        }

        // xoa 1 doi tuong

        public int? DeleteBrand(int ID_BRAN)
        {
            BRAND dbEntry = context.BRANDs.Find(ID_BRAN);
            if (dbEntry == null)
            {
                return null;
            }
            context.BRANDs.Remove(dbEntry);
            context.SaveChanges();
            return ID_BRAN;
        }
    }
}