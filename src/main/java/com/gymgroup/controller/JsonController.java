package com.gymgroup.controller;

import com.gymgroup.entities.Contact;
import com.gymgroup.entities.Product;
import com.gymgroup.entities.ShipmentInfo;

import com.gymgroup.service.ContactService;
import com.gymgroup.service.OrderService;
import com.gymgroup.service.ProductService;
import com.gymgroup.service.ShipmentInfoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


import java.util.List;

@RestController
@RequestMapping("/json")
public class JsonController {

    @Autowired
    ProductService service;

    @Autowired
    OrderService orderServiceservice;

    @Autowired
    ContactService contactService;

    @Autowired
    ShipmentInfoService shipmentService;

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

    @GetMapping("/benches")
    public ResponseEntity<List<Product>> getBenches() {
        List<Product> list = service.getBenches();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/rowers")
    public ResponseEntity<List<Product>> getRowers() {
        List<Product> list = service.getRowers();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/weights")
    public ResponseEntity<List<Product>> getWeightBars() {
        List<Product> list = service.getWeightBars();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/kettlebells")
    public ResponseEntity<List<Product>> getKettlebell() {
        List<Product> list = service.getKettlebell();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/dumbbells")
    public ResponseEntity<List<Product>> getDumbbell() {
        List<Product> list = service.getDumbbell();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/multigyms")
    public ResponseEntity<List<Product>> getMultigyms() {
        List<Product> list = service.getMultigyms();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/tools")
    public ResponseEntity<List<Product>> getTools() {
        List<Product> list = service.getTools();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/productDetails/{id}")
    public ResponseEntity<Product> get(@PathVariable("id") int id) {
        Product s = service.findProductById(id);
        return ResponseEntity.ok().body(s);
    }

    @GetMapping("/cardio")
    public ResponseEntity<List<Product>> getCardio() {
        List<Product> list = service.getCardio();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/strength")
    public ResponseEntity<List<Product>> getStrength() {
        List<Product> list = service.getStrength();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/functionality")
    public ResponseEntity<List<Product>> getFunctionality() {
        List<Product> list = service.getFunctionality();
        return ResponseEntity.ok().body(list);
    }

    @GetMapping("/contact")
    public ResponseEntity<List<Contact>> getMessages() {
        List<Contact> list = contactService.findAllMessages();
        return ResponseEntity.ok().body(list);
    }

    @PostMapping("/createShipping")
    public ResponseEntity<Shipmentinfo> getShippingInfo(ShipmentInfo shipmentinfo) {
        shipmentService.save(shipmentinfo);
        return null;
    }

}
