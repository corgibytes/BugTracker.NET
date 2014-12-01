<%@ Page language="C#" CodeBehind="view_web_config.aspx.cs" Inherits="btnet.view_web_config" AutoEventWireup="True" %>
<!--
Copyright 2002-2011 Corey Trager
Distributed under the terms of the GNU General Public License
-->
<!-- #include file = "inc.aspx" -->
<script language="C#" runat="server">

///////////////////////////////////////////////////////////////////////
void Page_Load(Object sender, EventArgs e)
{

	Util.do_not_cache(Response);
	

	// create path
	string path = Request.MapPath(Request.Path);
	path = path.Replace("view_web_config.aspx","Web.config");

	Response.ContentType = "application/xml";
	Response.WriteFile(path);

}


</script>

