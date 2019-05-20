using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FootWear.Models.Entity;
namespace FootWear.Models.Functions
{
    public class SizeF
    {
        private MyDB context;
        public SizeF()
        {
            context = new MyDB();
        }
        

        //tra ve 
        public IQueryable<C_SIZE> C_SIZEs
        {
            get { return context.C_SIZE; }
        }

        //tra ve doi tuong  khi biet khoa

        public C_SIZE FindEntity(int ID_C_SIZE)
        {
            C_SIZE dbC_SIZE = context.C_SIZE.Find(ID_C_SIZE);
            return dbC_SIZE;
        }


        //them 1 doi tuong 

        public int? AddC_SIZE(C_SIZE sz)
        {

            C_SIZE dbEntry = context.C_SIZE.Find(sz.ID_SIZE);
            if (dbEntry != null)
            {
                return null;
            }
            context.C_SIZE.Add(sz);
            context.SaveChanges();
            return sz.ID_SIZE;

        }

        //sua 1 doi tuong

        public int? EditC_SIZE(int ID_SIZE, C_SIZE sz)
        {
            C_SIZE dbEntry = context.C_SIZE.Find(ID_SIZE);
            if (dbEntry == null)
            {
                return null;
            }
            dbEntry.SIZE_NAME = sz.SIZE_NAME;
            context.SaveChanges();
            return sz.ID_SIZE;
        }

        // xoa 1 doi tuong

        public int? DeleteSize(int ID_SIZE)
        {
            C_SIZE dbEntry = context.C_SIZE.Find(ID_SIZE);
            if (dbEntry == null)
            {
                return null;
            }
            context.C_SIZE.Remove(dbEntry);
            context.SaveChanges();
            return ID_SIZE;
        }
    }
}