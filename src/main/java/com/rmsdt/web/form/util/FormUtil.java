/*
 * 
 */
package com.rmsdt.web.form.util;

/**
 * Web form util
 * 
 * @author sambitc
 *
 */
public class FormUtil {

	public String getAddressFrom(int id) {

		String formHTML = "" + "<form id=\"form"
				+ (id)
				+ "\" class=\"form-basic-grey addressForm\">"
				+

				"<label id=\"errLbl"
				+ id
				+ "\" class=\"validation\">"
				+ "</label>"
				+ "<label>"
				+ "    <span>House no. :</span>"
				+ "    <input type=\"text\" name=\"houseNumber\"/>"
				+ "</label>"
				+ "<label>"
				+ "   <span>Street :</span>"
				+ "    <input type=\"text\" name=\"street\"/>"
				+ "</label>"
				+ "<label>"
				+ "   <span>City :</span>"
				+ "    <input type=\"text\" name=\"city\"/>"
				+ "</label>"
				+ "<label>"
				+ "    <span>State :</span>"
				+ "    <input type=\"text\" name=\"state\"/>"
				+ "</label>"
				+ "<label>"
				+ "    <span>Country :</span>"
				+ "    <input type=\"text\" name=\"country\"/>"
				+ "</label>"
				+ "<label>"
				+ "    <span>Pin Code :</span>"
				+ "    <input type=\"text\" name=\"postalCode\"/>"
				+ "</label>"
				
				+ "<label>"
				+ "<span id=\"location\">Location :</span>"
				+ "<input id=\"lat" + id + "\" type=\"text\" name=\"lat\" disabled=\"disabled\" style=\"width: 300px;\"/>"
				+ "<input id=\"lng" + id + "\" type=\"text\" name=\"lng\" disabled=\"disabled\"/>"
				+ "<img id=\"showMap"+ id + "\" class=\"showMap\" alt=\"Not Found\" src=\"mapImageUrl\"/>"
				+ "</label>" 
				
				+ "<div id=\"" + id + "\" class=\"submit\">"
				+ "	<label class=\"btn\" id=\"lbl" + id + "\">Save</label>"
				+ "</div>" + "</form>";

		return formHTML;
	}
}
