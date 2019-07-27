package com.Emart.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Emart.modal.Product;
import com.Emart.services.ProductServiceImpl;

/**
 * Product controller.
 */
@Controller
public class ProductController {

	@Autowired
	private ProductServiceImpl productService;

	public void setProductService(ProductServiceImpl productService) {
		this.productService = productService;
	}

	/**
	 * List all products.
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("products", productService.listAllProducts());
		System.out.println("Returning rpoducts:");
		return "shopdummy";
	}

	@RequestMapping("/m")
	public String p() {
		return "shopdummy";
	}

	@RequestMapping("/contactUs")
	public String contactUs(Model model) {

		return "contactUs";
	}

	/**
	 * View a specific product by its id.
	 *
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("product/{id}")
	public String showProduct(@PathVariable Integer id, Model model) {
		model.addAttribute("product", productService.getProductById(id));
		return "productshow";
	}

	// Afficher le formulaire de modification du Product
	@RequestMapping("product/edit/{id}")
	public String edit(@PathVariable Integer id, Model model) {
		model.addAttribute("product", productService.getProductById(id));
		return "productform";
	}

	/**
	 * New product.
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping("product/new")
	public String newProduct(Model model) {
		model.addAttribute("product", new Product());
		return "productform";
	}

	/**
	 * Save product to database.
	 *
	 * @param product
	 * @return
	 */

	/*
	 * @RequestMapping(value = "product", method = RequestMethod.POST) public String
	 * saveProduct(Product product) { productService.saveProduct(product); return
	 * "redirect:/product/" + product.getId();
	 * 
	 * }
	 */

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("product") @Valid Product p, BindingResult result, Model model) {

				this.productService.saveProduct(p);
				System.out.println("Fail to update:");
			
			return "redirect:/products";
		


	}

	/*
	 * @PostMapping("/product") public String registerUser(@ModelAttribute Product
	 * product, BindingResult bindingResult, HttpServletRequest request) {
	 * productService.saveProduct(product); request.setAttribute("mode",
	 * "MODE_HOME"); return "redirect:/product/" + product.getId(); }
	 */

	/**
	 * Delete product by its id.
	 *
	 * @param id
	 * @return
	 */
	@RequestMapping("product/delete/{id}")
	public String delete(@PathVariable Integer id) {
		productService.deleteProduct(id);
		return "redirect:/products";
	}

}