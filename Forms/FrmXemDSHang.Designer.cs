namespace XemLaiHoaDon
{
    partial class FrmXemDSHang
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
			this.label1 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.label3 = new System.Windows.Forms.Label();
			this.label4 = new System.Windows.Forms.Label();
			this.comboBox1 = new System.Windows.Forms.ComboBox();
			this.button1 = new System.Windows.Forms.Button();
			this.lblTongKet = new System.Windows.Forms.Label();
			this.btnThemHang = new System.Windows.Forms.Button();
			this.lvDS = new System.Windows.Forms.ListView();
			this.clhNhomMatHang = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.clhMaSo = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.clhTenMatHang = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.clhGiaNiemYet = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.clhGiaBanSi = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.clhGiaBanLe = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.clhSoLuong = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.clhTrangThai = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.clhLuuY = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
			this.SuspendLayout();
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(13, 13);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(99, 16);
			this.label1.TabIndex = 0;
			this.label1.Text = "Lọc và tìm kiếm";
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(13, 46);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(101, 16);
			this.label2.TabIndex = 0;
			this.label2.Text = "Nhóm mặt hàng";
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Location = new System.Drawing.Point(12, 86);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(129, 16);
			this.label3.TabIndex = 0;
			this.label3.Text = "Danh sách mặt hàng";
			// 
			// label4
			// 
			this.label4.AutoSize = true;
			this.label4.Location = new System.Drawing.Point(315, 46);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(144, 16);
			this.label4.TabIndex = 1;
			this.label4.Text = "Tên hoặc mã mặt hàng";
			// 
			// comboBox1
			// 
			this.comboBox1.FormattingEnabled = true;
			this.comboBox1.Location = new System.Drawing.Point(120, 43);
			this.comboBox1.Name = "comboBox1";
			this.comboBox1.Size = new System.Drawing.Size(166, 24);
			this.comboBox1.TabIndex = 2;
			// 
			// button1
			// 
			this.button1.Location = new System.Drawing.Point(465, 43);
			this.button1.Name = "button1";
			this.button1.Size = new System.Drawing.Size(75, 23);
			this.button1.TabIndex = 3;
			this.button1.Text = "Xóa bộ lọc";
			this.button1.UseVisualStyleBackColor = true;
			// 
			// lblTongKet
			// 
			this.lblTongKet.AutoSize = true;
			this.lblTongKet.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lblTongKet.ForeColor = System.Drawing.Color.Red;
			this.lblTongKet.Location = new System.Drawing.Point(573, 45);
			this.lblTongKet.Name = "lblTongKet";
			this.lblTongKet.Size = new System.Drawing.Size(15, 16);
			this.lblTongKet.TabIndex = 4;
			this.lblTongKet.Text = "0";
			// 
			// btnThemHang
			// 
			this.btnThemHang.Location = new System.Drawing.Point(835, 46);
			this.btnThemHang.Name = "btnThemHang";
			this.btnThemHang.Size = new System.Drawing.Size(138, 31);
			this.btnThemHang.TabIndex = 5;
			this.btnThemHang.Text = "Thêm mặt hàng";
			this.btnThemHang.UseVisualStyleBackColor = true;
			// 
			// lvDS
			// 
			this.lvDS.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.clhNhomMatHang,
            this.clhMaSo,
            this.clhTenMatHang,
            this.clhGiaNiemYet,
            this.clhGiaBanSi,
            this.clhGiaBanLe,
            this.clhSoLuong,
            this.clhTrangThai,
            this.clhLuuY});
			this.lvDS.GridLines = true;
			this.lvDS.HideSelection = false;
			this.lvDS.Location = new System.Drawing.Point(16, 124);
			this.lvDS.Name = "lvDS";
			this.lvDS.Size = new System.Drawing.Size(1024, 453);
			this.lvDS.TabIndex = 6;
			this.lvDS.UseCompatibleStateImageBehavior = false;
			this.lvDS.View = System.Windows.Forms.View.Details;
			// 
			// clhNhomMatHang
			// 
			this.clhNhomMatHang.Text = "Nhóm mặt hàng";
			// 
			// clhMaSo
			// 
			this.clhMaSo.Text = "Mã số";
			// 
			// clhTenMatHang
			// 
			this.clhTenMatHang.Text = "Tên mặt hàng";
			// 
			// clhGiaNiemYet
			// 
			this.clhGiaNiemYet.Text = "Giá niêm yết";
			// 
			// clhGiaBanSi
			// 
			this.clhGiaBanSi.Text = "Giá bán sỉ";
			// 
			// clhGiaBanLe
			// 
			this.clhGiaBanLe.Text = "Giá bán lẻ";
			// 
			// clhSoLuong
			// 
			this.clhSoLuong.Text = "Số lượng";
			// 
			// clhTrangThai
			// 
			this.clhTrangThai.Text = "Trạng thái";
			// 
			// clhLuuY
			// 
			this.clhLuuY.Text = "Lưu ý";
			this.clhLuuY.Width = 89;
			// 
			// FrmXemDSHang
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(1052, 613);
			this.Controls.Add(this.lvDS);
			this.Controls.Add(this.btnThemHang);
			this.Controls.Add(this.lblTongKet);
			this.Controls.Add(this.button1);
			this.Controls.Add(this.comboBox1);
			this.Controls.Add(this.label4);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.label1);
			this.Name = "FrmXemDSHang";
			this.Text = "Danh sách mặt hàng";
			this.ResumeLayout(false);
			this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label lblTongKet;
        private System.Windows.Forms.Button btnThemHang;
        private System.Windows.Forms.ListView lvDS;
        private System.Windows.Forms.ColumnHeader clhNhomMatHang;
        private System.Windows.Forms.ColumnHeader clhMaSo;
        private System.Windows.Forms.ColumnHeader clhTenMatHang;
        private System.Windows.Forms.ColumnHeader clhGiaNiemYet;
        private System.Windows.Forms.ColumnHeader clhGiaBanSi;
        private System.Windows.Forms.ColumnHeader clhGiaBanLe;
        private System.Windows.Forms.ColumnHeader clhSoLuong;
        private System.Windows.Forms.ColumnHeader clhTrangThai;
        private System.Windows.Forms.ColumnHeader clhLuuY;
    }
}