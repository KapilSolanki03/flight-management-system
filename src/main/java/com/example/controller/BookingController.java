package com.example.controller;

import com.example.dto.BookingRequest;
import com.example.model.Booking;
import com.example.service.BookingService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class BookingController {

    @Autowired
    private BookingService bookingService;

    @GetMapping("/")
    public String showForm() {
        return "booking";
    }

    // Booking confirm (NEW TAB)
    @PostMapping("/bookFlight")
    public String bookFlight(
            @ModelAttribute BookingRequest bookingRequest,
            HttpSession session) {

        Booking booking = bookingService.saveBooking(bookingRequest);

        // 🔥 Booking data SESSION me save
        session.setAttribute("booking", booking);

        // NEW TAB me payment page open hoga
        return "payment";
    }
}
