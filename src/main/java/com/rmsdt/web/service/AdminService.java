
package com.rmsdt.web.service;

import com.rmsdt.web.model.User;


/**
 * @author Clarence
 *
 */
public interface AdminService {
	public User findAdminByID(Integer id);
	
	public User findAdminByName(String name);

	public User saveAdmin(User user);
	
}
