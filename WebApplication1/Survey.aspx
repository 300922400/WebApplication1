<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="WebApplication1.Survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Take the survey!</h1>
        <p>
            Name:<input type="text" id="name" runat="server" />
        </p>
        <p>
            Email:<input type="text" id="email" runat="server" />
        </p>
        <p>
            Which server technologies do you use?<br />
            <select id="serverMode1" runat="server" multiple="true">
            <option>ASP.NET</option>
            <option>PHP</option>
            <option>JSP</option>
            <option>CGI</option>
            </select>
        </p>
        <p>
            Do you like ASP.NET so far? <br />
        <select id="likeDotNet" runat="server" multiple="true">
            <option>Yes</option>
            <option>No</option>
        </select>
        </p>
        <p><button id="confirmbutton" onserverclick="confirmButton_click" runat="server">Confirm</button></p>
        <p>
            <asp:Label runat="server" ID="feedbackLabel" runat="server" />
        </p>
        <script runat="server">
         // check again coz he put protected be4 void and then private??
            void confirmButton_click(Object s, EventArgs e){
                bool itemSelected = false;
                feedbackLabel.Text = "Your name is: " + name.Value + "<br/>";
                feedbackLabel.Text = "Your email is: " + email.Value + "<br/>";
                feedbackLabel.Text += "Your use: <br/><ul>";
                foreach (ListItem item in serverMode1.Items)
                {
                    if (item.Selected)
                    {
                        feedbackLabel.Text += "li" + item.Text + "</li>";
                    }
                }

                if (itemSelected)
                {
                    feedbackLabel.Text += "<li>nothing</li>";
                }
                feedbackLabel.Text += "</ul>";
                feedbackLabel.Text += "You like work with Net" + likeDotNet.Value;

            }
        </script>
    </div>
</asp:Content>
