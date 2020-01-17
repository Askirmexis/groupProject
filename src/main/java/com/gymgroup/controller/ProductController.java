package com.gymgroup.controller;

import com.gymgroup.entities.Product;
import com.gymgroup.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/products")
public class ProductController {

    @Autowired
    ProductService productService;

    @GetMapping()
    public String viewProduct() {
        return "allproducts";
    }

    @GetMapping("/treadmills")
    public String viewTreadmill() {
        return "treadmills";
    }

    @GetMapping("/elliptical")
    public String viewElliptical() {
        return "elliptical";
    }

    @GetMapping("/bikes")
    public String viewBike() {
        return "bikes";
    }

    @GetMapping("/rower")
    public String viewRowers() {
        return "rower";
    }

    @GetMapping("/bench")
    public String viewBench() {
        return "bench";
    }

    @GetMapping("/weight-Bars")
    public String viewWeightBars() {
        return "weight-bars";
    }

    @GetMapping("/kettlebell")
    public String viewKettleBell() {
        return "kettlebell";
    }

    @GetMapping("/dumbbell")
    public String viewDumbell() {
        return "dumbbell";
    }

    @GetMapping("/multigyms")
    public String viewMultigyms() {
        return "multigyms";
    }

    @GetMapping("/Tools")
    public String viewTools() {
        return "tools";
    }

    @GetMapping("/brands")
    public String testingStuff() {
        return "brandFilters";
    }

    @GetMapping("/{id}")
    public String get(@PathVariable("id") int id, Model model) {
        Product p = productService.findProductById(id);
        model.addAttribute("productId", p.getProductId());
        model.addAttribute("productName", p.getName());
        return "productDetails";
    }
}
