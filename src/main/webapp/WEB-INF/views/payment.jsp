<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>Payment</title>

<style>
body{
  font-family:Segoe UI, Arial;
  background:#f4f7fb;
}
.box{
  width:480px;
  margin:100px auto;
  background:#ffffff;
  padding:30px;
  border-radius:10px;
  box-shadow:0 10px 25px rgba(0,0,0,.15);
  text-align:center;
}
h2{
  margin-bottom:20px;
  color:#0b3c5d;
}
.details{
  text-align:left;
  margin:20px 0;
}
.details p{
  font-size:16px;
  margin:8px 0;
}
.amount{
  font-size:20px;
  font-weight:bold;
  color:#007b5e;
  margin-top:15px;
}
button{
  margin-top:20px;
  padding:14px 35px;
  font-size:18px;
  background:#0b3c5d;
  color:#fff;
  border:none;
  border-radius:6px;
  cursor:pointer;
}
button:hover{
  background:#082f48;
}
.note{
  margin-top:18px;
  font-size:14px;
  color:#777;
}
</style>
</head>

<body>

<div class="box">
  <h2>💳 Payment Page</h2>

  <div class="details">
    <p><b>Passenger Name:</b> ${booking.passengerName}</p>
    <p><b>Flight Name:</b> ${booking.flightName}</p>
    <p><b>Seat Type:</b> ${booking.seatType}</p>
    <p><b>From:</b> ${booking.fromCity}</p>
    <p><b>To:</b> ${booking.toCity}</p>
  </div>

  <div class="amount">
    Amount Payable: ₹ ${booking.price}
  </div>

  <!-- 🔥 bookingId ab SESSION se aayega -->
  <form action="confirmPayment" method="post">
      <button type="submit">Pay Now</button>
  </form>

  <div class="note">
    If you close or refresh this page,<br>
    payment status will remain <b>PENDING</b>.
  </div>
</div>

</body>
</html>
