//package com.gymgroup.controller;
//
//
//import com.gymgroup.service.OrderDetail;
//import com.gymgroup.service.PaypalService;
//import com.paypal.api.payments.PayerInfo;
//import com.paypal.api.payments.Payment;
//import com.paypal.api.payments.ShippingAddress;
//import com.paypal.api.payments.Transaction;
//import com.paypal.base.rest.PayPalRESTException;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//@Controller
//public class PaypalController {
//
//    @Autowired
//    PaypalService service;
//
//    @GetMapping("/cancel")
//    public String cancelPay() {
//        return "cancel";
//    }
//
//    @GetMapping("/checkout")
//    public String checkout() {
//        return "checkout";
//    }
//    
//    @PostMapping("/authorize_payment")
//    public String authorizePayment(@ModelAttribute OrderDetail orderDetail, Model model){
//        System.out.println("OrderDetail="+orderDetail);
//        try {
//            String approvalLink = service.authorizePayment(orderDetail);
//            System.out.println("approvalLink==="+approvalLink);
//            return "redirect:"+approvalLink;
//            
//        } catch (PayPalRESTException ex) {
//            Logger.getLogger(PaypalController.class.getName()).log(Level.SEVERE, null, ex);
//            model.addAttribute("errorMessage", ex.getMessage());
//            return "error";
//        }
//    }
//    
//    @GetMapping("/review_payment")
//    public String reviewPayment(Model model,
//                                @RequestParam("paymentId") String paymentId,
//                                @RequestParam("PayerID") String payerId) {
//        try {
//            Payment payment = service.getPaymentDetails(paymentId);
//            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
//            Transaction transaction = payment.getTransactions().get(0);
//            ShippingAddress shippingAddress = transaction.getItemList().getShippingAddress();
//            model.addAttribute("paymentId", paymentId);
//            model.addAttribute("PayerID", payerId);
//            model.addAttribute("payer", payerInfo);
//            model.addAttribute("transaction", transaction);
//            model.addAttribute("shippingAddress", shippingAddress);
//            return "review";
//        } catch (PayPalRESTException ex) {
//            Logger.getLogger(PaypalController.class.getName()).log(Level.SEVERE, null, ex);
//            model.addAttribute("errorMessage", ex.getMessage());
//            return "error";
//        }
//    }
//    @PostMapping("/execute_payment")
//    public String executePayment(Model model,
//                                 @RequestParam("paymentId") String paymentId,
//                                 @RequestParam("PayerID") String payerId){
//        try {
//            Payment payment = service.executePayment(paymentId, payerId);
//            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
//            Transaction transaction = payment.getTransactions().get(0);
//            model.addAttribute("payer", payerInfo);
//            model.addAttribute("transaction", transaction);
//            return "receipt";
//        } catch (PayPalRESTException ex) {
//            Logger.getLogger(PaypalController.class.getName()).log(Level.SEVERE, null, ex);
//            model.addAttribute("errorMessage", ex.getMessage());
//            return "error";
//        }
//    }
//}
