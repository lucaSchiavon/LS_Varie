﻿<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/ChatBotGskAdm.Master" AutoEventWireup="true" CodeBehind="Audit_old.aspx.cs" Inherits="AQuest.ChatBotGsk.PigeonCms.pgn_content.Contents.Audit_Old" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
      <div id="DivError" runat="server" class="ParentDivDeleting Disattivato"><div class="InnerDivDeleting">
       <div class="panel panel-red" style="width:100%;height:100%">
                        <div class="panel-heading">
                            Error
                        </div>
                        <div class="panel-body text-center" >
                            <p><asp:Literal ID="LitError" runat="server" Text="xxx"></asp:Literal></p>
                        </div>
                       <div  class="text-center">
                           <asp:Button ID="BtnClose"  Text="CLOSE" class="btn btn-primary" runat="server" OnClick="BtnClose_Click" />
                       </div>
                      <%--  <div class="panel-footer">
                            Panel Footer
                        </div>--%>
                    </div>
      </div></div>
    
    
                <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Audit</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
               
    <%--<div class="fancybox">
        aaaa
    </div>
  <a class="various" data-fancybox-type="iframe" href="/Contents/DeleteConfirm.aspx">Iframe</a>--%>
   
            <!-- /.row -->
            <div class="row">
                
                <div class="col-lg-12">
                     
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            User's operations recorded...
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
          <%--                   <div class="row">
                <div class="col-lg-12 text-right">
                   <a class="btn btn-success" href="UserDetail.aspx"><i class="fa fa-pencil"></i> Insert</a>
                 </div></div>
                            <br />--%>
                             
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                              
                                    <thead>
                                    <tr>
                                        <th>User</th>
                                        <th>Role</th>
                                        <th>Date/Time</th>
                                        <th>Description</th>
                                       <%-- <th data-sortable="false" style="width: 15%"></th>--%>
                                    </tr>
                                </thead>
                                <tbody>
                                      <asp:Literal ID="LitContentTable" runat="server"></asp:Literal>
                                   <%-- <tr class="odd gradeX">
                                        <td>Trident</td>
                                        <td>Internet Explorer 4.0</td>
                                        <td>Win 95+</td>
                                        <td class="center">4</td>
                                        <td class="center"><asp:HyperLink Id="HypLnkModify" runat="server" class="btn btn-primary" Text="Update"><i class="fa fa-edit"></i> Update</asp:HyperLink> <asp:HyperLink Id="HypLnkDelete" runat="server" class="btn btn-danger" Text="Delete"><i class="fa fa-edit"></i> Delete</asp:HyperLink></td>
                                    </tr>
                                     <tr class="odd gradeX">
                                        <td>Trident</td>
                                        <td>Internet Explorer 4.0</td>
                                        <td>Win 95+</td>
                                        <td class="center">4</td>
                                        <td class="center"><a class="btn btn-primary" href="UserDetail.aspx?Id=999"><i class="fa fa-edit"></i> Update</a> <a class="btn btn-danger" href="UserDetail.aspx?Id=delete"><i class="fa fa-times"></i> Delete</a></td>
                                    </tr>--%>
                                 
                                </tbody>
                            </table>

                            <!-- /.table-responsive -->
                           <%-- <div class="well">
                                <h4>DataTables Usage Information</h4>
                                <p>DataTables is a very flexible, advanced tables plugin for jQuery. In SB Admin, we are using a specialized version of DataTables built for Bootstrap 3. We have also customized the table headings to use Font Awesome icons in place of images. For complete documentation on DataTables, visit their website at <a target="_blank" href="https://datatables.net/">https://datatables.net/</a>.</p>
                                <a class="btn btn-default btn-lg btn-block" target="_blank" href="https://datatables.net/">View DataTables Documentation</a>
                            </div>--%>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
      
</asp:Content>
