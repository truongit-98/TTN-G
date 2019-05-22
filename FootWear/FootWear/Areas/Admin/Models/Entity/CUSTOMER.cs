namespace FootWear.Models.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CUSTOMER")]
    public partial class CUSTOMER
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CUSTOMER()
        {
            ORDERs = new HashSet<ORDER>();
        }
        [Display(Name ="ID")]
        [Key]
        public int ID_CUSTOMER { get; set; }
        [Display(Name = "Name")]
        [StringLength(50)]
        public string CUSTOMER_NAME { get; set; }
        [Display(Name = "Address")]
        [StringLength(50)]
        public string ADDRESS { get; set; }
        [Display(Name = "Phone")]
        [StringLength(50)]
        public string PHONE { get; set; }
        [Display(Name = "Email")]
        [StringLength(50)]
        public string EMAIL { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ORDER> ORDERs { get; set; }
    }
}
