using System.Data.Entity.ModelConfiguration;

namespace MiraMareHotel.Models.Mapping
{
    public class AvaliacaoesMap : EntityTypeConfiguration<Avaliacoes>
    {
        public AvaliacaoesMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Hospede)
                .HasMaxLength(250);

            this.Property(t => t.CidadePais)
                .HasMaxLength(250);

            // Table & Column Mappings
            this.ToTable("__TB_AVALIACAO");
            this.Property(t => t.Id).HasColumnName("AvaliacaoId");
            this.Property(t => t.Hospede).HasColumnName("Hospede");
            this.Property(t => t.CidadePais).HasColumnName("CidadePais");
            this.Property(t => t.Avaliacao).HasColumnName("Avaliacao");
            this.Property(t => t.DataAvaliacao).HasColumnName("DataAvaliacao");
        }
    }
}
