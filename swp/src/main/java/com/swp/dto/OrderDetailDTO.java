package com.swp.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class OrderDetailDTO {
	private String ordersId;
	private String productsId;
	private float productsSize;
	private int quantity;
	private float price;

	@Override
	public String toString() {
		return "OrderDetailDTO [ordersId=" + ordersId + ", productsId=" + productsId + ", quantity=" + quantity
				+ ", price=" + price + "]";
	}

}
