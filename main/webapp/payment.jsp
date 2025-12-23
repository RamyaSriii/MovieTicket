<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>payment Details</title>
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
    <h2>Payment Details</h2>

    <form action="" method="post">

        <label>Payment ID</label>
        <input type="text" placeholder="Auto Generated" disabled>

        <label>Select Booking</label>
        <select name="booking_id" required>
            <option value="">-- Select Booking --</option>
            <option value="1">Booking #1 - Ramyasri</option>
            <option value="2">Booking #2 - Varsha</option>
        </select>

        <label>Payment Method</label>
        <select name="payment_method" required>
            <option value="">-- Select Method --</option>
            <option value="Credit Card">Credit Card</option>
            <option value="Debit Card">Debit Card</option>
            <option value="UPI">UPI</option>
            <option value="Cash">Cash</option>
        </select>

        <label>Payment Amount (INR)</label>
        <input type="number" name="payment_amount" min="0" required>

        <label>Payment Status</label>
        <select name="payment_status" required>
            <option value="">-- Select Status --</option>
            <option value="Paid">Paid</option>
            <option value="Pending">Pending</option>
            <option value="Failed">Failed</option>
        </select>

        <label>Payment Date</label>
        <input type="date" name="payment_date" required>

        <button type="submit" name="save">Save</button>

    </form>
</div>

</body>
</html>
    