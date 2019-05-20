using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FootWear.Models.Entity;
namespace FootWear.Models.Functions
{
    public class TypeF
    {
        private MyDB context;
        public TypeF()
        {
            context = new MyDB();
        }


        //tra ve 
        public IQueryable<TYPE> TYPEs
        {
            get { return context.TYPEs; }
        }

        //tra ve doi tuong  khi biet khoa

        public TYPE FindEntity(int ID_TYPE)
        {
            TYPE dbType = context.TYPEs.Find(ID_TYPE);
            return dbType;
        }


        //them 1 doi tuong 

        public int? AddTYPE(TYPE type)
        {

            TYPE dbEntry = context.TYPEs.Find(type.ID_TYPE);
            if (dbEntry != null)
            {
                return null;
            }
            context.TYPEs.Add(type);
            context.SaveChanges();
            return type.ID_TYPE;

        }

        //sua 1 doi tuong

        public int? EditTYPE(int ID_TYPE, TYPE type)
        {
            TYPE dbEntry = context.TYPEs.Find(ID_TYPE);
            if (dbEntry == null)
            {
                return null;
            }
            dbEntry.TYPE_NAME = type.TYPE_NAME;
            context.SaveChanges();
            return type.ID_TYPE;
        }

        // xoa 1 doi tuong

        public int? DeleteTYPE(int ID_TYPE)
        {
            TYPE dbEntry = context.TYPEs.Find(ID_TYPE);
            if (dbEntry == null)
            {
                return null;
            }
            context.TYPEs.Remove(dbEntry);
            context.SaveChanges();
            return ID_TYPE;
        }
    }
}