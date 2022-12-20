package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



import bean.loaibean;
import bean.maytinhbean;

public class maytinhdao {
	
	

	public ArrayList<maytinhbean> getmaytinh() {
		
		try {
			ArrayList<maytinhbean> dsmaytinh = new ArrayList<maytinhbean>();
//			   b1: ket noi vao csdl
			   CoSodao cs = new CoSodao();
			   cs.ketnoi();

			//			   b2: Lay du lieu ve
			   String sql = "select * from MayTinh";
			   PreparedStatement cmd = cs.cn.prepareStatement(sql);
			   ResultSet rs = cmd.executeQuery();
			   while(rs.next()) {
				   String maMaytinh = rs.getString("mamaytinh");
				   String tenMaytinh = rs.getString("tenmaytinh");
				   long soLuong = rs.getLong("soluong");
				   long gia = rs.getLong("gia");
				   String anh = rs.getString("anh");
				   String maLoai = rs.getString("maloai");
				   dsmaytinh.add(new maytinhbean(maMaytinh, tenMaytinh, soLuong, gia, anh, maLoai));

			   }

			   rs.close();
			   cs.cn.close();

			   return dsmaytinh;
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return null;
			}
		
		
	}
	public int them (maytinhbean s, Date date) throws Exception {
		CoSodao cs = new CoSodao();
		cs.ketnoi();
		
		String sql = "insert into MayTinh (mamaytinh, tenmaytinh, soluong, gia, maloai, anh, NgayNhap)\r\n"
				+ "values (?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1, s.getMamaytinh());
		cmd.setString(2, s.getTenmaytinh());
		cmd.setLong(3, s.getSoluong());
		cmd.setLong(4, s.getGia());
		cmd.setString(5, s.getMaloai());
		cmd.setString(7, s.getAnh());
		cmd.setDate(8, date);
		return cmd.executeUpdate();
	}
	
}