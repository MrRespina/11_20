package com.ji.servlet013.banana;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.ji.servlet013.dbmanager.JiDBManager;

public class BananaDAO {

	private int allBananaCount;
	
	private static final BananaDAO BANANADAO = new BananaDAO();
	
	private BananaDAO() {
		
	}

	public static BananaDAO getbananadao() {
		return BANANADAO;
	}

	public int getAllBananaCount() {
		return allBananaCount;
	}

	public void setAllBananaCount(int allAppleCount) {
		this.allBananaCount = allAppleCount;
	}
	
	// 모든 사과 데이터 전부 가져오기 - R > Select
	
	public void getAllBananas(HttpServletRequest request) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			conn = JiDBManager.connect("jiPool");
			String sql = "select * from banana order by b_price";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<Banana> baal = new ArrayList<Banana>();
			Banana bana = null;
			
			while(rs.next()) {
				
				bana = new Banana();
				bana.setB_location(rs.getString("b_location"));
				bana.setB_flavor(rs.getString("b_flavor"));
				bana.setB_price(rs.getInt("b_price"));
				bana.setB_introduce(rs.getString("b_introduce"));
				baal.add(bana);
				
			}
			request.setAttribute("bananas", baal);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		JiDBManager.close(conn,pstmt,rs);
	}
	
	
}
