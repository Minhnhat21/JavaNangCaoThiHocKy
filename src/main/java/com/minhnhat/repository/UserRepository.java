package com.minhnhat.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.minhnhat.entity.Student;
import com.minhnhat.entity.account.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
	
	@Query(value = "select s from User s where (s.username = ?1)")
	List<User> findUserByRoleName(String username);
	
	@Query(value = "select case when count(s)> 0 then true else false end from User s where (s.username = ?1 and s.password = ?2)")
	boolean checkUs(String username, String password);
}
