package com.swp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.swp.entity.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, String> {
	@Query(nativeQuery = true, value = "SELECT order.* FROM [Orders] order WHERE order.AccountID = :AccountID")
	List<Order> findOrdersByUserID(@Param("AccountID")String userId);
}
