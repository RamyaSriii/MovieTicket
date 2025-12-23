<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Show Details</title>
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
            width: 360px;
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
    <h2>Show Details</h2>

    <form action="" method="post">
    
        <label>Show ID</label>
        <input type="text" placeholder="Auto Generated" disabled>

        <label>Select Movie</label>
        <select name="movie_id" required>
            <option value="">-- Select Movie --</option>
            <option value="1">Avatar</option>
            <option value="2">Avengers</option>
            <option value="3">RRR</option>
            <option value="4">Bahubali</option>
        </select>

        <label>Select Screen</label>
        <select name="screen_id" required>
            <option value="">-- Select Screen --</option>
            <option value="1">Screen 1 - PVR</option>
            <option value="2">Screen 2 - INOX</option>
            <option value="3">Screen 3 - Cinepolis</option>
        </select>

        <label>Show Date</label>
        <input type="date" name="show_date" required>

        <label>Show Time</label>
        <input type="time" name="show_time" required>

        <label>Price (INR)</label>
        <input type="number" name="price" min="0" required>

        <button type="submit" name="save">Save</button>

    </form>
</div>

</body>
</html>
    