<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Project1.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style>
        body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
 
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color:lightsteelblue;
  color: white;
}
.vision{
    padding: 50px;
  text-align: center;
  background-color:lightsteelblue;
  color: black;
}
.mission{
   padding: 50px;
  text-align: center;
  background-color:lightsteelblue;
  color: black;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
    </style>


    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="about-section">
  <h1>Bank Of Books</h1>
  <p>Bank Of Books Foundation is a youth led organization working on empowering the underprivileged section of our society. Bank Of Books has a pan India presence through its wide network of Volunteer Chapters across the country. Bank Of Books Foundation focused its interventions on issues concerning youth and children which brought about significant changes in their lives in terms of education, health, skill, career and sustainable livelihood. Y4D also works on Environment conservation, women empowerment, Food safety and security, . Being an organisation who cares for society, Bank Of Books gets engaged in projects as the situation demands under natural or manmade disasters, like COVID-19 Pandemic, Flood, Drought Relief etc.</p>
  
</div>
        <br /><br />

        <div class="vision">
        <h2 style="text-align:center">Vision</h2>
        <p>Bank Of Books  envisions shaping up of a healthy, happy and progressive society where every citizen’s lives with dignity and gets equal opportunities.</p>
      </div>

        <br /><br />

        <div class="mission">
            <h2 style="text-align:center">Mission</h2>
            <p>Bank Of Books is committed to empower the underprivileged section of our society by creating an enabling environment through Encouragement, Education and Employment so that citizens can harness their full potential and live happy and healthy lives with dignity and contribute positively to society. Y4D is working towards shaping up a society which is sustainable for future generations by working on environment conservation and introducing values in society.</p>
        </div>

        <br /><br />

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/team1.jpg" Width="100%"/>
      <div class="container">
        <h2>Jane Doe</h2>
        <p class="title">CEO & Founder</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>jane@example.com</p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/team2.jpg" Width="100%"/>
      <div class="container">
        <h2>Mike Ross</h2>
        <p class="title">Art Director</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>mike@example.com</p>
      </div>
    </div>
  </div>

    <%--<div class="column" >
    <div class="card">
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/team3.jpg" Width="100%"/>
      <div class="container">
        <h2>Jack Lobo</h2>
        <p class="title">Manager</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>mike@example.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>--%>
  
  <div class="column">
    <div class="card">
        <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/team4.jpg" Width="100%"  />
      <div class="container">
        <h2>Johnita Doe</h2>
        <p class="title">Support Provider</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>john@example.com</p>
      </div>
    </div>
  </div>
</div>

        
        </form>
</body>
</html>
