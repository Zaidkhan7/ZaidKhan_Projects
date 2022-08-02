package com.ncu.validations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;


@Constraint(validatedBy = pwdmatch.class)
@Target({ElementType.METHOD,ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface pwdmatcher {

public String value() default "";
	
	// define default error message -> if we do not specify an mesage tag in mymodel class then this default msg will get printed on jsp
			public String message() default "";
			
			// define default groups
			public Class<?>[] groups() default {};
			
			// define default payloads
			public Class<? extends Payload>[] payload() default {};
}
