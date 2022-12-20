package bean;

public class giohangbean {
	String mamaytinh, tenmaytinh;
	long gia, soluong, thanhtien;
	String anh;
	public String getMamaytinh() {
		return mamaytinh;
	}
	public void setMamaytinh(String mamaytinh) {
		this.mamaytinh = mamaytinh;
	}
	public String getTenmaytinh() {
		return tenmaytinh;
	}
	public void setTenmaytinh(String tenmaytinh) {
		this.tenmaytinh = tenmaytinh;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public giohangbean(String mamaytinh, String tenmaytinh, long gia, long soluong, long thanhtien, String anh) {
		super();
		this.mamaytinh = mamaytinh;
		this.tenmaytinh = tenmaytinh;
		this.gia = gia;
		this.soluong = soluong;
		this.thanhtien = thanhtien;
		this.anh = anh;
	}
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
