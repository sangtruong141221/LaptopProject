package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.dnadminbean;

public class dnadmindao {
	public dnadminbean ktdn(String tendn, String pass) {
		try {
			CoSodao cs = new CoSodao();
			cs.ketnoi();
			String sql="select * from DangNhap where TenDangNhap=? and MatKhau=?";
			PreparedStatement cmd= cs.cn.prepareStatement(sql);
			cmd.setString(1, tendn);
			cmd.setString(2, pass);
			ResultSet rs=cmd.executeQuery();
			dnadminbean dn=null;
			if(rs.next()) {
				  String TenDangNhap=rs.getString("TenDangNhap");
				  String MatKhau=rs.getString("MatKhau");
				  boolean Quyen=rs.getBoolean("Quyen");
				  dn=new dnadminbean(TenDangNhap, MatKhau, Quyen);
			}
			rs.close();cs.cn.close();
			return dn;
		} catch (Exception e) {
			e.printStackTrace();return null;
		}

	}
}
