package com.controller;

public class Capitalize {
	
	public static String capitalize(String str)
	{
		return Character.toUpperCase(str.charAt(0)) + str.substring(1);
	}

}
