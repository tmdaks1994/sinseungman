package org.edu.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

/**
 * JUnit 자바단위테스트, DataSource 지정후 DB(Hsql,Mysql,Oracle)접속
 * @author 뚫어봐
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@WebAppConfiguration()
public class DataSourceTest {

	@Inject
	DataSource dataSource; //스프링에서는 @Inject로 오브젝트 생성.
	
	@Test
	public void dbConnetionTest() {
		try {
			Connection connection = dataSource.getConnection();
			System.out.println("접속 성공");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("접속 실패");
			e.printStackTrace();
		}
	}
	@Test
	public void test() {
		//fail("Not yet implemented");
		System.out.println("JUnit테스트 시작");
	}
}
