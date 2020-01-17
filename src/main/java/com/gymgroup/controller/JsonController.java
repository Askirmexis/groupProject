package com.gymgroup.controller;


import com.gymgroup.entities.Product;
import com.gymgroup.service.OrderDetail;
import com.gymgroup.service.OrderService;
import com.gymgroup.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/json")
public class JsonController {

    @Autowired
    ProductService service;

    @Autowired
    OrderService orderServiceservice;

    @GetMapping
    public ResponseEntity<List<Product>> AllProducts() {
        List<Product> list = service.getAllProducts();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/treadmills")
    public ResponseEntity<List<Product>> Treadmills() {

        List<Product> list = service.getTreadmills();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/elliptical")
    public ResponseEntity<List<Product>> getElliptical() {
        List<Product> list = service.getElliptical();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/bikes")
    public ResponseEntity<List<Product>> getBikes() {
        List<Product> list = service.getBikes();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/productDetails/{id}")
    public ResponseEntity<Product> get(@PathVariable("id") int id) {
        Product s = service.findProductById(id);
        return ResponseEntity.ok().body(s);
    }


//    @GetMapping("/add")
//    public String test() {
//        return "user added";
//    }

}
