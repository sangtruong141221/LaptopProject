package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	public void Them(String mamaytinh, String tenmaytinh, long gia, long soluong, String anh) {
		for (giohangbean g:ds) {
			if (g.getMamaytinh().equals(mamaytinh)) {
				g.setSoluong(soluong+ g.getSoluong());
				return;
			}
		}
		
		ds.add(new giohangbean(mamaytinh, tenmaytinh, gia, soluong, soluong, anh));
		
	}
	
	public void Xoa(String mamaytinh) {
		for (int i=0; i<ds.size(); i++) {
			if (ds.get(i).getMamaytinh().equals(mamaytinh)) {
				ds.remove(i);
				return;
			}
		}
	}
	
	public void XoaAll() {
		ds.removeAll(ds);
	}
	
	public long TongTien() {
		long Sum = 0;
		for (giohangbean g: ds) {
			Sum += g.getThanhtien();
		}
		return Sum;
	}
	
	public int countMaytinh() {
		int count = 0;
		for (giohangbean g: ds) {
			count++;
		}
		
		return count;
	}
	
	public void XoaNhieu(String [] list) {
		for (String item: list) {
			for (int i=0; i<ds.size(); i++) {
				if (item.equals(ds.get(i).getMamaytinh())) {
					ds.remove(i);
					i--;
				}
			}
		}
	}
	public void sua(String masach, long sl) {
		for(int i =0; i< ds.size(); i++) {
			if(ds.get(i).getMamaytinh().equals(masach)) {
				ds.get(i).setSoluong(sl);;
			}
		}
	}
}
