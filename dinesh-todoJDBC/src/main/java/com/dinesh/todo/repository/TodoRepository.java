package com.dinesh.todo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dinesh.todo.entity.Todo;


public interface TodoRepository extends JpaRepository<Todo, Integer>{
	public List<Todo> findByUsername(String username);
}