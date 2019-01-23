<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDefault.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="Home">
     
        <div class="row">
            <div class="column">
        <div class="WeeklyRider">
            <h2>Rider of the Week</h2>
            <div class="RiderArticle">
                <h3>Guy Martin</h3>
            <asp:Image ID="Image4" runat="server" ImageUrl="Images/GUY.jpg" Width="300px" />
            <p>
            Guy has been competeing for years on the road racing circuit, but has yet to win big.
			Though he has gotten podium 5 times, he has never won. But has much acclaim off the mountian as well. 
			Such as competeing in races around the world, building bikes, flying fighter plans, and recently restoring a replica World
			War 1 era tank. He has also reached a big milestone in life, Guy has started a family and now is a father to a baby girl!
			</p>
            </div>
            </div>
            </div>
            
        <div class="column">
            <div class="FeaturedTrack">
            <h2>Featured Track</h2>
             <a href="http://pittrace.com/">
                <h2>Pittsburgh International Race Complex</h2>
            <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/PittTrack.jpg" Width="500px" />
                 <p>Click to Visit Pittsburgh International Race Complex's Website! </p>
                 </a>
        </div>
            </div>
            </div>
 
            <section class="HomeTop">
          <h2>Looking for updates?</h2>
           <h2>Subscribe with your Email to recieve updates</h2>
          <asp:Button ID="ButtonSubscribe2" runat="server" Text="Subscribe!" CssClass="ButtonSubscribe2" />
        </section>

            <div class="row">
        <div class="column">
                <div class="WeeklyBikePicture">
                <h2>Featured Bike Picture of the Week</h2>
                <div class="Image">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Picture_Of_The_Week.jpg" Width="500px" Height="300px" />
                </div>
                  <p>Seems like these three bikers may or may not have had some trouble!</p>
                    </div>
                </div>
            <div class="column">
                <h2>Featured Bike Video of the Week</h2>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/p5JExyzVfbA" frameborder="0"
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                </iframe>
                <p>Highlights from the 2018 65th Macau Grand Prix Motorcycle Race!</p>
            </div>
            </div>
        <div id="Line"></div>

    <h2 style="text-align:center; font-size:30px; font-variant:small-caps; font-family:Arial;">Featured Bikes</h2>

    <div class="row">
        <div class="column">
            <div class="FeaturedBikes">
                    <a href="ModelPage.aspx?id=9">
                        <h3>Kawasaki's Ninja H2</h3>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Bikes/Ninja H2.jpg" Width="400px" Height="300px" />
                        </a>
                </div>
        </div>
        <div class="column">
            <div class="FeaturedBikes">
            <a href="ModelPage.aspx?id=8">
                <h3>Suzuki's GSX-R 750</h3>
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Bikes/GSX-R 750.jpg" Width="400px" Height="300px" />
                </a>
            </div>
        </div>
    </div>
        </div>
</asp:Content>

