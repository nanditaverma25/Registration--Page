<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <style>
        /* Add your CSS styling here */
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin: 0 auto;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .buttons {
            margin-top: 20px;
        }
        .buttons input {
            padding: 10px 20px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registration Page</h1>

        <form action="StudentServlet" method="post">
            <div class="form-group">
                <h2>Personal Details</h2>
            </div>
            <div class="form-group">
                <label>Name:</label>
                <input type="text" name="name" required>
            </div>
            <div class="form-group">
                <label>Date Of Birth:</label>
                <input type="date" name="dob" required>
            </div>
            <div class="form-group">
                <label>Gender:</label>
                <select name="gender" required>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>
            <div class="form-group">
                <label>Blood Group:</label>
                <input type="text" name="bloodGroup" required>
            </div>
            <div class="form-group">
                <label>Contact Number:</label>
                <input type="text" name="contactNumber" required>
            </div>
            <div class="form-group">
                <label>Email:</label>
                <input type="email" name="email" required>
            </div>
            <div class="form-group">
                <label>Address:</label>
                <input type="text" name="address" required>
            </div>

            <div class="form-group">
                <h2>Academic Details</h2>
            </div>
            <div class="form-group">
                <label>Enrollment Number:</label>
                <input type="text" name="enrollmentNumber" required>
            </div>
            <div class="form-group">
                <label>Semester:</label>
                <input type="text" name="semester" required>
            </div>
            <div class="form-group">
                <label>Program:</label>
                <input type="text" name="program" required>
            </div>
            <div class="form-group">
                <label>Year:</label>
                <input type="text" name="year" required>
            </div>
            <div class="form-group">
                <label>Specialization:</label>
                <input type="text" name="specialization" required>
            </div>
            <div class="form-group">
                <label>Minor Track Course:</label>
                <input type="text" name="minorTrackCourse" required>
            </div>

            <div class="form-group">
                <h2>Hostel Details</h2>
            </div>
            <div class="form-group">
                <label>Hostel Block:</label>
                <input type="text" name="hostelBlock" required>
            </div>
            <div class="form-group">
                <label>Wing:</label>
                <input type="text" name="wing" required>
            </div>
            <div class="form-group">
                <label>Room Number:</label>
                <input type="text" name="roomNumber" required>
            </div>
            <div class="form-group">
                <label>AC/Non-AC:</label>
                <select name="ac" required>
                    <option value="AC">AC</option>
                    <option value="Non-AC">Non-AC</option>
                </select>
            </div>

            <div class="buttons">
                <input type="submit" value="Submit">
                <input type="reset" value="Reset">
            </div>
        </form>
    </div>
</body>
</html>
