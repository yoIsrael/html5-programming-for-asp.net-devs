﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DrawLine.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <script type="text/javascript" src="Script/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="Script/modernizr-2.5.3.js"></script>
    <script type="text/javascript">
      $(document).ready(function () {
        if (!Modernizr.canvas) {
          alert("This browser doesn't support HTML5 Canvas!");
        }

        var canvas = $("#MyCanvas").get(0);
        var context = canvas.getContext("2d");
       
        context.moveTo(10, 100);
        context.lineTo(190, 100);
        context.stroke();

      });
    </script>
    <style>
      canvas {
        border: 2px solid #808080;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <canvas id="MyCanvas" height="200" width="200"></canvas>
    </form>
</body>
</html>
