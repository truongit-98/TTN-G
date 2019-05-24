using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FootWear.Models.Entity;
namespace FootWear.Models.Functions
{
    public class CustomerF
    {
        private MyDB context;
        public CustomerF()
        {
            context = new MyDB();
        }


        //tra ve 
        public IQueryable<CUSTOMER> CUSTOMERs
        {
            get { return context.CUSTOMERs; }
        }

        //tra ve doi tuong  khi biet khoa

        public CUSTOMER FindEntity(int ID_CUSTOMER)
        {
            CUSTOMER dbCUSTOMER = context.CUSTOMERs.Find(ID_CUSTOMER);
            return dbCUSTOMER;
        }


        //them 1 doi tuong 

        public int? AddCUSTOMER(CUSTOMER br)
        {

            CUSTOMER dbEntry = context.CUSTOMERs.Find(br.ID_CUSTOMER);
            if (dbEntry != null)
            {
                return null;
            }
            context.CUSTOMERs.Add(br);
            context.SaveChanges();
            return br.ID_CUSTOMER;

        }

        //sua 1 doi tuong

        public int? EditCUSTOMER(int ID_CUSTOMER, CUSTOMER br)
        {
            CUSTOMER dbEntry = context.CUSTOMERs.Find(ID_CUSTOMER);
            if (dbEntry == null)
            {
                return null;
            }
            dbEntry.CUSTOMER_NAME = br.CUSTOMER_NAME;
            dbEntry.ADDRESS = br.ADDRESS;
            dbEntry.EMAIL = br.EMAIL;
            dbEntry.PHONE = br.PHONE;
            context.SaveChanges();
            return br.ID_CUSTOMER;
        }

        // xoa 1 doi tuong

        public int? DeleteCUSTOMER(int ID_BRAN)
        {
            CUSTOMER dbEntry = context.CUSTOMERs.Find(ID_BRAN);
            if (dbEntry == null)
            {
                return null;
            }
            context.CUSTOMERs.Remove(dbEntry);
            context.SaveChanges();
            return ID_BRAN;
        }
    }
}