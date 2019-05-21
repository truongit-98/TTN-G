namespace FootWear.Models.Entity
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class MyDB : DbContext
    {
        public MyDB()
            : base("name=MyDB")
        {
        }

        public virtual DbSet<C_SIZE> C_SIZE { get; set; }
        public virtual DbSet<BRAND> BRANDs { get; set; }
        public virtual DbSet<COLOR> COLORs { get; set; }
        public virtual DbSet<CUSTOMER> CUSTOMERs { get; set; }
        public virtual DbSet<ORDER> ORDERs { get; set; }
        public virtual DbSet<ORDER_DETAIL> ORDER_DETAIL { get; set; }
        public virtual DbSet<SHORE> SHORES { get; set; }
        public virtual DbSet<TYPE> TYPEs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<C_SIZE>()
                .Property(e => e.SIZE_NAME)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<BRAND>()
                .Property(e => e.BRAND_NAME)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<COLOR>()
                .Property(e => e.COLOR_NAME)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<ORDER>()
                .HasMany(e => e.ORDER_DETAIL)
                .WithRequired(e => e.ORDER)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ORDER_DETAIL>()
                .Property(e => e.PRICE)
                .HasPrecision(19, 4);

            modelBuilder.Entity<SHORE>()
                .Property(e => e.NAME)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<SHORE>()
                .Property(e => e.IMG)
                .IsUnicode(false);

            modelBuilder.Entity<SHORE>()
                .Property(e => e.PRICE)
                .HasPrecision(19, 4);

            modelBuilder.Entity<SHORE>()
                .HasMany(e => e.ORDER_DETAIL)
                .WithRequired(e => e.SHORE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TYPE>()
                .Property(e => e.TYPE_NAME)
                .IsFixedLength()
                .IsUnicode(false);
        }
    }
}
