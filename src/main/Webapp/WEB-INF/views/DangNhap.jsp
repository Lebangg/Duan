<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login/Register Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h4 id="formTitle" class="text-center">Login</h4>
                </div>
                <div class="card-body">
                    <form id="authForm">
                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" id="username" class="form-control" placeholder="Enter your username">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" id="email" class="form-control" placeholder="Enter your email">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" id="password" class="form-control" placeholder="Enter your password">
                        </div>
                        <div class="text-center">
                            <button type="submit" id="submitButton" class="btn btn-primary">Login</button>
                        </div>
                        <p id="toggleFormText" class="text-center mt-3">Don't have an account? <a href="#" id="toggleFormLink">Register</a></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
