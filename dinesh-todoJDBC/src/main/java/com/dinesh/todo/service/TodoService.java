package com.dinesh.todo.service;

import java.time.LocalDate;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dinesh.todo.entity.Todo;
import com.dinesh.todo.repository.TodoRepository;

import jakarta.validation.Valid;

@Service
public class TodoService {
	
	private int todoCount;
	
	@Autowired
	TodoRepository todoRepository;
	
	public List<Todo> findByUsername(String username){
		return todoRepository.findAll();
	}
	
	public void addTodo(String username, String description, LocalDate targetDate, boolean done) {
		Todo todo =new Todo(++todoCount, username,description,targetDate,done);
		todoRepository.save(todo);
	}
	
	public void deleteById(int id) {
		Predicate<? super Todo> predicate = todo -> todo.getId() == id;
		todoRepository.deleteById(id);;
	}

	public Todo findById(int id) {
		Predicate<? super Todo> predicate = todo -> todo.getId() == id;
		Todo todo = todoRepository.findById(id).get();
		return todo;
	}

	public void updateTodo(@Valid Todo todo) {
		deleteById(todo.getId());
		todoRepository.save(todo);
	}
	
}
