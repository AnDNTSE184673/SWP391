package com.swp.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.swp.dto.UserDTO;
import com.swp.service.UserService;
@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/users")
public class UserController {
	private UserService userService;

	public UserController(UserService userService) {
		super();
		this.userService = userService;
	}

	// RestAPI: Add user
	@PostMapping
	public ResponseEntity<UserDTO> createUser(@RequestBody UserDTO userDTO) {
		UserDTO savedUser = userService.createUser(userDTO);
		return new ResponseEntity<>(savedUser, HttpStatus.CREATED);
	}

	// Get UserById
	@GetMapping("{id}")
	public ResponseEntity<UserDTO> getUserById(@PathVariable("id") String id) {
		if (id == null || id.trim().isEmpty()) {
			// Return an appropriate response or throw a custom exception
			return ResponseEntity.badRequest().body(null);
		}
		UserDTO userDTO = userService.getUserById(id);
		return ResponseEntity.ok(userDTO);
	}

	// GetAllUser
	@GetMapping
	public ResponseEntity<List<UserDTO>> getAllUser() {
		List<UserDTO> users = userService.getAllUser();
		return ResponseEntity.ok(users);
	}
	
	//GetUserByEmail
	@GetMapping(params = "email")
	public ResponseEntity<UserDTO> getUserByEmail(@RequestParam String email){
		if(email == null||email.trim().isEmpty()) {
			return ResponseEntity.badRequest().body(null);
		}
		UserDTO userDTO = userService.getUserByEmailOrName(email);
		return ResponseEntity.ok(userDTO);
	}
	
	// UpdateUser
	@PutMapping("{id}")
	public ResponseEntity<UserDTO> updateUser(@PathVariable("id") String accountId, @RequestBody UserDTO updatedUser) {
		UserDTO user = userService.updateUser(accountId, updatedUser);
		return ResponseEntity.ok(user);
	}

	// DeleteUserById
	@DeleteMapping("{id}")
	public ResponseEntity<String> deleteUser(@PathVariable("id") String accountId) {
		userService.deleteUser(accountId);
		return ResponseEntity.ok("User of this id " + accountId + " has been deleted");
	}
}
