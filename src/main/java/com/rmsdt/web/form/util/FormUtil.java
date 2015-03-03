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
		
		String formHTML = ""+ 
		"<form id=\"form" + (id-1) + "\" class=\"form-basic-grey\">"+
		"<h1>Add address for event "+
      	"	<span>This is a new event 123</span>"+
		"</h1>"+
		"<label>"+
	    "    <span>House no. :</span>"+
	    "    <input type=\"text\" name=\"houseNumber\"/>"+
    	"</label>"+
    	"<label>"+
	    "   <span>Street :</span>"+
	    "    <input type=\"text\" name=\"street\"/>"+
    	"</label>"+
	    "<label>"+
	    "   <span>City :</span>"+
	    "    <input type=\"text\" name=\"city\"/>"+
    	"</label>"+
    	"<label>"+
	    "    <span>State :</span>"+
	    "    <input type=\"text\" name=\"state\"/>"+
    	"</label>"+
    	"<label>"+
	    "    <span>Country :</span>"+
	    "    <input type=\"text\" name=\"country\"/>"+
    	"</label>"+
    	"<label>"+
	    "    <span>Pin Code :</span>"+
	    "    <input type=\"text\" name=\"postalCode\"/>"+
    	"</label>"+
    	"<div id=\"" + (id-1) + "\" class=\"submit\">"+
		"	<label id=\"lbl" + (id-1) + "\">Save</label>"+
		"</div>"+
	"</form>";

	return formHTML;
	}
}
