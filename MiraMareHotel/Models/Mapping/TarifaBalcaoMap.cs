using System.ComponentModel.DataAnnotations;
using System.Data.Entity.ModelConfiguration;

namespace MiraMareHotel.Models.Mapping
{
    public class TarifaBalcaoMap : EntityTypeConfiguration<TarifaBalcao>
    {
        public TarifaBalcaoMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            // Table & Column Mappings
            this.ToTable("TarifaBalcao");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Luxo1Hospede).HasColumnName("Luxo1Hospede");
            this.Property(t => t.Luxo2Hospedes).HasColumnName("Luxo2Hospedes");
            this.Property(t => t.Luxo3Hospedes).HasColumnName("Luxo3Hospedes");
            this.Property(t => t.Luxo4Hospedes).HasColumnName("Luxo4Hospedes");
            this.Property(t => t.LuxoVaranda1Hospede).HasColumnName("LuxoVaranda1Hospede");
            this.Property(t => t.LuxoVaranda2Hospedes).HasColumnName("LuxoVaranda2Hospedes");
            this.Property(t => t.LuxoVaranda3Hospedes).HasColumnName("LuxoVaranda3Hospedes");
           // this.Property(t => t.LuxoVarada4Hospedes).HasColumnName("LuxoVarada4Hospedes");
            this.Property(t => t.Luxo1HospedeFds).HasColumnName("Luxo1HospedeFds");
            this.Property(t => t.Luxo2HospedesFds).HasColumnName("Luxo2HospedesFds");
            this.Property(t => t.Luxo3HospedesFds).HasColumnName("Luxo3HospedesFds");
            this.Property(t => t.Luxo4HospedesFds).HasColumnName("Luxo4HospedesFds");
            this.Property(t => t.LuxoVaranda1HospedeFds).HasColumnName("LuxoVaranda1HospedeFds");
            this.Property(t => t.LuxoVaranda2HospedesFds).HasColumnName("LuxoVaranda2HospedesFds");
            this.Property(t => t.LuxoVaranda3HospedesFds).HasColumnName("LuxoVaranda3HospedesFds");
           // this.Property(t => t.LuxoVarada4HospedesFds).HasColumnName("LuxoVarada4HospedesFds");
        }
    }
}
