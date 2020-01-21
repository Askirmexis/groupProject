package com.gymgroup.controller;

import com.gymgroup.entities.Contact;
import com.gymgroup.entities.Orderdetails;
import com.gymgroup.entities.Orders;
import com.gymgroup.entities.Product;
import com.gymgroup.entities.ShipmentInfo;

import com.gymgroup.service.ContactService;

import com.gymgroup.service.OrderDetailsService;
import com.gymgroup.service.OrderService;
import com.gymgroup.service.OrdersService;
import com.gymgroup.service.PaypalService;
import com.gymgroup.service.ProductService;
import com.gymgroup.service.ShipmentInfoService;
import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.ShippingAddress;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.PayPalRESTException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.ui.Model;

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
    
    @Autowired
    OrdersService oservice;
    
    @Autowired
    OrderDetailsService odservice;

    @GetMapping
    public ResponseEntity<List<Product>> AllProducts() {
        List<Product> list = service.getAllProducts();
        return ResponseEntity.ok().body(list);
    }
    @GetMapping("/products")
    public ResponseEntity<List<Product>> AllProducts2() {
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

    @GetMapping("/bars")
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

    @GetMapping("/messages")
    public ResponseEntity<List<Contact>> getMessages() {
        List<Contact> list = contactService.findAllMessages();
        return ResponseEntity.ok().body(list);
    }
    
    @Autowired
    PaypalService pservice;
    
    private ShipmentInfo lastshipment;
    private Orders lastOrder;
    
    private Model model;
    
    @RequestMapping(value = "/createShipping",
            produces = "application/json",
            method = RequestMethod.POST)
    public ResponseEntity<ShipmentInfo> create(@RequestBody ShipmentInfo sinfo) {
        System.out.println("JSON OK");
        shipmentService.save(sinfo);
        lastshipment = sinfo;
        System.out.println("1111111111111sinfo="+sinfo);
        System.out.println(lastshipment.getShipid());
        return ResponseEntity.ok().body(sinfo);
    }
    
    @RequestMapping(value = "/createOrder",
            produces = "application/json",
            method = RequestMethod.POST)
    public ResponseEntity<Orders> create(@RequestBody Orders order) {
        
        System.out.println("ORDERS OK");
        
        
        order.setShipmentInfoByShipmentid(lastshipment);
        System.out.println(order.getTotalPrice());
        
        
        oservice.save(order);
        lastOrder = order;
        return ResponseEntity.ok().body(order);
    }
    
    @RequestMapping(value = "/createDetails",
            produces = "application/json",
            method = RequestMethod.POST)
    public ResponseEntity<Orderdetails> create(@RequestBody Orderdetails orderDetails) {
        
        System.out.println("ORDERDETAILS OK");
        System.out.println("LAST ORDER:-------------" + lastOrder);
        System.out.println("THISDETAILS: -------------" + orderDetails);
        
        orderDetails.setOrderId(lastOrder);
        
        System.out.println("THIS DETAILS AFTER ORDERINPUT !! ---"  + orderDetails);
        
        odservice.save(orderDetails);
        
        return ResponseEntity.ok().body(orderDetails);
        
        
    }
    
    
    
//    @PostMapping("/payment/authorize")
//    public String authorizePayment(){
//        System.out.println("OrderDetail="+paypal);
//        try {
//            String approvalLink = pservice.authorizePayment(paypal);
//            System.out.println("approvalLink==="+approvalLink);
//            return "redirect:"+approvalLink;
//            
//        } catch (PayPalRESTException ex) {
//            Logger.getLogger(PaypalController.class.getName()).log(Level.SEVERE, null, ex);
//            model.addAttribute("errorMessage", ex.getMessage());
//            return "error";
//        }
//    }

    @GetMapping("/payment/cancel")
    public String cancelPay() {
        return "cancel";
        
    }

   
    
//    @PostMapping("/authorize_payment")
//    public String authorizePayment(@ModelAttribute OrderDetail orderDetail, Model model){
//        System.out.println("OrderDetail="+orderDetail);
//        try {
//            String approvalLink = pservice.authorizePayment(orderDetail);
//            System.out.println("approvalLink==="+approvalLink);
//            return "redirect:"+approvalLink;
//            
//        } catch (PayPalRESTException ex) {
//            Logger.getLogger(PaypalController.class.getName()).log(Level.SEVERE, null, ex);
//            model.addAttribute("errorMessage", ex.getMessage());
//            return "error";
//        }
//    }
    
//    @GetMapping("/review_payment")
//    public String reviewPayment(Model model,
//                                @RequestParam("paymentId") String paymentId,
//                                @RequestParam("PayerID") String payerId) {
//        try {
//            Payment payment = pservice.getPaymentDetails(paymentId);
//            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
//            Transaction transaction = payment.getTransactions().get(0);
//            ShippingAddress shippingAddress = transaction.getItemList().getShippingAddress();
//            model.addAttribute("paymentId", paymentId);
//            model.addAttribute("PayerID", payerId);
//            model.addAttribute("payer", payerInfo);
//            model.addAttribute("transaction", transaction);
//            model.addAttribute("shippingAddress", shippingAddress);
//            return "review";
//            } catch (PayPalRESTException ex) {
//            Logger.getLogger(PaypalController.class.getName()).log(Level.SEVERE, null, ex);
//            model.addAttribute("errorMessage", ex.getMessage());
//            return "error";
//        }
//    }
    @PostMapping("/execute_payment")
    public String executePayment(Model model,
                                 @RequestParam("paymentId") String paymentId,
                                 @RequestParam("PayerID") String payerId){
        try {
            Payment payment = pservice.executePayment(paymentId, payerId);
            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
            Transaction transaction = payment.getTransactions().get(0);
            model.addAttribute("payer", payerInfo);
            model.addAttribute("transaction", transaction);
            return "receipt";
        } catch (PayPalRESTException ex) {
            Logger.getLogger(PaypalController.class.getName()).log(Level.SEVERE, null, ex);
            model.addAttribute("errorMessage", ex.getMessage());
            return "error";
        }
    }
    
}
