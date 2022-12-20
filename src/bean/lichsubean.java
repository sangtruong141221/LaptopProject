package bean;

import java.util.Date;

public class lichsubean {
	
	String tenmaytinh;
	int SoLuongMua;
	int gia;
	int ThanhTien;
	boolean damua;
	Date NgayMua;
	public String getTenmaytinh() {
		return tenmaytinh;
	}
	public void setTenmaytinh(String tenmaytinh) {
		this.tenmaytinh = tenmaytinh;
	}
	public int getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(int soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public int getThanhTien() {
		return ThanhTien;
	}
	public void setThanhTien(int thanhTien) {
		ThanhTien = thanhTien;
	}
	public boolean isDamua() {
		return damua;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	public Date getNgayMua() {
		return NgayMua;
	}
	public void setNgayMua(Date ngayMua) {
		NgayMua = ngayMua;
	}
	public lichsubean(String tenmaytinh, int soLuongMua, int gia, int thanhTien, boolean damua, Date ngayMua) {
		super();
		this.tenmaytinh = tenmaytinh;
		SoLuongMua = soLuongMua;
		this.gia = gia;
		ThanhTien = thanhTien;
		this.damua = damua;
		NgayMua = ngayMua;
	}
	public lichsubean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
