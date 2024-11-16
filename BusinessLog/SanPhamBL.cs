﻿using DataAccess1.ClassDA;
using DataAccess1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLog
{
    public class SanPhamBL
    {
        SanPhamDA SanPhamDA = new SanPhamDA();
        public List<SanPham> GetAll()
        {
            return SanPhamDA.GetAll();
        }
        public int Insert(SanPham sanPham)
        {
            return SanPhamDA.Insert_Update_Delete(sanPham, 0);
        }
        public int Update(SanPham sanPham)
        {
            return SanPhamDA.Insert_Update_Delete(sanPham, 1);
        }
        public int Delete(SanPham sanPham)
        {
            return SanPhamDA.Insert_Update_Delete(sanPham, 2);
        }
    }
}
