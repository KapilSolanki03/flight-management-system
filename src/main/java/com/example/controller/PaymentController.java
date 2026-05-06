package com.example.controller;

import com.example.model.Booking;
import com.example.service.BookingService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class PaymentController {

    @Autowired
    private BookingService bookingService;

    // 1️⃣ PAYMENT PAGE (GET)
    @GetMapping("/payment")
    public String paymentPage(HttpSession session, Model model) {

        // booking session se uthao
        Booking booking = (Booking) session.getAttribute("booking");

        // safety check
        if (booking == null) {
            return "redirect:/";
        }

        model.addAttribute("booking", booking);
        return "payment";   // payment.jsp
    }

    // 2️⃣ PAY NOW (POST)
    @PostMapping("/confirmPayment")
    public String confirmPayment(HttpSession session, Model model) {

        Booking booking = (Booking) session.getAttribute("booking");

        if (booking == null) {
            return "redirect:/";
        }

        // ✅ PAYMENT SUCCESS
        booking.setPaymentStatus("SUCCESS");

        // DB update
        bookingService.updateBooking(booking);

        // success page ke liye data
        model.addAttribute("booking", booking);

        // session clear (VERY IMPORTANT)
        session.removeAttribute("booking");

        return "success";   // success.jsp
    }
}
