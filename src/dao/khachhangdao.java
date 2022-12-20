package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.khachhangbean;

public class khachhangdao {
	public ArrayList<khachhangbean> getdskhachhang(){
		   try {
			   ArrayList<khachhangbean> dskhachhang= new ArrayList<khachhangbean>();
//			   b1: ket noi vao csdl
			   CoSodao cs = new CoSodao();
			   cs.ketnoi();
//			   b2: Lay du lieu ve
			   String sql = "select * from KhachHang";
			   PreparedStatement cmd = cs.cn.prepareStatement(sql);
			   ResultSet rs = cmd.executeQuery();
			   while(rs.next()) {
				   int makh = rs.getInt("makh");
				   String hoten = rs.getString("hoten");
				   String diachi = rs.getString("diachi");
				   String email = rs.getString("email");
				   String TenDangNhap = rs.getString("tendn");
				   String MatKhau = rs.getString("pass");
				   String SoDienThoai = rs.getString("sodt");
				   dskhachhang.add(new khachhangbean(makh, hoten, diachi, email, TenDangNhap, MatKhau) );
			   }
			   
//			   b3: close rs, cn
			   rs.close();
			   cs.cn.close();
			   
			   return dskhachhang;
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return null;
			}
	   }
	public int them (String hoten, String diachi, String sdt, String email, String tendn, String pass) throws Exception {
		CoSodao cs = new CoSodao();
		cs.ketnoi();
		
		String sql = "insert into KhachHang (hoten, diachi, sodt, email, tendn, pass)\r\n"
				+ "values (?,?, ?, ?, ?, ?);";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setString(1,hoten);
		cmd.setString(2,diachi);
		cmd.setString(3,sdt);
		cmd.setString(4,email);
		cmd.setString(5,tendn);
		cmd.setString(6,pass);
		return cmd.executeUpdate();
		
}
}
