<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JQueryUI.aspx.cs" Inherits="WebForm.AImplements.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../Scripts/jquery-ui.min.js"></script>
    <link href="../Scripts/jquery-ui.min.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#Autotext').autocomplete(
               {
                   //source: ['Choice1', 'Choice2']
                   //source://associating a callbackfunction for the source as below
                   source: function (request, response)
                       {
                           $.ajax(
                               {
                                   url: '../AECommerceCMS/SB Admin Theme/AjaxControlWS.asmx/AutoCompleteJQUI',//~ denotes current file folder as root,.. denotes project folder as root 
                                   method:'post',
                                   contentType:'application/json',
                                   dataType:'json',
                                   data: JSON.stringify({term:request.term}),
                                   success: function(data)
                                   {
                                       response(data.d);
                                   },
                                   error:function(err)
                                   {
                                       //alert(err);
                                   }
                               }
                           )
                       },
                       minlength:1
               });
        });

    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox ID="Autotext" runat="server"></asp:TextBox>

    </div>
    </form>

</body>
</html>


