package com.swp.entity;

import java.util.List;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Shells")
public class Shell {
	@Id
	@Column(name = "ShellID")
	private String shellId;
	private String material;
	private String name;
	private float price;
	private int quantity;
	@OneToMany(mappedBy = "shellId")
	private List<Product> products;

	@Override
	public int hashCode() {
		return Objects.hash(material, name, price, products, quantity, shellId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Shell other = (Shell) obj;
		return Objects.equals(material, other.material) && Objects.equals(name, other.name)
				&& Float.floatToIntBits(price) == Float.floatToIntBits(other.price)
				&& Objects.equals(products, other.products) && quantity == other.quantity
				&& Objects.equals(shellId, other.shellId);
	}

	@Override
	public String toString() {
		return "Shell [shellId=" + shellId + ", material=" + material + ", name=" + name + ", price=" + price
				+ ", quantity=" + quantity + ", products=" + products + "]";
	}

}
