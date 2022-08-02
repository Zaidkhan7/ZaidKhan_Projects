package com.ncu.validations;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class pwdmatch implements ConstraintValidator<pwdmatcher, String>{


	private String coursePrefix;
	private String temp[];
	
	
	@Override
	public void initialize(pwdmatcher theCourseCode) {
		// TODO Auto-generated method stub
		coursePrefix = theCourseCode.value();
		System.out.println("in pwdmatch_initialize:"+coursePrefix);
	}

	@Override
	public boolean isValid(String value, ConstraintValidatorContext context) {
		System.out.println("\n\nin here values .. : "+value);
		boolean result=false;
		
		if(value==null) {
			System.out.println("in null");
			return true;
			
		}
		
		
		
		temp=value.split(",");
		System.out.println("in_custom validations functions  ..");
		for(String k:temp) {System.out.print(k+ " ");}
		System.out.println("\n\n");
		System.out.println("value : "+value );
		if(value!=null && temp[0].equals(temp[1]) ) {
			System.out.println("in true");
			result=true;
			//else {result=false;}
			
		}
		
		
		
		else {
			System.out.println("in false");
			result=false;
		}
		
		return result;
	}
	
}
