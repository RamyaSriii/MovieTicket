<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Movie Details</title>
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
    <h2>Movie Details</h2>

    <form action="saveMovie" method="post">

         <label>Movie ID</label>
        <input type="text" placeholder="Auto Generated" disabled><br>
          
        <label>Select Movie</label>
        <select name="movie_list">
            <option value="">-- Select Movie --</option>
            <option value="1">Avatar</option>
            <option value="2">Hit</option>
            <option value="3">RRR</option>
            <option value="4">Bahubali</option>
        </select><br>

        <label>Language</label>
        <input type="text" name="language" required><br>

        <!-- Genre -->
        <label>Genre</label>
        <input type="text" name="genre" required><br>

        <label>Duration (minutes)</label>
        <input type="number" name="duration" required><br>

        <label>Rating</label>
        <input type="number" name="rating" step="0.1" min="0" max="10" required><br>

        <button type="submit" name="save">Save</button>

    </form>
</div>
</body>
</html>
    