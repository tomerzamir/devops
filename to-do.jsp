<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>To-Do 22 List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .task-list {
            list-style-type: none;
            padding: 0;
        }
        .task {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 0;
            border-bottom: 1px solid #ccc;
        }
        .task input[type="checkbox"] {
            margin-right: 10px;
        }
        .add-task {
            display: flex;
            margin-top: 20px;
        }
        .add-task input[type="text"] {
            flex: 1;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .add-task button {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 5px 10px;
            margin-left: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Creative To-Do List</h1>
        <ul class="task-list">
            <li class="task">
                <input type="checkbox" id="task1">
                <label for="task1">get milk</label>
            </li>
            <li class="task">
                <input type="checkbox" id="task2">
                <label for="task2">drink milk</label>
            </li>
            <li class="task">
                <input type="checkbox" id="task3">
                <label for="task3">go to sleep</label>
            </li>
        </ul>
        <div class="add-task">
            <input type="text" id="newTask" placeholder="Add a new task">
            <button onclick="addTask()">Add</button>
        </div>
    </div>
    
    <script>
        function addTask() {
            const newTaskText = document.getElementById("newTask").value.trim();
            if (newTaskText !== "") {
                const taskList = document.querySelector(".task-list");
                const newTask = document.createElement("li");
                newTask.className = "task";
                newTask.innerHTML = `
                    <input type="checkbox" id="task${taskList.childElementCount + 1}">
                    <label for="task${taskList.childElementCount + 1}">${newTaskText}</label>
                `;
                taskList.appendChild(newTask);
                document.getElementById("newTask").value = "";
            }
        }
    </script>
</body>
</html>
