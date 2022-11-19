<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="vendor/boostrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="vendor/icons/css/boxicons.min.css">
  <link rel="stylesheet" href="styles/login.css">
  <title>Simbah</title>
</head>

<body>
  <div class="global-container">
    <div class="card login-form">
      <div class="card-body">
        <h1 class="card-title text-center text-white">
          Login
        </h1>
      </div>
      <div class="card-text">
        <form method="POST" action="cek_login.php">
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label text-white">username</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Input Your username" required autofocus name="username">
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label text-white">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Input your password" required name="password">
          </div>
          <div class="mb-3">
            <select class="form-control" name="level" id="level">
              <option value="owner">owner</option>
              <option value="karyawan">karyawan</option>
              <option value="member">member</option>
              <option value="pelanggan">pelanggan</option>
            </select>
          </div>
          <!-- <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label text-white" for="exampleCheck1">Check me out</label>
          </div> -->
          <div class="d-grid gap-2">
            <button type="submit" class="btn btn-primary">Submit</button>
          </div>
          <div class="d-grid gap-2 mt-3">
            <a href="register.php" class="text-center text-white text-decoration-none">belum punya akun silahkan register!</a>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script src="vendor/boostrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>