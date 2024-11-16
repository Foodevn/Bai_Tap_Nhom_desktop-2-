using DataAccess1.ClassDA;
using DataAccess1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLog
{
    public class HoaDonBL
    {
        HoaDonDA HoaDonDA = new HoaDonDA();
        public List<HoaDon> GetAll()
        {
            return HoaDonDA.GetAll();
        }
        public int Insert(HoaDon hoaDon)
        {
            return HoaDonDA.Insert_Update_Delete(hoaDon, 0);
        }
        public int Update(HoaDon hoaDon)
        {
            return HoaDonDA.Insert_Update_Delete(hoaDon, 1);
        }
        public int Delete(HoaDon hoaDon)
        {
            return HoaDonDA.Insert_Update_Delete(hoaDon, 2);
        }
    }
}
