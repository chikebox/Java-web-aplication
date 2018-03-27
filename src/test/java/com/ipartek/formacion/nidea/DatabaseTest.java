package com.ipartek.formacion.nidea;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

public class DatabaseTest {

	@Test
	public void test() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			assertTrue(true);
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
			fail("No existe driver para mysql, ¿Tienes el .JAR ?");
		}
	}
	@Test
	public void testConexion() {
		final String URL="jdbc:mysql://192.168.0.42/spoty?";
		try {
		Connection con= DriverManager.getConnection(URL,"alumno","alumno");
		}
		catch(SQLException e) {
			e.printStackTrace();
			fail("No se pudo establecer la conexion" + URL);
		}
	}

}
