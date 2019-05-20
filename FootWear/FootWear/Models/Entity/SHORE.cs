namespace FootWear.Models.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SHORES")]
    public partial class SHORE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SHORE()
        {
            ORDER_DETAIL = new HashSet<ORDER_DETAIL>();
        }

        public int ID { get; set; }

        [StringLength(100)]
        public string NAME { get; set; }

        [StringLength(50)]
        public string IMG { get; set; }

        public int? SL { get; set; }

        public int? ID_SIZE { get; set; }

        public int? ID_COLOR { get; set; }

        public int? ID_BRAND { get; set; }

        public int? ID_TYPE { get; set; }

        public string DESCRIPTIONS { get; set; }

        [Column(TypeName = "money")]
        public decimal? PRICE { get; set; }

        public virtual C_SIZE C_SIZE { get; set; }

        public virtual BRAND BRAND { get; set; }

        public virtual COLOR COLOR { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ORDER_DETAIL> ORDER_DETAIL { get; set; }

        public virtual TYPE TYPE { get; set; }
    }
}
