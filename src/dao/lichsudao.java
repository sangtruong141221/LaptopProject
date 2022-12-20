package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import bean.lichsubean;

public class lichsudao {
	public ArrayList<lichsubean> getlichsu(int makh){
        try {
        	ArrayList<lichsubean> ds= new ArrayList<lichsubean>();
        	CoSodao cs = new CoSodao();
    		cs.ketnoi();
            String sql = "select * from View_ls where makh = ?";
           	PreparedStatement cmd = cs.cn.prepareStatement(sql);
	    	cmd.setInt(1, makh);
            
            ResultSet rs = cmd.executeQuery();
            
            while(rs.next()) {
            	
			
				int SoLuongMua = rs.getInt("SoLuongMua");
				boolean damua =rs.getBoolean("damua");
				int gia = rs.getInt("gia");
				int ThanhTien = rs.getInt("Thanhtien");
			
				String tenmaytinh = rs.getString("tenmaytinh");
				Date NgayMua = rs.getDate("NgayMua");
				
				ds.add(new lichsubean(tenmaytinh, SoLuongMua, gia, ThanhTien, damua, NgayMua));
            }
            
            rs.close();
			   
            return ds;
	} catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return null;
	}
    }
}
