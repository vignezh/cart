package com.vic.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Component
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	// @NotNull(message = "Id is required")
	private Integer productid;
	@NotNull(message = "Name is required")
	private String productname;
	@NotNull(message = "Quantity is required")
	private Integer productquantity;
	@NotNull(message = "Size is required")
	private Integer productsize;
	@NotNull(message = "Description is required")
	private String productdescription;
	@NotNull(message = "Category is required")
	private String category;
	@NotNull(message = "Price is required")
	private Integer productprice;
	@NotNull(message = "Imagename is required")
	private String imagename;
	@Transient
	private MultipartFile image;
	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
	private List<Product> product;

	// getter and setter for above contents
	public List<Product> getProduct() {
		return product;
	}

	public void setProduct(List<Product> product) {
		this.product = product;
	}

	public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public Integer getProductquantity() {
		return productquantity;
	}

	public void setProductquantity(Integer productquantity) {
		this.productquantity = productquantity;
	}

	public Integer getProductsize() {
		return productsize;
	}

	public void setProductsize(Integer productsize) {
		this.productsize = productsize;
	}

	public String getProductdescription() {
		return productdescription;
	}

	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Integer getProductprice() {
		return productprice;
	}

	public void setProductprice(Integer productprice) {
		this.productprice = productprice;
	}

	public String getImagename() {
		return imagename;
	}

	public void setImagename(String imagename) {
		this.imagename = imagename;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

}
