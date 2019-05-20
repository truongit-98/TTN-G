using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FootWear.Models.Entity;
namespace FootWear.Models.Functions
{
    public class ShoesF
    {
        private MyDB context;
        public ShoesF()
        {
            context = new MyDB();
        }


        //tra ve 
        public IQueryable<SHORE> SHORES
        {
            get { return context.SHORES; }
        }

        //tra ve doi tuong  khi biet khoa

        public SHORE FindEntity(int ID)
        {
            SHORE dbSHORE = context.SHORES.Find(ID);
            return dbSHORE;
        }


        //them 1 doi tuong 

        public int? AddSHORE(SHORE br)
        {

            SHORE dbEntry = context.SHORES.Find(br.ID);
            if (dbEntry != null)
            {
                return null;
            }
            context.SHORES.Add(br);
            context.SaveChanges();
            return br.ID;

        }

        //sua 1 doi tuong

        public int? EditSHORE(int ID, SHORE br)
        {
            SHORE dbEntry = context.SHORES.Find(ID);
            if (dbEntry == null)
            {
                return null;
            }
            dbEntry.NAME = br.NAME;
            dbEntry.IMG = br.IMG;
            dbEntry.SL = br.SL;
            dbEntry.ID_SIZE = br.ID_SIZE;
            dbEntry.ID_COLOR = br.ID_COLOR;
            dbEntry.ID_BRAND = br.ID_BRAND;
            dbEntry.ID_TYPE = br.ID_TYPE;
            dbEntry.DESCRIPTIONS = br.DESCRIPTIONS;
            dbEntry.C_SIZE = br.C_SIZE;
            dbEntry.TYPE = br.TYPE;
            dbEntry.PRICE = br.PRICE;
            context.SaveChanges();
            return br.ID;
        }

        // xoa 1 doi tuong

        public int? DeleteSHORE(int ID_BRAN)
        {
            SHORE dbEntry = context.SHORES.Find(ID_BRAN);
            if (dbEntry == null)
            {
                return null;
            }
            context.SHORES.Remove(dbEntry);
            context.SaveChanges();
            return ID_BRAN;
        }
    }
}