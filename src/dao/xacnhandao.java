package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.xacnhanbean;

public class xacnhandao {
	public ArrayList<xacnhanbean> getdanhsach(){
    	try {
    		ArrayList<xacnhanbean> ds= new ArrayList<xacnhanbean>();
			CoSodao kn= new CoSodao();
			kn.ketnoi();
			String sql="select * from VXacNhan where damua=0";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			ResultSet rs=cmd.executeQuery();
			while(rs.next()) {
				  long MaChiTietHD=rs.getLong("MaChiTietHD");
				  long MaHoaDon=rs.getLong("MaHoaDon");;
				  String hoten=rs.getString("hoten");
				  String tensach=rs.getString("tenmaytinh");;
				  long SoLuongMua=rs.getLong("SoLuongMua");;
				  long gia=rs.getLong("gia");;
				  long ThanhTien=rs.getLong("ThanhTien");;
				  boolean damua=rs.getBoolean("damua");
				  ds.add(new  xacnhanbean(MaChiTietHD, MaHoaDon, hoten, hoten, SoLuongMua, gia, ThanhTien, damua, null));
			}
			rs.close();kn.cn.close();
			return ds;
		} catch (Exception e) {
			e.printStackTrace();return null;
		}
    }
	public void xacnhan(long ChiTietHoaDon) {
		try {
			CoSodao kn=new CoSodao();
			kn.ketnoi();
			String sql="update VXacNhan set damua=1 where MaChiTietHD=?";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			cmd.setLong(1, ChiTietHoaDon);
			cmd.executeUpdate();
			kn.cn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<xacnhanbean> getdsxn(){
    	try {
    		ArrayList<xacnhanbean> ds= new ArrayList<xacnhanbean>();
			CoSodao kn= new CoSodao();
			kn.ketnoi();
			String sql="select * from VXacNhan where damua=1";
			PreparedStatement cmd= kn.cn.prepareStatement(sql);
			ResultSet rs=cmd.executeQuery();
			while(rs.next()) {
				  long MaChiTietHD=rs.getLong("MaChiTietHD");
				  long MaHoaDon=rs.getLong("MaHoaDon");;
				  String hoten=rs.getString("hoten");
				  String tensach=rs.getString("tenmaytinh");;
				  long SoLuongMua=rs.getLong("SoLuongMua");;
				  long gia=rs.getLong("gia");;
				  long ThanhTien=rs.getLong("ThanhTien");;
				  boolean damua=rs.getBoolean("damua");
				  ds.add(new xacnhanbean(MaChiTietHD, MaHoaDon, hoten, hoten, SoLuongMua, gia, ThanhTien, damua, null));
			}
			rs.close();kn.cn.close();
			return ds;
		} catch (Exception e) {
			e.printStackTrace();return null;
		}
    }

}
