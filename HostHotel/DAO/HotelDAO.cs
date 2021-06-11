using HostHotel.Infra;
using HostHotel.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace HostHotel.DAO
{
    public class HotelDAO
    {
        private readonly HostHotelContext _context;

        public HotelDAO(HostHotelContext context)
        {
            _context = context;
        }

        public List<Hotel> List()
        {
            var list = _context.Hotels.ToList();
            return list;
        }

        public List<Hotel> FilterPerName(string Name)
        {
            var list = _context.Hotels.Where(h => h.Name.Contains(Name)).OrderBy(h => h.Name).ToList();
            return list;
        }

        public List<Hotel> FilterPerFacilities(string Facilities)
        {
            List<Hotel> list = _context.Hotels.Where(h => h.Facilities.Contains(Facilities)).OrderBy(h => h.Facilities).ToList();
            return list;
        }

        public Hotel Find(int id)
        {
            Hotel hotel = _context.Hotels.AsNoTracking().FirstOrDefault(p => p.Id == id);
            return hotel;
        }

        public void Add(Hotel hotel)
        {
            _context.Hotels.Add(hotel);
            _context.SaveChanges();
        }

        public void Update(Hotel hotel)
        {
            _context.Attach(hotel);
            _context.Entry(hotel).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            _context.SaveChanges();
        }

        public void Delete(int id)
        {
            Hotel hotel = _context.Hotels.Find(id);
            _context.Hotels.Remove(hotel);
            _context.SaveChanges();
        }
    }
}
