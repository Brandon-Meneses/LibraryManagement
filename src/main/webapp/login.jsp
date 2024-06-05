<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <!-- Incluir Daisy UI y Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.11.1/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Configuración de tema oscuro -->
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: '#4ADE80',
                        secondary: '#64748B',
                    }
                }
            },
            darkMode: 'class'
        }
    </script>
</head>
<body class="dark:bg-gray-900 dark:text-white">
<div class="flex justify-center items-center h-screen bg-gray-900 text-white">
    <div class="bg-gray-800 p-6 rounded shadow-md w-full max-w-md">
        <h2 class="text-2xl font-bold mb-6">Login</h2>
        <form action="login" method="post">
            <div class="mb-4">
                <label for="email" class="block text-sm font-medium text-gray-300">Email:</label>
                <input type="text" id="email" name="email" class="input input-bordered w-full mt-1 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white" required />
            </div>
            <div class="mb-4">
                <label for="password" class="block text-sm font-medium text-gray-300">Password:</label>
                <input type="password" id="password" name="password" class="input input-bordered w-full mt-1 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white" required />
            </div>
            <div class="flex items-center justify-between">
                <button type="submit" class="btn btn-primary w-full">Login</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
