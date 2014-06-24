<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        System.IO.File.AppendAllText(@"c:\csnet\jayesh\info.txt", "Start Date : " + DateTime.Now + "\r\n");
        System.Web.UI.Control p;
        
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown
        System.IO.File.AppendAllText(@"c:\csnet\jayesh\info.txt", "End Date : " + DateTime.Now + "\r\n");
       
    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

        System.IO.File.AppendAllText(@"c:\csnet\jayesh\info.txt", "App Error : " + DateTime.Now + "\r\n");
       
        
    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
