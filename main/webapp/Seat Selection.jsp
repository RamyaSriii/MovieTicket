<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Seat Selection</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #6a11cb, #8e44ad);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: #ffffff;
            padding: 25px;
            width: 400px;
            border-radius: 8px;
            box-shadow: 0 6px 15px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #6a11cb;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            width: 100%;
            margin-top: 20px;
            padding: 10px;
            background: #6a11cb;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background: #5a0fb4;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Seat Details</h2>

    <form action="" method="post">

        <label>Seat ID</label>
        <input type="text" placeholder="Auto Generated" disabled>

        <label>Select Screen</label>
        <select name="screen_id" required>
            <option value="">-- Select Screen --</option>
            <option value="1">Screen 1 - PVR</option>
            <option value="2">Screen 2 - INOX</option>
            <option value="3">Screen 3 - Cinepolis</option>
        </select>

        <label>Seat Number</label>
        <input type="text" name="seat_number" placeholder="e.g., A1, B2" required>

        <label>Seat Type</label>
        <select name="seat_type" required>
            <option value="">-- Select Seat Type --</option>
            <option value="Normal">Normal</option>
            <option value="Premium">Premium</option>
            <option value="Recliner">Recliner</option>
        </select>

        <label>Seat Template</label>
        <select name="seat_template" required>
            <option value="">-- Select Seat Template --</option>
            <option value="Standard">Standard Layout</option>
            <option value="VIP">VIP Layout</option>
            <option value="Premium">Premium Layout</option>
            <option value="Recliner">Recliner Layout</option>
        </select>

        <button type="submit" name="save">Save</button>

    </form>
</div>

</body>
</html>
    