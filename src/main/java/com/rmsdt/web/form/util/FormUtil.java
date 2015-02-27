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

		String formHTML = "<form id=\"form" + id + "\">";
		formHTML += "<table id=\"tbl" + id + "\">";

		formHTML += "<tr>";
		formHTML += "<td>House no. :</td>";
		formHTML += "<td><b><input type=\"text\" name=\"houseNumber\"/></b>";
		formHTML += "</tr>";
		formHTML += "<tr>";
		formHTML += "<td>Street. :</td>";
		formHTML += "<td><b><input  type=\"text\" name=\"street\" /></b>";
		formHTML += "</tr>";
		formHTML += "<tr>";
		formHTML += "<td>City. :</td>";
		formHTML += "<td><b><input type=\"text\" name=\"city\" /></b>";
		formHTML += "</tr>";
		formHTML += "<tr>";
		formHTML += "<td>State. :</td>";
		formHTML += "<td><b><input type=\"text\" name=\"state\" /></b>";
		formHTML += "</tr>";
		formHTML += "<tr>";
		formHTML += "<td>Country. :</td>";
		formHTML += "<td><b><input type=\"text\" name=\"country\" /></b>";
		formHTML += "</tr>";
		formHTML += "<tr>";
		formHTML += "<td>Pincode. :</td>";
		formHTML += "<td><b><input type=\"text\" name=\"postalCode\" /></b>";
		formHTML += "</tr>";
		formHTML += "<tr>";
		formHTML += "<td></td>";
		formHTML += "<td>";
		formHTML += "<div id=\"" + id + "\" class=\"submit\" style=\"background-color: olive;\">";
		formHTML += "<label id=\"lbl" + id + "\">Save</label>";
		formHTML += "</div>";
		formHTML += "</td>";
		formHTML += "</tr>";
		formHTML += "</table>";
		formHTML += "</form>";

		return formHTML;
	}
}
