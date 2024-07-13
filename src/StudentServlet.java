import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String bloodGroup = request.getParameter("bloodGroup");
        String contactNumber = request.getParameter("contactNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String enrollmentNumber = request.getParameter("enrollmentNumber");
        String semester = request.getParameter("semester");
        String program = request.getParameter("program");
        String year = request.getParameter("year");
        String specialization = request.getParameter("specialization");
        String minorTrackCourse = request.getParameter("minorTrackCourse");
        String hostelBlock = request.getParameter("hostelBlock");
        String wing = request.getParameter("wing");
        String roomNumber = request.getParameter("roomNumber");
        String ac = request.getParameter("ac");

        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:cse_dsn");

            String query = "INSERT INTO stud (name, dob, gender, bloodGroup, contactNumber, email, address, enrollmentNumber, semester, program, year, specialization, minorTrackCourse, hostelBlock, wing, roomNumber, ac) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, dob);
            ps.setString(3, gender);
            ps.setString(4, bloodGroup);
            ps.setString(5, contactNumber);
            ps.setString(6, email);
            ps.setString(7, address);
            ps.setString(8, enrollmentNumber);
            ps.setString(9, semester);
            ps.setString(10, program);
            ps.setString(11, year);
            ps.setString(12, specialization);
            ps.setString(13, minorTrackCourse);
            ps.setString(14, hostelBlock);
            ps.setString(15, wing);
            ps.setString(16, roomNumber);
            ps.setString(17, ac);
            ps.executeUpdate();

            con.close();
            response.sendRedirect("success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
