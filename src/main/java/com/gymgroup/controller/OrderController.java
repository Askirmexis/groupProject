package com.gymgroup.controller;


import com.gymgroup.entities.Product;
import com.gymgroup.entities.ProductEditor;
import com.gymgroup.service.OrderDetail;
import com.gymgroup.service.OrderService;
import com.gymgroup.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    OrderService service;

    @Autowired
    ProductService ownService;

    @GetMapping("/products")
    public String showProducts(OrderDetail orderDetail, Model model) {

        model.addAttribute("productList", productList());
        return "selectProducts";
    }

    @ModelAttribute("productsList")
    public List<Product> productList() {
        List<Product> products = service.getProducts();
        return products;
    }

    @InitBinder//Create customEditor for converting String to Product
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(Product.class,
                new ProductEditor(service));
    }

    @PostMapping("/cart")
    public String checkout(@ModelAttribute("orderDetail") @Valid OrderDetail orderDetail, BindingResult result, Model model) {
   try {

       if (result.hasErrors()) {
           model.addAttribute("productList", productList());
           return "selectProducts";
       }
       for (Product p : orderDetail.getProducts()) {
           System.out.println(p);
       }
       orderDetail = service.prepareOrderDetail(orderDetail);
       model.addAttribute("orderDetail", orderDetail);
   }catch (NullPointerException e){
       System.err.println("error happened here");
   }
        return "checkout";
    }

}
