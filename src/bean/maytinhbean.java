package bean;



public class maytinhbean {
	private String mamaytinh;
	private String tenmaytinh;
	private long soluong;
	private long gia;
	private String anh;
	private String maloai;
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
	public long getSoluong() {
		return soluong;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public maytinhbean(String mamaytinh, String tenmaytinh, long soluong, long gia, String anh, String maloai) {
		super();
		this.mamaytinh = mamaytinh;
		this.tenmaytinh = tenmaytinh;
		this.soluong = soluong;
		this.gia = gia;
		this.anh = anh;
		this.maloai = maloai;
	}
	public maytinhbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
		
}
