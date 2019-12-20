package com.src.java.evoting.utilities;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

public final class MyDataSource {
	private MysqlDataSource ds = null;
	private static final MyDataSource myDataSource = new MyDataSource();

	public static MyDataSource getInstance() {
		return myDataSource;
	}

	public Connection getDbConnection() throws SQLException {
		return ds.getConnection();
	}

	private MyDataSource() {
		ds = new MysqlDataSource();

		ds.setURL("jdbc:mysql://localhost:3306/evotingdb");
		ds.setUser("root");
		ds.setPassword("root");
	}
}
