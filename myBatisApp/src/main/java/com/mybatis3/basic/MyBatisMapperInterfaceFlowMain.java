package com.mybatis3.basic;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mybatis3.dao.MapperProxy;
import com.mybatis3.dao.mapper.StudentBasicMapper;
import com.mybatis3.dao.mapper.StudentMapper;
import com.mybatis3.domain.Student;

public class MyBatisMapperInterfaceFlowMain {

	public static void main(String[] args) throws Exception{
		/*
		 * 0.mybatis-config-mapper-interface.xml --> InputStream
		 */
		InputStream myBatisConfigInputStream = 
				Resources.getResourceAsStream("mybatis-config-mapper-interface.xml");
		/*
		 * 1. SqlSessionFactoryBuilder
		 */
		SqlSessionFactoryBuilder sqlSessionFactoryBuilder=new SqlSessionFactoryBuilder();
		/*
		 * 2. SqlSessionFactory
		 */
		SqlSessionFactory sqlSessionFactory=
				sqlSessionFactoryBuilder.build(myBatisConfigInputStream);
		/*
		 * 3. SqlSession open (Connection)
		 * 	  autocommit true
		 */
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		System.out.println("#### SqlSession객체:"+sqlSession);
		/*
		 * 4. StudentBasicMapper [MapperInterface]생성
		 *    org.apache.ibatis.binding.MapperProxy
		 */
		StudentBasicMapper studentBasicMapper=
				sqlSession.getMapper(StudentBasicMapper.class);
		
		System.out.println("#### StudentMapper객체:"+studentBasicMapper);
		/*
		 * 5. StudentMapper[MapperInterface]사용(CRUD)
		*/
		System.out.println("#### studentList:"+studentBasicMapper.findAllStudents());
		
		System.out.println("#### student:"+studentBasicMapper.findStudentById(1));
		
		/*
		 * 6. SqlSession close
		 */
		sqlSession.close();
	
		/*
		MapperProxy mp=new MapperProxy();
		mp.findAllStudents();
		mp.findStudentById(2);
		*/
	}
}













