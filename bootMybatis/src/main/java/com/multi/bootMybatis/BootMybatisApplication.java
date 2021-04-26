package com.multi.bootMybatis;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.multi.book.BookController;
import com.multi.book.IBookDAO;
import com.multi.product.IProductDAO;
import com.multi.product.ProductController;

@SpringBootApplication
@ComponentScan(basePackageClasses=ProductController.class)
@MapperScan(basePackageClasses=IProductDAO.class)

@ComponentScan(basePackageClasses=BookController.class)
@MapperScan(basePackageClasses=IBookDAO.class)

public class BootMybatisApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootMybatisApplication.class, args);
	}

}