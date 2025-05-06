import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/systeminfo")
public class SystemInfoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String osName = System.getProperty("os.name");
        String javaVersion = System.getProperty("java.version");
        int processors = Runtime.getRuntime().availableProcessors();
        long freeMemory = Runtime.getRuntime().freeMemory();
        long totalMemory = Runtime.getRuntime().totalMemory();
        long maxMemory = Runtime.getRuntime().maxMemory();

        out.println("<html><head><title>System Configuration</title></head><body>");
        out.println("<h2>System Configuration Details</h2>");
        out.println("<ul>");
        out.println("<li>Operating System: " + osName + "</li>");
        out.println("<li>Java Version: " + javaVersion + "</li>");
        out.println("<li>Available Processors: " + processors + "</li>");
        out.println("<li>Free Memory (bytes): " + freeMemory + "</li>");
        out.println("<li>Total Memory (bytes): " + totalMemory + "</li>");
        out.println("<li>Max Memory (bytes): " + maxMemory + "</li>");
        out.println("</ul>");
        out.println("</body></html>");
    }
}
