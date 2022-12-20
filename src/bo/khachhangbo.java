package bo;

import java.util.ArrayList;

import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	khachhangdao khgdao = new khachhangdao();
	ArrayList<khachhangbean> dskhg;
	public ArrayList<khachhangbean> getdskhachhang(){
		dskhg = khgdao.getdskhachhang();
		return dskhg;
	}
	
	public khachhangbean kiemtradangnhap(String un, String pass) {
		dskhg = khgdao.getdskhachhang();
		for(khachhangbean kh:dskhg) {
			if (un.equals(kh.getTendangnhap()) && pass.equals(kh.getMatkhau()))
				return kh;
		}
		return null;
	}
	
	public boolean themkhachhang(String hoten, String diachi, String sdt, String email, String tendn, String pass) {
		try {
			dskhg = khgdao.getdskhachhang();
			for(khachhangbean kh:dskhg) {
				if(email.equals(kh.getEmail()) && tendn.equals(kh.getTendangnhap())) {
					return false;
				}
			}
			
			int kt =khgdao.them(hoten, pass, hoten, email, tendn, pass);
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return true;
		}
	
	
	}
}
