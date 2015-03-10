package com.rmsdt.web.form.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.apache.commons.beanutils.PropertyUtils;
import org.joda.time.DateTime;

public class DateFieldEqualOrAfterValidator implements
		ConstraintValidator<DateFieldEqualOrAfter, Object> {

	private String firstFieldName;
	private String secondFieldName;
	private String errorMessage;

	@Override
	public void initialize(final DateFieldEqualOrAfter constraintAnnotation) {
		firstFieldName = constraintAnnotation.first();
		secondFieldName = constraintAnnotation.second();

		errorMessage = constraintAnnotation.message();
	}

	@Override
	public boolean isValid(final Object object,
			final ConstraintValidatorContext cvc) {

		try {

			final DateTime firstDate = (DateTime) PropertyUtils.getProperty(
					object, firstFieldName);
			final DateTime secondDate = (DateTime) PropertyUtils.getProperty(
					object, secondFieldName);

			if (firstDate == null || secondDate == null) {
				cvc.buildConstraintViolationWithTemplate(errorMessage)
						.addNode(secondFieldName).addConstraintViolation();
				return false;
			} else {
				if (secondDate.isAfter(firstDate) || secondDate.isEqual(firstDate)) {
					return true;
				} else {
					cvc.buildConstraintViolationWithTemplate(errorMessage)
							.addNode(secondFieldName).addConstraintViolation();
					return false;
				}

			}
		} catch (final Exception ignore) {
			ignore.printStackTrace();
		}
		return false;
	}
}
