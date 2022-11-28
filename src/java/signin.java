    
import java.util.List;
import java.util.Iterator;
import java.io.*;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.fileupload.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author 7140r
 */
public class signin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String uname = "";
            String pass = "";

            String email = "";
            String mno = "";

            String image = "";

            boolean isMultipart = ServletFileUpload.isMultipartContent(request);
            if (!isMultipart) {
            } else {
                ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());
                List items = null;
                try {
                    items = servletFileUpload.parseRequest(request);
                } catch (FileUploadException e) {
                    e.printStackTrace();
                }
                Iterator itr = items.iterator();
                while (itr.hasNext()) {
                    FileItem item = (FileItem) itr.next();
                    if (item.isFormField()) {
                        String name = item.getFieldName();
                        String value = item.getString();
                        System.out.println("name " + name);
                        System.out.println("value " + value);
                        if (name.equals("username")) {
                            uname = value;
                        }
                        if (name.equals("password")) {
                            pass = value;
                        }

                        if (name.equals("email")) {
                            email = value;
                        }
                        if (name.equals("mno")) {
                            mno = value;
                        }
                        if (name.equals("image")) {
                            image = value;
                        }

                    } else {
                        try {
                            String itemName = item.getName();
                            image = FilenameUtils.getName(itemName);

                            File savedFile = new File(getServletContext().getRealPath("/") + "../../web/images/" + image);
                            item.write(savedFile);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
            try {
                mm.Conn1 c1 = new mm.Conn1();

                int s1 = (c1.executeUpdate("insert into users(username,password,email_id,mobile,image) values('" + uname + "','" + pass + "','" + email + "','" + mno + "','" + image + "')"));
                if (s1 > 0) {
                    out.print("<script>");
                    out.println("alert('Registration Success')");
                    out.print("</script>");
                    response.sendRedirect("index.jsp");
                }

            } catch (Exception e) {
                out.println(e);
            }
       }
    }
}
