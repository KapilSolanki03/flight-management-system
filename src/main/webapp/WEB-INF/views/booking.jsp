<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>SkyFly – Book Flights Online</title>

<style>
*{box-sizing:border-box;}
body{margin:0;font-family:'Segoe UI',Arial,sans-serif;background:#f4f7fb;color:#333;}

/* HERO */
.header{
  background:
    linear-gradient(rgba(11,60,93,.75),rgba(11,60,93,.75)),
    url("https://images.unsplash.com/photo-1542291026-7eec264c27ff");
  background-size:cover;
  background-position:center;
  color:#fff;
  padding:70px 20px;
  text-align:center;
}
.header h1{margin:0;font-size:40px;}
.header p{margin-top:12px;font-size:18px;opacity:.95;}

/* INTRO */
.intro{
  max-width:1000px;
  margin:30px auto;
  text-align:center;
  padding:0 20px;
  color:#555;
  line-height:1.7;
}

/* LAYOUT */
.main{display:flex;justify-content:center;gap:30px;margin:40px auto;max-width:1150px;padding:0 20px;}
.info,.card{flex:1;background:#fff;padding:30px;border-radius:12px;}
.info{box-shadow:0 10px 25px rgba(0,0,0,.08);}
.card{box-shadow:0 15px 30px rgba(0,0,0,.18);}

h2{color:#0b3c5d;}
label{font-weight:600;margin-top:10px;display:block;}
input,select,button{width:100%;padding:10px;margin-top:6px;font-size:14px;}
button{background:#0b3c5d;color:#fff;border:none;margin-top:20px;font-size:16px;border-radius:6px;cursor:pointer;}
button:hover{background:#082f48;}
.price-box{background:#eef2f7;padding:10px;border-radius:5px;margin-top:8px;font-weight:bold;}
.note{margin-top:10px;font-size:13px;color:#777;text-align:center;}

/* TRUST */
.trust{
  max-width:1100px;
  margin:40px auto;
  background:#ffffff;
  padding:25px;
  border-radius:12px;
  box-shadow:0 10px 25px rgba(0,0,0,.08);
  display:flex;
  justify-content:space-around;
  text-align:center;
}
.trust div{
  font-size:14px;
  color:#555;
}
.trust strong{
  display:block;
  color:#0b3c5d;
  font-size:18px;
}

/* FOOTER */
.footer{
  background:#0b3c5d;
  color:#fff;
  text-align:center;
  padding:25px 15px;
  margin-top:40px;
  font-size:14px;
}
.footer p{margin:6px 0;opacity:.9;}
</style>
</head>

<body>

<!-- HERO -->
<div class="header">
  <h1>✈️ SkyFly Airlines</h1>
  <p>Book domestic flights across India with real-time pricing & instant confirmation</p>
</div>

<!-- INTRO (ADDED ONLY) -->
<div class="intro">
  SkyFly is a simple and reliable flight booking platform that connects
  major Indian cities with trusted airlines. Select your route, choose
  your seat class and get instant fare calculation with a smooth payment experience.
</div>

<!-- MAIN -->
<div class="main">

  <div class="info">
    <h2>Why Choose SkyFly?</h2>
    <ul>
      <li>✔ Covers most major Indian cities</li>
      <li>✔ Transparent & auto-calculated fares</li>
      <li>✔ Multiple airlines & seat classes</li>
      <li>✔ Fast booking with instant payment</li>
    </ul>
    <p>
      Designed for students and professionals, SkyFly demonstrates a
      real-world flight booking flow similar to commercial airline websites.
    </p>
  </div>

  <!-- FORM (💯 UNCHANGED) -->
  <div class="card">
    <h2>Flight Booking</h2>

    <form action="bookFlight" method="post" target="_blank">

      <label>Passenger Name</label>
      <input type="text" name="passengerName" required>

      <label>Age</label>
      <input type="number" name="age" required>

      <label>Gender</label>
      <select name="gender" required>
        <option value="">Select</option>
        <option>Male</option>
        <option>Female</option>
        <option>Other</option>
      </select>

      <label>Mobile Number</label>
      <input type="text" name="mobile" required>

      <label>From City</label>
      <select id="fromCity" name="fromCity" onchange="calculatePrice()" required>
        <option value="">Select</option>
        <option>Delhi</option><option>Mumbai</option><option>Bangalore</option>
        <option>Chennai</option><option>Kolkata</option><option>Hyderabad</option>
        <option>Pune</option><option>Ahmedabad</option><option>Jaipur</option>
        <option>Kochi</option><option>Goa</option><option>Lucknow</option>
        <option>Patna</option><option>Guwahati</option><option>Srinagar</option>
      </select>

      <label>To City</label>
      <select id="toCity" name="toCity" onchange="calculatePrice()" required>
        <option value="">Select</option>
        <option>Delhi</option><option>Mumbai</option><option>Bangalore</option>
        <option>Chennai</option><option>Kolkata</option><option>Hyderabad</option>
        <option>Pune</option><option>Ahmedabad</option><option>Jaipur</option>
        <option>Kochi</option><option>Goa</option><option>Lucknow</option>
        <option>Patna</option><option>Guwahati</option><option>Srinagar</option>
      </select>

      <label>Flight Name</label>
      <select name="flightName" required>
        <option>IndiGo</option>
        <option>Air India</option>
        <option>Vistara</option>
        <option>Akasa Air</option>
        <option>SpiceJet</option>
      </select>

      <label>Seat Type</label>
      <select id="seatType" name="seatType" onchange="calculatePrice()" required>
        <option value="">Select</option>
        <option value="Economy">Economy</option>
        <option value="Business">Business</option>
        <option value="First">First Class</option>
      </select>

      <label>Total Price</label>
      <div class="price-box">
        ₹ <input type="text" id="price" name="price" readonly
                 style="border:none;background:transparent;">
      </div>

      <label>Travel Date</label>
      <input type="date" name="travelDate" required>

      <button type="submit">Confirm Booking</button>
    </form>

    <div class="note">
      Payment will open in a new tab after booking.
    </div>
  </div>
</div>

<!-- TRUST (ADDED ONLY) -->
<div class="trust">
  <div><strong>20+</strong>Cities Covered</div>
  <div><strong>5+</strong>Airline Partners</div>
  <div><strong>100%</strong>Secure Payments</div>
  <div><strong>Real</strong>Booking Flow</div>
</div>

<!-- FOOTER -->
<div class="footer">
  <p>© 2026 SkyFly Airlines</p>
  <p>Fast • Secure • Reliable Flight Booking Platform</p>
</div>

<script>
function calculatePrice(){
  let from=document.getElementById("fromCity").value;
  let to=document.getElementById("toCity").value;
  let seat=document.getElementById("seatType").value;

  if(!from || !to || !seat || from===to){
    document.getElementById("price").value="";
    return;
  }

  let baseDistance=Math.abs(from.charCodeAt(0)-to.charCodeAt(0))*120+800;
  let price=baseDistance*5;
  if(seat==="Business") price+=2000;
  if(seat==="First") price+=4000;

  document.getElementById("price").value=Math.round(price);
}
</script>

</body>
</html>
