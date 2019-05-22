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
        [Display(Name ="ID")]
        public int ID { get; set; }
        [Display(Name = "Name")]
        [StringLength(100)]
        public string NAME { get; set; }
        [Display(Name = "Image")]
        [StringLength(50)]
        public string IMG { get; set; }
        [Display(Name = "Quantity")]
        public int? SL { get; set; }
        [Display(Name = "Size")]
        public int? ID_SIZE { get; set; }
        [Display(Name = "Color")]
        public int? ID_COLOR { get; set; }
        [Display(Name = "Brand")]
        public int? ID_BRAND { get; set; }
        [Display(Name = "Style")]
        public int? ID_TYPE { get; set; }
        [Display(Name = "Description")]
        public string DESCRIPTIONS { get; set; }
        [Display(Name = "Price")]
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
