/**
 * 
 */
package com.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * @author Fatih Totrakanlı
 *
 */

//Crud operasyonları için service katmanında gerekli methodlar tanımlanmıştır.
@Service
public class UserServiceImpl{

	private IUser userRepo;
	
	//Spring Setter Injection
	@Autowired
	public void setUserRepo(IUser userRepo) {
		this.userRepo = userRepo;
	}

	//Tüm kullanıcıları listeler
	public Iterable<User> listAllUsers() {
		return userRepo.findAll();
	}

	//"id" bilgisine göre bir kullanıcı getirir.

	public User getUserById(long id) {
		return userRepo.findOne(id);
	}

	//Kullanıcı bilgisini kaydeder.
	
	public User saveUser(User user) {
		return userRepo.save(user);
	}
	
	//"id" bilgisine göre kullanıcıyı siler.
	
	public void deleteUser(long id) {
		
		 userRepo.delete(id);
		
	}

	
}
