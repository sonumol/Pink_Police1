

<%@page import="newpackage.dbcon"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.util.Streams"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.commons.fileupload.FileItemStream"%>
<%@page import="org.apache.commons.fileupload.FileItemIterator"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    ServletFileUpload upload=new ServletFileUpload();
    FileItemIterator iter=null;
    String vehid="";
    String vehnumber="";
    String photo="";
    String file="";

    iter=upload.getItemIterator(request);
    while(iter.hasNext()){
        FileItemStream item=iter.next();
        String nam=item.getFieldName();
        InputStream stream=item.openStream();
        if(item.isFormField()){
            String str=Streams.asString(stream);
            
          
        
        }
        else if(item.getName()!=""){
            File f=new File("E:\\java_program\\Pink_Police\\web\\uploads\\"+item.getName().substring(item.getName().lastIndexOf("\\") + 1));
            file=item.getName().substring(item.getName().lastIndexOf("\\") + 1);
            if(!f.exists()){
                f.createNewFile();
            }
            FileOutputStream fos=new FileOutputStream(f);
            int ch;
            while((ch=stream.read())!=-1){
                fos.write(ch);
            }
       }
}
 dbcon db=new dbcon();
      Connection con=db.getcon();
Statement st=con.createStatement();
String t[]=file.split("\\.");
if(t[1].equals("jpg")||t[1].equals("png"))
{
    

st.executeUpdate("update vehicle set photo='"+file+"' where vid='"+session.getAttribute("id") +"'");
           
%>
<script type="text/javascript">
    alert("succesfully updated");
    window.location="vehiclemanage.jsp";
</script>
<%
}
else
{
    %>
    
    <script type="text/javascript">alert("upload a image file");</script>
    
 <%
}
%>