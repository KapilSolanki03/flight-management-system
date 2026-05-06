<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>Payment Successful</title>

<style>
body{
  background:#f4f7fb;
  font-family:Segoe UI, Arial;
}
.box{
  width:450px;
  margin:100px auto;
  background:#fff;
  padding:30px;
  border-radius:10px;
  box-shadow:0 10px 25px rgba(0,0,0,.2);
  text-align:center;
}
.success{
  font-size:22px;
  color:#28a745;
  font-weight:bold;
  margin-bottom:15px;
}
.details{
  text-align:left;
  margin-top:20px;
}
.details p{
  margin:6px 0;
  font-size:15px;
}
.btn{
  display:inline-block;
  margin-top:20px;
  padding:12px 25px;
  background:#0b3c5d;
  color:#fff;
  text-decoration:none;
  border-radius:5px;
}
.btn:hover{
  background:#082f48;
}
</style>
</head>

<body>

<div class="box">
  <div class="success">✅ Payment Successful</div>

  <p>Your flight booking has been confirmed.</p>

  <div class="details">
    <p><b>Passenger:</b> ${booking.passengerName}</p>
    <p><b>Flight:</b> ${booking.flightName}</p>
    <p><b>Seat:</b> ${booking.seatType}</p>
    <p><b>From:</b> ${booking.fromCity}</p>
    <p><b>To:</b> ${booking.toCity}</p>
    <p><b>Amount Paid:</b> ₹ ${booking.price}</p>
    <p><b>Status:</b> ${booking.paymentStatus}</p>
  </div>

  <a href="/" class="btn">Book Another Flight</a>
</div>

</body>
</html>
