package com.example.service;

import com.example.dto.BookingRequest;
import com.example.model.Booking;
import com.example.repository.BookingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookingService {

    @Autowired
    private BookingRepository bookingRepository;

    /**
     * 1️⃣ Save booking (called from BookingController)
     * Initial payment status = PENDING
     */
    public Booking saveBooking(BookingRequest req) {

        Booking booking = new Booking();

        booking.setPassengerName(req.getPassengerName());
        booking.setAge(req.getAge());
        booking.setGender(req.getGender());
        booking.setMobile(req.getMobile());
        booking.setFromCity(req.getFromCity());
        booking.setToCity(req.getToCity());
        booking.setFlightName(req.getFlightName());
        booking.setSeatType(req.getSeatType());
        booking.setPrice(req.getPrice());

        if (req.getTravelDate() != null) {
            booking.setTravelDate(req.getTravelDate().toString());
        }

        // 🔥 initial state
        booking.setPaymentStatus("PENDING");

        return bookingRepository.save(booking);
    }

    /**
     * 2️⃣ Update booking (called from PaymentController)
     * Payment SUCCESS / FAILED
     */
    public Booking updateBooking(Booking booking) {
        return bookingRepository.save(booking);
    }
}
