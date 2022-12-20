package bo;

import java.sql.Date;
import java.util.ArrayList;

import bean.maytinhbean;
import dao.maytinhdao;

public class maytinhbo {
	maytinhdao lmaytinh = new maytinhdao();
	ArrayList<maytinhbean> ds;
	
	public ArrayList<maytinhbean> getmaytinh(){
		ds = lmaytinh.getmaytinh();
		
		return ds;
	}
	
	public ArrayList<maytinhbean> timKiemTheoLoai(ArrayList<maytinhbean> ds ,String maloai) {
		ArrayList<maytinhbean> dsMayTinhCungMa = new ArrayList<maytinhbean>();
		for (maytinhbean item: ds) {
			if (item.getMaloai().equals(maloai)) {
				dsMayTinhCungMa.add(item);
			}
		}
		 	
		return dsMayTinhCungMa;
	}
	
	public ArrayList<maytinhbean> timKiemTheoTen(ArrayList<maytinhbean> ds ,String tenSach) {
		ArrayList<maytinhbean> dsSachCungTen = new ArrayList<maytinhbean>();
		for (maytinhbean item: ds) {
			if (item.getTenmaytinh().toLowerCase().trim().contains(tenSach.toLowerCase().trim())
			 || item.getMaloai().toLowerCase().trim().contains(tenSach.toLowerCase().trim())
			) {
				dsSachCungTen.add(item);
			}
		}
		
		return dsSachCungTen;
	}
	public ArrayList<maytinhbean> getpage(ArrayList<maytinhbean> ds, int s, int e){
		ArrayList<maytinhbean> dsPage = new ArrayList<maytinhbean>();
		for(int i=s; i<=e;i++) {
			dsPage.add(ds.get(i));
		}
		return dsPage;
	}
	
	public void them_sach(maytinhbean s, Date date) {
		try {
			lmaytinh.them(s, date);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
}
