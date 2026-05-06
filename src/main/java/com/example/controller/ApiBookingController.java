 package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.model.Booking;
import com.example.repository.BookingRepository;

@RestController
@RequestMapping("/api/bookings")
public class ApiBookingController {

    @Autowired
    private BookingRepository repo;

    // ✅ Get all bookings
    @GetMapping
    public List<Booking> getAll() {
        return repo.findAll();
    }

    // ✅ Cancel booking by id
    @DeleteMapping("/{id}")
    public void cancel(@PathVariable Long id) {
        repo.deleteById(id);
    }
}
