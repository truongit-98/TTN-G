namespace FootWear.Models.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ADMIN")]
    public partial class ADMIN
    {
        [Key]
        [StringLength(50)]
        public string AD_NAME { get; set; }

        [StringLength(50)]
        public string AD_PASS { get; set; }
    }
}
