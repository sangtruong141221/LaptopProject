package dao;

import java.sql.PreparedStatement;

public class chitiethoadon {
	public int them(String mamaytinh, int SoLuongMua, int MaHoaDon) {
		try {
			CoSodao cs= new CoSodao();
			cs.ketnoi();
			String sql="insert into ChiTietHoaDon(mamaytinh,SoLuongMua,MaHoaDon,damua) values(?,?,?,?)";
			PreparedStatement cmd= cs.cn.prepareStatement(sql);
			cmd.setString(1, mamaytinh);
			cmd.setInt(2,SoLuongMua);
			cmd.setInt(3,MaHoaDon);
			cmd.setBoolean(4, false);
			int kq= cmd.executeUpdate();
			cs.cn.close();
			return kq;
		} catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
	
	}
}
