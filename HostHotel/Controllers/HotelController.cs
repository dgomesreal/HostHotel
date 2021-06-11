using HostHotel.DAO;
using HostHotel.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace HostHotel.Controllers
{
    public class HotelController : Controller
    {
        private readonly HotelDAO _dao;
        private List<Hotel> _list;
        public HotelController(HotelDAO dao)
        {
            _dao = dao;
        }

        public ActionResult New()
        {
            return View();
        }

        public ActionResult List()
        {
            _list = _dao.List();
            return View(_list);
        }

        [HttpGet]
        public ActionResult FilterPerName(string Name)
        {
            _list = _dao.FilterPerName(Name);
            return View("List", _list);
        }


        [HttpGet]
        public ActionResult FilterPerFacilities(string Facilities)
        {
            _list = _dao.FilterPerFacilities(Facilities);
            return View("List", _list);
        }

        [HttpPost]
        public ActionResult Add(Hotel hotel)
        {
            _dao.Add(hotel);
            return RedirectToAction("List");
        }

        public ActionResult Update(Hotel hotel)
        {
            if (ModelState.IsValid)
            {
                _dao.Update(hotel);
                return RedirectToAction("List");
            }
            else
            {
                return View("List", hotel);
            }
        }

        public ActionResult Edit(int id)
        {
            Hotel hotel = _dao.Find(id);
            return View(hotel);
        }

        public ActionResult Delete(int id)
        {
            _dao.Delete(id);
            return RedirectToAction("List");
        }
    }
}
