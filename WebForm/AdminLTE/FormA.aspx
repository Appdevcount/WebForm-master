<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLTE/AdminLTE.Master" AutoEventWireup="true" CodeBehind="FormA.aspx.cs" Inherits="WebForm.AdminLTE.FormA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:PlaceHolder ID="PlaceHolder3" runat="server">
        <%:Styles.Render("~/bundles/FormACSS")%>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="PlaceHolder2" runat="server">
        <%:Styles.Render("~/bundles/AdminLTECSS")%>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
        <%:Scripts.Render("~/bundles/FormAJS")%>
    </asp:PlaceHolder>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Advanced Form Elements
       
            <small>Preview</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Forms</a></li>
            <li class="active">Advanced Elements</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- SELECT2 EXAMPLE -->
        <div class="box box-default">
            <div class="box-header with-border">
                <h3 class="box-title">Select2</h3>

                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
                </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Minimal</label>
                            <select class="form-control select2" style="width: 100%;">
                                <option selected="selected">Alabama</option>
                                <option>Alaska</option>
                                <option>California</option>
                                <option>Delaware</option>
                                <option>Tennessee</option>
                                <option>Texas</option>
                                <option>Washington</option>
                            </select>
                        </div>
                        <!-- /.form-group -->
                        <div class="form-group">
                            <label>Disabled</label>
                            <select class="form-control select2" disabled="disabled" style="width: 100%;">
                                <option selected="selected">Alabama</option>
                                <option>Alaska</option>
                                <option>California</option>
                                <option>Delaware</option>
                                <option>Tennessee</option>
                                <option>Texas</option>
                                <option>Washington</option>
                            </select>
                        </div>
                        <!-- /.form-group -->
                    </div>
                    <!-- /.col -->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Multiple</label>
                            <asp:ListBox ID="ListBox1" runat="server" class="form-control select2" multiple="multiple" data-placeholder="Select a State" Style="width: 100%;">
                                <asp:ListItem Text="A" Value="A"></asp:ListItem>
                                <asp:ListItem Text="B" Value="B"></asp:ListItem>
                                <asp:ListItem Text="C" Value="C"></asp:ListItem>
                            </asp:ListBox>
                            <%--                <select class="form-control select2" multiple="multiple" data-placeholder="Select a State" style="width: 100%;">
                  <option>Alabama</option>
                  <option>Alaska</option>
                  <option>California</option>
                  <option>Delaware</option>
                  <option>Tennessee</option>
                  <option>Texas</option>
                  <option>Washington</option>
                </select>--%>
                        </div>
                        <!-- /.form-group -->
                        <div class="form-group">
                            <label>Disabled Result</label>
                            <select class="form-control select2" style="width: 100%;">
                                <option selected="selected">Alabama</option>
                                <option>Alaska</option>
                                <option disabled="disabled">California (disabled)</option>
                                <option>Delaware</option>
                                <option>Tennessee</option>
                                <option>Texas</option>
                                <option>Washington</option>
                            </select>
                        </div>
                        <!-- /.form-group -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                Visit <a href="https://select2.github.io/">Select2 documentation</a> for more examples and information about
          the plugin.
       
            </div>
        </div>
        <!-- /.box -->

        <div class="row">
            <div class="col-md-6">

                <div class="box box-danger">
                    <div class="box-header">
                        <h3 class="box-title">Input masks</h3>
                    </div>
                    <div class="box-body">
                        <!-- Date dd/mm/yyyy -->
                        <div class="form-group">
                            <label>Date masks:</label>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask>
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- Date mm/dd/yyyy -->
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask>
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- phone mask -->
                        <div class="form-group">
                            <label>US phone mask:</label>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <input type="text" class="form-control" data-inputmask='"mask": "(999) 999-9999"' data-mask>
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- phone mask -->
                        <div class="form-group">
                            <label>Intl US phone mask:</label>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <input type="text" class="form-control" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- IP mask -->
                        <div class="form-group">
                            <label>IP mask:</label>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-laptop"></i>
                                </div>
                                <input type="text" class="form-control" data-inputmask="'alias': 'ip'" data-mask>
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->

                <div class="box box-info">
                    <div class="box-header">
                        <h3 class="box-title">Color & Time Picker</h3>
                    </div>
                    <div class="box-body">
                        <!-- Color Picker -->
                        <div class="form-group">
                            <label>Color picker:</label>
                            <input type="text" class="form-control my-colorpicker1">
                        </div>
                        <!-- /.form group -->

                        <!-- Color Picker -->
                        <div class="form-group">
                            <label>Color picker with addon:</label>

                            <div class="input-group my-colorpicker2">
                                <input type="text" class="form-control">

                                <div class="input-group-addon">
                                    <i></i>
                                </div>
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- time Picker -->
                        <div class="bootstrap-timepicker">
                            <div class="form-group">
                                <label>Time picker:</label>

                                <div class="input-group">
                                    <input type="text" class="form-control timepicker">

                                    <div class="input-group-addon">
                                        <i class="fa fa-clock-o"></i>
                                    </div>
                                </div>
                                <!-- /.input group -->
                            </div>
                            <!-- /.form group -->
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->

            </div>
            <!-- /.col (left) -->
            <div class="col-md-6">
                <div class="box box-primary">
                    <div class="box-header">
                        <h3 class="box-title">Date picker</h3>
                    </div>
                    <div class="box-body">
                        <!-- Date -->
                        <div class="form-group">
                            <label>Date:</label>

                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right" id="datepicker">
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- Date range -->
                        <div class="form-group">
                            <label>Date range:</label>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right" id="reservation">
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- Date and time range -->
                        <div class="form-group">
                            <label>Date and time range:</label>

                            <div class="input-group">
                                <div class="input-group-addon">
                                    <i class="fa fa-clock-o"></i>
                                </div>
                                <input type="text" class="form-control pull-right" id="reservationtime">
                            </div>
                            <!-- /.input group -->
                        </div>
                        <!-- /.form group -->

                        <!-- Date and time range -->
                        <div class="form-group">
                            <label>Date range button:</label>

                            <div class="input-group">
                                <button type="button" class="btn btn-default pull-right" id="daterange-btn">
                                    <span>
                                        <i class="fa fa-calendar"></i>Date range picker
                    </span>
                                    <i class="fa fa-caret-down"></i>
                                </button>
                            </div>
                        </div>
                        <!-- /.form group -->

                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->

                <!-- iCheck -->
                <div class="box box-success">
                    <div class="box-header">
                        <h3 class="box-title">iCheck - Checkbox &amp; Radio Inputs</h3>
                    </div>
                    <div class="box-body">
                        <!-- Minimal style -->

                        <!-- checkbox -->
                        <div class="form-group">
                            <label>
                                <input type="checkbox" class="minimal" checked>
                            </label>
                            <label>
                                <input type="checkbox" class="minimal">
                            </label>
                            <label>
                                <input type="checkbox" class="minimal" disabled>
                                Minimal skin checkbox
               
                            </label>
                        </div>

                        <!-- radio -->
                        <div class="form-group">
                            <label>
                                <input type="radio" name="r1" class="minimal" checked>
                            </label>
                            <label>
                                <input type="radio" name="r1" class="minimal">
                            </label>
                            <label>
                                <input type="radio" name="r1" class="minimal" disabled>
                                Minimal skin radio
               
                            </label>
                        </div>

                        <!-- Minimal red style -->

                        <!-- checkbox -->
                        <div class="form-group">
                            <label>
                                <input type="checkbox" class="minimal-red" checked>
                            </label>
                            <label>
                                <input type="checkbox" class="minimal-red">
                            </label>
                            <label>
                                <input type="checkbox" class="minimal-red" disabled>
                                Minimal red skin checkbox
               
                            </label>
                        </div>

                        <!-- radio -->
                        <div class="form-group">
                            <label>
                                <input type="radio" name="r2" class="minimal-red" checked>
                            </label>
                            <label>
                                <input type="radio" name="r2" class="minimal-red">
                            </label>
                            <label>
                                <input type="radio" name="r2" class="minimal-red" disabled>
                                Minimal red skin radio
               
                            </label>
                        </div>

                        <!-- Minimal red style -->

                        <!-- checkbox -->
                        <div class="form-group">
                            <label>
                                <input type="checkbox" class="flat-red" checked>
                            </label>
                            <label>
                                <input type="checkbox" class="flat-red">
                            </label>
                            <label>
                                <input type="checkbox" class="flat-red" disabled>
                                Flat green skin checkbox
               
                            </label>
                        </div>

                        <!-- radio -->
                        <div class="form-group">
                            <label>
                                <input type="radio" name="r3" class="flat-red" checked>
                            </label>
                            <label>
                                <input type="radio" name="r3" class="flat-red">
                            </label>
                            <label>
                                <input type="radio" name="r3" class="flat-red" disabled>
                                Flat green skin radio
               
                            </label>
                        </div>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer">
                        Many more skins available. <a href="http://fronteed.com/iCheck/">Documentation</a>
                    </div>
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col (right) -->
        </div>
        <!-- /.row -->

    </section>
    <!-- /.content -->
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
            <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img src="Content/IM1.jpg" alt="First slide" />
                <div class="carousel-caption">
                    First Slide
                </div>
            </div>
            <div class="item">
                <img src="Content/IM2.png" alt="Second slide" />
                <div class="carousel-caption">
                    Second Slide
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
            <span class="fa fa-angle-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
            <span class="fa fa-angle-right"></span>
        </a>
    </div>
    <link href="Content/Footable/footable.bootstrap.min.css" rel="stylesheet" />
    <script src="Content/Footable/footable.min.js"></script>
    <%-- <script src="//code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>--%>

    <link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css" rel="stylesheet" />
    <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" />
    <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.24/build/pdfmake.min.js"></script>
    <script src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.24/build/vfs_fonts.js"></script>
    <script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.html5.min.js"></script>

    <table id="dtb" class=" table table-bordered table-condensed Ftable" data-show-toggle="true" data-expand-first="false" data-toggle-column="first">
        <thead>
            <tr>
                <th data-visible="false">ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th data-breakpoints="xs">Job Title</th>
                <th data-breakpoints="xs sm">Started On</th>
                <th data-breakpoints="all" data-title="DOB">Date of Birth</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>Dennise</td>
                <td>Fuhrman</td>
                <td>High School History Teacher</td>
                <td>November 8th 2011</td>
                <td>July 25th 1960 wD;MFD;QM;KEFM;QEFM;QEFM;QEMF;QEMKF111111;QEMF;KM ;KMD;KVMEQ;KFMQ;EKFM;22222QMEF;EMF;QMEF;QEMF;QEKMF;QKEMF;MQ;KWMF;MK333333</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Elodia</td>
                <td>Weisz</td>
                <td>Wallpaperer Helper</td>
                <td>October 15th 2010</td>
                <td>March 30th 1982</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Raeann</td>
                <td>Haner</td>
                <td>Internal Medicine Nurse Practitioner</td>
                <td>November 28th 2013</td>
                <td>February 26th 1966</td>
            </tr>
            <tr>
                <td>4</td>
                <td>Junie</td>
                <td>Landa</td>
                <td>Offbearer</td>
                <td>October 31st 2010</td>
                <td>March 29th 1966</td>
            </tr>
            <tr>
                <td>5</td>
                <td>Solomon</td>
                <td>Bittinger</td>
                <td>Roller Skater</td>
                <td>December 29th 2011</td>
                <td>September 22nd 1964</td>
            </tr>
            <tr>
                <td>6</td>
                <td>Bar</td>
                <td>Lewis</td>
                <td>Clown</td>
                <td>November 12th 2012</td>
                <td>August 4th 1991</td>
            </tr>
            <tr>
                <td>7</td>
                <td>Usha</td>
                <td>Leak</td>
                <td>Ships Electronic Warfare Officer</td>
                <td>August 14th 2012</td>
                <td>November 20th 1979</td>
            </tr>
            <tr>
                <td>8</td>
                <td>Lorriane</td>
                <td>Cooke</td>
                <td>Technical Services Librarian</td>
                <td>September 21st 2010</td>
                <td>April 7th 1969</td>
            </tr>
        </tbody>
    </table>
    <asp:Button ID="Alertmailsent"  runat="server" Text="Button" OnClick="Alertmailsent_Click" />
    <asp:PlaceHolder ID="MailStatus" runat="server">
        
        <div class="alert alert-info alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <h4><i class="icon fa fa-info"></i>Alert!</h4>
            Info alert preview. This alert is dismissable.
        </div>
    </asp:PlaceHolder>
    <script>
        $(function () {
            //Footable Test for Collapsible/hidden column
            $('.Ftable').footable({
                "expandFirst": false,
                "showToggle": true,
                "toggleColumn": "last"
            });
            $('#dtb').dataTable(
                     {

                         dom: 'Bfrtip',
                         buttons: [
                             {
                                 extend: 'copyHtml5',
                                 text: '<i class="fa fa-files-o"></i>',
                                 titleAttr: 'Copy'
                             },
                             {
                                 extend: 'excelHtml5',
                                 text: '<i class="fa fa-file-excel-o"></i>',
                                 titleAttr: 'Excel'
                             },
                             {
                                 extend: 'csvHtml5',
                                 text: '<i class="fa fa-file-text-o"></i>',
                                 titleAttr: 'CSV'
                             },
                             {
                                 extend: 'pdfHtml5',
                                 text: '<i class="fa fa-file-pdf-o"></i>',
                                 titleAttr: 'PDF'
                             }
                         ]
                     }
                     );



            //Initialize Select2 Elements
            $(".select2").select2();

            //Datemask dd/mm/yyyy
            $("#datemask").inputmask("dd/mm/yyyy", { "placeholder": "dd/mm/yyyy" });
            //Datemask2 mm/dd/yyyy
            $("#datemask2").inputmask("mm/dd/yyyy", { "placeholder": "mm/dd/yyyy" });
            //Money Euro
            $("[data-mask]").inputmask();

            //Date range picker
            $('#reservation').daterangepicker();
            //Date range picker with time picker
            $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' });
            //Date range as a button
            $('#daterange-btn').daterangepicker(
                {
                    ranges: {
                        'Today': [moment(), moment()],
                        'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                        'This Month': [moment().startOf('month'), moment().endOf('month')],
                        'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                    },
                    startDate: moment().subtract(29, 'days'),
                    endDate: moment()
                },
                function (start, end) {
                    $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                }
            );

            //Date picker
            $('#datepicker').datepicker({
                autoclose: true
            });

            //iCheck for checkbox and radio inputs
            $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                checkboxClass: 'icheckbox_minimal-blue',
                radioClass: 'iradio_minimal-blue'
            });
            //Red color scheme for iCheck
            $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                checkboxClass: 'icheckbox_minimal-red',
                radioClass: 'iradio_minimal-red'
            });
            //Flat red color scheme for iCheck
            $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                checkboxClass: 'icheckbox_flat-green',
                radioClass: 'iradio_flat-green'
            });

            //Colorpicker
            $(".my-colorpicker1").colorpicker();
            //color picker with addon
            $(".my-colorpicker2").colorpicker();

            //Timepicker
            $(".timepicker").timepicker({
                showInputs: false
            });
        });
    </script>
</asp:Content>
