package brainburst.tt.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DbUtil {
	private static SqlSessionFactory factory;
	static{
		Reader reader=null;
		try {
			reader = Resources.getResourceAsReader("fashion/shop/util/SqlMapConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * SqlSession create instance and return Method
	 * */
	public static SqlSession getSqlSession(){
		return factory.openSession();
	}
	
	/**
	 * close(select) Method
	 * */
	public static void closeSession(SqlSession sqlSession){
		sqlSession.close();
	}
	/**
	 * close(insert, update, delete) Method
	 * @param boolean state - true : commit, false : rollback
	 * */
	public static void closeSession(SqlSession sqlSession, boolean state){
		if(sqlSession != null){
			if(state){
				sqlSession.commit();
				System.out.println("Ä¿¹Ô¿Ï·á");
			}
			else{
				sqlSession.rollback();
				System.out.println("Ä¿¹Ô¿À·ù");
			}
			sqlSession.close();
		}
	}
}
