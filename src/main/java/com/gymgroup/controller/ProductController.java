package com.gymgroup.controller;

import com.gymgroup.entities.Brand;
import com.gymgroup.entities.Product;
import com.gymgroup.entities.Tags;
import com.gymgroup.service.BrandService;
import com.gymgroup.service.ProductService;
import com.gymgroup.service.TagsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import javax.ws.rs.PathParam;
import java.util.List;

@Controller
@RequestMapping("/products")
public class ProductController {

    @Autowired
    ProductService productService;

    @Autowired
    TagsService tagsService;

    @Autowired
    BrandService brandService;

    @GetMapping()
    public String viewProduct() {
        return "allproducts";
    }

    @GetMapping("/{tag}")
    public String viewElliptical(@PathVariable("tag") String title, Model model) {
        model.addAttribute("tagTitle", title);
        return "treadmills";
    }

    @GetMapping("/product/{id}")
    public String getSingleProduct(@PathVariable("id") int id, Model model) {
        Product p = productService.findProductById(id);
        model.addAttribute("productId", p.getProductId());
        return "productDetails";
    }

    //    @GetMapping("/{title}")
//    public String testMapping(@PathVariable("title") String title) {
//        return "test";
//    }
    @GetMapping("/cardio")
    public String getCardio() {
        return "cardio";
    }
//

    @GetMapping("/strength")
    public String getStrength() {
        return "strength";
    }

    @GetMapping("/functionality")
    public String getFunctionality() {
        return "functionality";
    }

    @GetMapping("/product-form")
    public String showForm(Model m) {
        List<Tags> listTags = tagsService.findAll();
        m.addAttribute("listOfTags", listTags);
        List<Brand> listBrands = brandService.findAll();
        m.addAttribute("listOfBrands", listBrands);
        return "product-form";

    }

}
