using HostHotel.Models;
using Microsoft.EntityFrameworkCore;

namespace HostHotel.Infra
{
    public class HostHotelContext : DbContext
    {
        public HostHotelContext(DbContextOptions<HostHotelContext> options)  : base(options) {}

        public DbSet<Hotel> Hotels { get; set; }
    }
}
