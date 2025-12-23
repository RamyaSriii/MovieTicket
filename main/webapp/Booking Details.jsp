<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booking Details</title>
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
    <h2>Booking Details</h2>

    <form action="" method="post">
    
        <label>Booking ID</label>
        <input type="text" placeholder="Auto Generated" disabled>

        <label>Select User</label>
        <select name="user_id" required>
            <option value="">-- Select User --</option>
            <option value="1">Ramyasri</option>
            <option value="2">Varsha</option>
        </select>
        
        <label>Select Show</label>
        <select name="show_id" required>
            <option value="">-- Select Show --</option>
            <option value="1">Avatar - Screen 1 - 2025-12-25 18:00</option>
            <option value="2">RRR - Screen 2 - 2025-12-25 20:00</option>
        </select>

        <label>Booking Date</label>
        <input type="date" name="booking_date" required>

        <label>Total Amount (INR)</label>
        <input type="number" name="total_amount" min="0" required>

        <label>Booking Status</label>
        <select name="booking_status" required>
            <option value="">-- Select Status --</option>
            <option value="Confirmed">Confirmed</option>
            <option value="Pending">Pending</option>
            <option value="Cancelled">Cancelled</option>
        </select>

        <button type="submit" name="save">Save</button>

    </form>
</div>

</body>
</html>
    