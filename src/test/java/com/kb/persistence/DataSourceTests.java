package com.kb.persistence;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class DataSourceTests {
//스프링테스트 히카리 커넥션풀
	@Setter(onMethod_ = {@Autowired})
	private DataSource dataSource;
	@Setter(onMethod_ = {@Autowired})
	private SqlSessionFactory sqlSessionFactory;
		
	@Test
	public void testMyBatis() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		Connection conn= sqlSession.getConnection();
		log.info(conn);
	}	
	
	//@test가 잇는곳만 테스트
	
	public void testConnection() {
		try {
			Connection conn = dataSource.getConnection();
			log.info(conn);;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}






