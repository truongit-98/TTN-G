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

        [Key]
        public int ID_CUSTOMER { get; set; }

        [Required]
        [StringLength(50, ErrorMessage ="Nhap it hon 50 ki tu thoi")]
        public string CUSTOMER_NAME { get; set; }

        [Required]
        [StringLength(50)]
        public string ADDRESS { get; set; }

        [Required]
        [StringLength(50)]
        public string PHONE { get; set; }

        [Required]
        [StringLength(50)]
        public string EMAIL { get; set; }

        [Required]
        [StringLength(50)]
        public string USERNAME { get; set; }

        [Required]
        [StringLength(50)]
        public string PASS { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ORDER> ORDERs { get; set; }
    }
}
