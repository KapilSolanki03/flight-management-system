<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SkyFly – Premium Flight Booking</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
/* CSS RESET & MODERN STYLING */
* { box-sizing: border-box; transition: all 0.3s ease; }
body {
    margin: 0;
    font-family: 'Poppins', sans-serif;
    background: #f0f4f8; /* Soft Premium Grey */
    color: #2d3436;
}

/* PREMIUM HERO SECTION */
.header {
    background: linear-gradient(135deg, rgba(11, 60, 93, 0.9), rgba(28, 103, 151, 0.8)),
                url("https://images.unsplash.com/photo-1436491865332-7a61a109c0f3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80");
    background-size: cover;
    background-position: center;
    color: #fff;
    padding: 100px 20px;
    text-align: center;
    clip-path: polygon(0 0, 100% 0, 100% 85%, 0% 100%); /* Stylish Cut */
}
.header h1 { margin: 0; font-size: 50px; font-weight: 700; letter-spacing: 2px; }
.header p { margin-top: 15px; font-size: 20px; font-weight: 300; opacity: 0.9; }

/* INTRO */
.intro {
    max-width: 800px;
    margin: -40px auto 40px;
    background: white;
    padding: 20px 40px;
    border-radius: 50px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.1);
    text-align: center;
    color: #636e72;
    position: relative;
    z-index: 10;
}

/* MAIN LAYOUT */
.main {
    display: flex;
    justify-content: center;
    gap: 40px;
    margin: 20px auto;
    max-width: 1200px;
    padding: 20px;
    flex-wrap: wrap;
}

.info {
    flex: 1;
    min-width: 350px;
    padding: 40px;
    background: transparent;
}
.info h2 { font-size: 32px; color: #0b3c5d; border-bottom: 3px solid #ff9f43; display: inline-block; padding-bottom: 5px; }
.info ul { list-style: none; padding: 0; margin-top: 30px; }
.info li { margin-bottom: 15px; font-size: 16px; display: flex; align-items: center; }
.info li::before { content: "✈️"; margin-right: 15px; font-size: 20px; }

/* BOOKING CARD */
.card {
    flex: 1;
    min-width: 400px;
    background: #ffffff;
    padding: 40px;
    border-radius: 20px;
    box-shadow: 0 20px 50px rgba(11, 60, 93, 0.15);
    border: 1px solid rgba(255,255,255,0.2);
}
.card h2 { text-align: center; margin-bottom: 30px; font-weight: 700; color: #0b3c5d; }

label { font-weight: 600; font-size: 13px; text-transform: uppercase; color: #0b3c5d; margin-top: 15px; display: block; }

input, select {
    width: 100%;
    padding: 12px 15px;
    margin-top: 8px;
    border: 2px solid #e0e6ed;
    border-radius: 8px;
    background: #f9fbff;
    outline: none;
    font-family: inherit;
}
input:focus, select:focus { border-color: #0b3c5d; background: #fff; box-shadow: 0 0 8px rgba(11,60,93,0.1); }

.price-box {
    background: #0b3c5d;
    color: #ff9f43; /* Gold price */
    padding: 15px;
    border-radius: 8px;
    margin-top: 10px;
    font-size: 22px;
    text-align: center;
    box-shadow: inset 0 2px 5px rgba(0,0,0,0.2);
}

button {
    background: linear-gradient(to right, #0b3c5d, #1c6797);
    color: #fff;
    border: none;
    margin-top: 30px;
    padding: 15px;
    font-size: 18px;
    font-weight: 700;
    border-radius: 8px;
    cursor: pointer;
    text-transform: uppercase;
    letter-spacing: 1px;
}
button:hover {
    transform: translateY(-3px);
    box-shadow: 0 10px 20px rgba(11,60,93,0.3);
    background: linear-gradient(to right, #1c6797, #0b3c5d);
}

.note { margin-top: 15px; font-size: 12px; color: #b2bec3; text-align: center; }

/* TRUST BADGES */
.trust {
    max-width: 1100px;
    margin: 50px auto;
    background: #fff;
    padding: 30px;
    border-radius: 20px;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 20px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.05);
}
.trust div { text-align: center; padding: 10px; }
.trust strong { display: block; font-size: 24px; color: #0b3c5d; margin-bottom: 5px; }
.trust span { font-size: 14px; color: #636e72; }

/* FOOTER */
.footer {
    background: #0b3c5d;
    color: #fff;
    text-align: center;
    padding: 40px 20px;
    margin-top: 60px;
}
.footer p { margin: 5px 0; opacity: 0.8; font-size: 14px; }

/* Mobile Responsive */
@media (max-width: 768px) {
    .header h1 { font-size: 32px; }
    .main { flex-direction: column; }
    .card { min-width: 100%; }
}
</style>
</head>

<body>

<div class="header">
  <h1>✈️ SKYFLY AIRLINES</h1>
  <p>Experience the Skies with Luxury & Comfort</p>
</div>

<div class="intro">
  <strong>Premium Flight Booking Platform:</strong> Connect major Indian cities with the fastest routes. 
  Real-time pricing, Instant confirmations, and Top-tier safety.
</div>

<div class="main">

  <div class="info">
    <h2>Travel the World</h2>
    <ul>
      <li>Fastest Domestic Connectivity</li>
      <li>Complimentary In-flight Meals</li>
      <li>Seamless Refund Policy</li>
      <li>Priority Boarding for Business Class</li>
    </ul>
    <p style="color: #636e72; margin-top: 20px;">
      SkyFly Airlines is committed to providing a secure and comfortable journey. Join over 2 million happy travelers this year.
    </p>
    <img src="https://cdn-icons-png.flaticon.com/512/3125/3125713.png" width="100" style="margin-top: 20px; opacity: 0.5;">
  </div>

  <div class="card">
    <h2>Book Your Journey</h2>

    <form action="bookFlight" method="post" target="_blank">

      <label>Passenger Name</label>
      <input type="text" name="passengerName" placeholder="Enter Full Name" required>

      <div style="display:flex; gap:10px;">
        <div style="flex:1;">
          <label>Age</label>
          <input type="number" name="age" min="1" max="100" required>
        </div>
        <div style="flex:1;">
          <label>Gender</label>
          <select name="gender" required>
            <option value="">Select</option>
            <option>Male</option>
            <option>Female</option>
            <option>Other</option>
          </select>
        </div>
      </div>

      <label>Mobile Number</label>
      <input type="text" name="mobile" maxlength="10" placeholder="10-digit mobile" oninput="this.value=this.value.replace(/[^0-9]/g,'')" required>

      <div style="display:flex; gap:10px;">
        <div style="flex:1;">
          <label>From City</label>
          <input list="fromCities" id="fromCity" name="fromCity" onchange="calculatePrice()" placeholder="Departure" required>
        </div>
        <div style="flex:1;">
          <label>To City</label>
          <input list="toCities" id="toCity" name="toCity" onchange="calculatePrice()" placeholder="Destination" required>
        </div>
      </div>

      <datalist id="fromCities">
          <option value="Delhi"> <option value="Mumbai"> <option value="Bangalore">
          <option value="Chennai"> <option value="Kolkata"> <option value="Hyderabad">
      </datalist>
      <datalist id="toCities">
          <option value="Delhi"> <option value="Mumbai"> <option value="Bangalore">
          <option value="Chennai"> <option value="Kolkata"> <option value="Hyderabad">
      </datalist>

      <label>Preferred Airline</label>
      <select name="flightName" required>
        <option>IndiGo</option>
        <option>Air India</option>
        <option>Vistara</option>
        <option>Akasa Air</option>
        <option>SpiceJet</option>
      </select>

      <label>Class of Travel</label>
      <select id="seatType" name="seatType" onchange="calculatePrice()" required>
        <option value="">Select Class</option>
        <option value="Economy">Economy</option>
        <option value="Business">Business</option>
        <option value="First">First Class</option>
      </select>

      <label>Estimated Fare</label>
      <div class="price-box">
        ₹ <input type="text" id="price" name="price" readonly 
                 style="border:none; background:transparent; color:#ff9f43; font-weight:bold; width:150px; font-size:22px; outline:none;">
      </div>

      <label>Travel Date</label>
      <input type="date" name="travelDate" required>

      <button type="submit">Confirm & Proceed to Payment</button>
    </form>

    <div class="note">
      🔒 Your booking is secured with SSL encryption.
    </div>
  </div>
</div>

<div class="trust">
  <div><strong>20+</strong><span>Destinations</span></div>
  <div><strong>5+</strong><span>Elite Airlines</span></div>
  <div><strong>100%</strong><span>Secure Gateway</span></div>
  <div><strong>24/7</strong><span>Customer Support</span></div>
</div>

<div class="footer">
  <p>© 2026 SkyFly Airlines Private Limited</p>
  <p>Safe Skies • Happy Journeys</p>
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

  // Same logic as your original code
  let baseDistance=Math.abs(from.charCodeAt(0)-to.charCodeAt(0))*120+800;
  let price=baseDistance*5;
  if(seat==="Business") price+=2000;
  if(seat==="First") price+=4000;

  document.getElementById("price").value=Math.round(price);
}
</script>

</body>
</html>