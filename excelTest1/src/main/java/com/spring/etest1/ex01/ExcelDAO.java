package com.spring.etest1.ex01;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

@Repository("excelDAO")
public class ExcelDAO {
	@Autowired
	private SqlSession sqlSession;
	
	public int insertExcelGoods(List<Map> totalGoodsList)  throws DataAccessException{
		int result = 0;
		for(Map goodsMap : totalGoodsList){
			result = sqlSession.insert("mapper.goods.insertExcelGoods", goodsMap);
		}
		return result;
	}
	
	public int insertExcelGoodsImage(List<Map> totalImageList)  throws DataAccessException{
		int result = 0;
		for(Map goodsImageMap : totalImageList){
			result = sqlSession.insert("mapper.goods.insertExcelGoodsImage", goodsImageMap);
		}
		return result;
	}

}
