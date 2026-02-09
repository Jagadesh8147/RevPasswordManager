package com.RevPasswordManager.Util;

public class EmailValidatorUtil {
	public static boolean isValidGmail(String email) {
        if (email == null) return false;
        return email.endsWith("@gmail.com");
    }
}
