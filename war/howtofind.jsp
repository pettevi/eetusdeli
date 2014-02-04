<!DOCTYPE html>

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link href="/css/header.css" rel="stylesheet" type="text/css" /> 
    <link href="/css/contactbox.css" rel="stylesheet" type="text/css" /> 
    <link href="/menucool/js-image-slider.css" type="text/css" rel="stylesheet" />
    <script src="/menucool/js-image-slider.js" type="text/javascript"></script>
    <title>Cafe</title>
  </head>

<script language="javascript" type="text/javascript">
// this function puts the dark screen over the entire page
function DarkenPage()
{
    var page_screen = document.getElementById('fade');
    page_screen.style.height = document.body.parentNode.scrollHeight + 'px';
    page_screen.style.display = 'block';
    document.getElementById('light').style.display='block';
}

// this function removes the dark screen and the page is light again
function LightenPage()
{
    document.getElementById('light').style.display='none';
    document.getElementById('fade').style.display='none';
}
</script>

  <body>

<div id="light">
  <div id="close">
        <a href="javascript:void(0)" id="closebutton" onclick="LightenPage()">
        <img src="close.png">
        </a>
  </div>

    <h1>Get In Touch!</h1>
    <h2>We would love to hear from you. Please provide your real name and email address 
    and we'll get back to you a.s.a.p. Our Facebook page is also there if you would 
    like to let the world know how we are doing.</h2>  
    
    <form method="post" action="/validate">  
        <label for="name">Name</label>  
        <input type="text" id="name" name="name" value="John Doe" placeholder="John Doe" required="required" autofocus="autofocus" />  
        <label for="email">Email Address</label>  
        <input type="email" id="email" name="email" value="test@example.com" placeholder="johndoe@example.com" required="required" />

        <label for="message">Message</label>  
        <textarea id="message" name="message" placeholder="Type your message here" required="required">Type your message here</textarea>  
          
        <span id="loading"></span>
        <input type="submit" value="Send" id="submit-button" />  
    </form>
</div>

    <%
    String attr = (String) request.getAttribute("formok");
    if (attr != null && attr.compareTo("valid") == 0)
    {%>
      <div id="formok" style="display: block;" onclick="document.getElementById('formok').style.display='none';">
    <%
    } else {
    %>
      <div id="formok" onclick="document.getElementById('formok').style.display='none';">
    <%
    }
    %>
    <h1>Thank You!</h1>
    <h2>Your message is on the way. We will get back to you at the soonest!</h2>  
</div>

<div id="fade" class="fader" onclick="LightenPage()"></div>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/fi_FI/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
  
 
  <div id="container">

  <div id="header">
    <table style="width: 100%;">
    <tr>
      <td id="logo" rowspan="3">
        <a href="index.jsp">
        <img alt="" src="/logo.png" >
        </a>
        </td>
      <td id="slogan">Hot coffee. Cold beer. Served with a smile!
      </td>
    </tr>
      <tr>
        <td id="fbcell">
          <div class="fb-like"
                data-href="https://developers.facebook.com/docs/plugins/"
                data-layout="button_count" data-action="recommend"
                data-show-faces="false" data-share="false">
          </div>
        </td>
        </tr>
        <tr>
        <td id="menucell">
          <div id="menu">
          <ul>
            <li><a href="\">Back to Home</a></li>
          </ul>
          </div>
        </td>
      </tr>    
  </table>
</div>


<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script>
  function initialize() {
    var map_canvas = document.getElementById('map_canvas');
    var map_options = {
      overviewMapControl: false,
      panControl: false,
      rotateControl: false,
      scaleControl: false,
      streetViewControl: false,
      mapTypeControl: false,
      center: new google.maps.LatLng(65.011154,25.472564),
      zoom: 16,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    
    var map = new google.maps.Map(googlecanvas, map_options)
    // To add the marker to the map, use the 'map' property
    var myLatlng = new google.maps.LatLng(65.011154,25.472564);
    var marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title:"Eetur Deli"
    });
  }
  google.maps.event.addDomListener(window, 'load', initialize);
</script>

<h1 class="morespace">How to find us</h1>

<div id="howtoframe">
<ul >
<li>
	<!-- Google maps -->
	<div id="googlecanvas"></div>
</li>
<li>
	<div id="howtorightside">
		<div id="description" class="morespace">
		You can find us located conveniently right on the Rotuaari walking street on the first floor of the new S-Ostari shopping center. Beside us is the Stockmann.   
		</div>
		
		<div id="address" class="morespace">
		<h2 class="morespace">Address</h2>
		<h3>Eetus Deli</h3>
		Kauppurienkatu 28<br>
		90100 Oulu
		</div>
		
    <div id="address" class="morespace">
		<h2 class="morespace">Orders and reservations</h2>
		<h3>Mrs. Eetu</h3>
		Tel: 040 123 456<br>
		Email: mrs.eetu@eetusdeli.com
		</div>
		
	</div>
</li>
</ul>
</div>

  <div id="footer">
    | <a href="index.jsp">Terms and Conditions</a> | <a href="index.jsp">Franchising</a> | <a href="index.jsp">Privacy Policy</a> | 
  </div>
  <div id="copyrights"> Copyright &#169; 2014 Eetus Deli Oy
  </div>


  </div>
  
  </body>
  
</html>