<?php

require '../connect.php';
session_start();
if (empty($_SESSION['username'])) {
    echo "<script>alert('Maaf, untuk mengakses halaman ini, anda harus login terlebih dahulu !'); document.location='../login.php'</script>";
}
// $check = array(
//     "" => "-",
//     ":" => "",
//     "," => "",
//     "/" => "",
//     "'" => "",
//     '"' => "",
//     "." => "",
//     "-" => ""
// );

// if (isset($_POST['action'])) {

//     $kode_barang = $POST['kode_barang'];
//     $nama_barang = $POST['nama_barang'];
//     // $slug = strtolower(strtr($nama_barang,$check));
//     $harga_beli = $POST['harga_beli'];
//     $harga_jual = $POST['harga_jual'];
//     $stok = $POST['stok'];

//     $image = $_FILES['image']['nama'];
//     $temp = $_FILES['image']['tmp_nama'];
//     $image_files = $image . ".jpg";

//     $id_supplier = $POST['id_supplier'];
//     $nama_supplier = $POST['nama_supplier'];

//     if ($_POST['action'] == 'add') {
//         $query = mysqli_query($koneksi, "INSERT INTO barang set kode_barang = '$kode_barang', nama_barang = '$nama_barang',harga_beli = '$harga_beli',harga_jual = '$harga_jual',stok = '$stok',image = '$image_files'");
//         copy($temp, "../images/images_buah/" . $image_files);
//         header('location:produk.php');
//     } elseif ($_POST['action'] == 'update') {
//     }
// } elseif (isset($_GET['action'])) {
// } else {
//     header('location:produk.php');
// }

if (isset($_POST['bsimpan'])) {

    $kode_barang = $_POST['kode_barang'];
    $nama_barang = $_POST['nama_barang'];
    // $slug = strtolower(strtr($nama_barang,$check));
    $harga_beli = $_POST['harga_beli'];
    $harga_jual = $_POST['harga_jual'];
    $stok = $_POST['stok'];

    $image = $_FILES['gambar']['name'];
    $temp = $_FILES['gambar']['tmp_name'];
    // Mendapat extention
    $image_files = $nama_barang . ".jpg";
    $id_supplier = $_POST['id_supplier'];
    // $nama_supplier = $_POST['nama_supplier'];


    $query = mysqli_query($koneksi, "INSERT INTO barang (kode_barang,nama_barang,harga_beli,harga_jual,stok,image,id_supplier) VALUES ('$kode_barang','$nama_barang','$harga_beli','$harga_jual','$stok','$image_files','$id_supplier')");

    copy($temp, "../images/images_buah/" . $image_files);
    //         header('location:produk.php');
    // header('location:produk.php');

    if ($query) {
        echo "<script>
    alert('simpan data sukses');
    document.location= 'produk.php';
    </script>";
    } else {
        echo "<script>
    alert('simpan data gagal');
    document.location= 'produk.php';
    </script>";
    }
}

if (isset($_POST['bUbah'])) {

    $id_barang = $_POST['id_barang'];
    $kode_barang = $_POST['kode_barang'];
    $nama_barang = $_POST['nama_barang'];
    $harga_beli = $_POST['harga_beli'];
    $harga_jual = $_POST['harga_jual'];
    $stok = $_POST['stok'];
    $image = $_FILES['gambar']['name'];
    $temp = $_FILES['gambar']['tmp_name'];
    $image_files = $nama_barang . ".jpg";
    $id_supplier = $_POST['id_supplier'];

    $update_query = mysqli_query($koneksi, "UPDATE barang SET kode_barang ='$kode_barang', nama_barang = '$nama_barang',harga_beli = '$harga_beli',harga_jual = '$harga_jual',stok = '$stok',image= '$image_files',id_supplier = '$id_supplier' WHERE id_barang = '$id_barang'");

    // header('location: member.php');
    copy($temp, "../images/images_buah/" . $image_files);

    if ($update_query) {
        echo "<script>
        alert('ubah data sukses');
        document.location= 'produk.php';
        </script>";
    } else {
        echo "<script>
        alert('ubah data gagal');
        document.location= 'produk.php';
        </script>";
    }
}

if (isset($_POST['bhapus'])) {

    $hapus = mysqli_query($koneksi, "DELETE FROM barang
        WHERE id_barang = '$_POST[id_barang]'
    ");

    // header('location: member.php');

    if ($hapus) {
        echo "<script>
        alert('hapus data sukses');
        document.location= 'produk.php';
        </script>";
    } else {
        echo "<script>
        alert('hapus data gagal');
        document.location= 'produk.php';
        </script>";
    }
}


?>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <title>SiMbah</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="../vendor/boostrap/css/bootstrap.min.css">


</head>

<body id="page-top">


    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon ">
                    <img src="img/fruit.png" width="35px" alt="">
                </div>
                <div class="sidebar-brand-text mx-3">SiMbah</div>
            </a>
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="../home.php">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Back to Home</span></a>
            </li>
            <hr class="sidebar-divider">
            <li class="nav-item active">
                <a class="nav-link" href="index.php">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Kelola Data
            </div>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="pemilik.php">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>pemilik</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="karyawan.php">
                    <i class="fas fa-fw fa-table"></i>
                    <span>karyawan</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="member.php">
                    <i class="fas fa-fw fa-table"></i>
                    <span>member</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="pelanggan.php">
                    <i class="fas fa-fw fa-table"></i>
                    <span>pelanggan</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="supplier.php">
                    <i class="fas fa-fw fa-table"></i>
                    <span>supplier</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="produk.php">
                    <i class="fas fa-fw fa-table"></i>
                    <span>produk</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="transaksi.php">
                    <i class="fas fa-fw fa-table"></i>
                    <span>transaksi</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <!-- <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div> -->

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg" alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg" alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg" alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $_SESSION['nama_lengkap'] ?></span>
                                <img class="img-profile rounded-circle" src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="../logout.php" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>
                    <a href="../logout.php" class="btn btn-light rounded-pill px-4 py-2 m-2 align-items-center justify-content-center"><i class='bx bx-log-out text-white align-items-center justify-content-center'></i> Logout</a>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid mt-5">

                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Data Produk</h1>
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#modalTambah">
                            Tambah data
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="modalTambah" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="staticBackdropLabel">Form Data Produk</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <form action="" method="POST" enctype="multipart/form-data">
                                        <div class="modal-body">
                                            <input type="hidden" name="action" id="action" value="add">
                                            <div class="mb-3">
                                                <label for="exampleFormControlInput1" class="form-label">kode barang</label>
                                                <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan kode buah" name="kode_barang" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="exampleFormControlTextarea1" class="form-label">Nama Buah</label>
                                                <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Nama Buah" name="nama_barang" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="exampleFormControlTextarea1" class="form-label">Harga Beli</label>
                                                <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Harga Beli" name="harga_beli" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="exampleFormControlTextarea1" class="form-label">Harga Jual</label>
                                                <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Harga Jual" name="harga_jual" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="exampleFormControlTextarea1" class="form-label">Stok</label>
                                                <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Stok Buah" name="stok" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="exampleFormControlTextarea1" class="form-label">Gambar</label>
                                                <input type="file" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Gambar Buah" name="gambar" accept="image/*" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="exampleFormControlTextarea1" class="form-label">ID Supplier</label>
                                                <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan ID Supplier" name="id_supplier" required>
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-primary" name="bsimpan">Simpan</button>
                                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Batal</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table id="member" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>kode Buah</th>
                                    <th>Nama Buah</th>
                                    <th>Harga Beli</th>
                                    <th>Harga Jual</th>
                                    <th>Stok</th>
                                    <th>Image</th>
                                    <th>Nama Supplier</th>
                                    <th>ID Supplier</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                include '../connect.php';
                                $no = 1;
                                $produk = mysqli_query($koneksi, "SELECT * FROM barang  JOIN supplier ON barang.id_supplier = supplier.id_supplier ");
                                while ($row = mysqli_fetch_array($produk)) {

                                    $id_barang = $row['id_barang'];
                                    $kode_barang = $row['kode_barang'];
                                    $nama_barang = $row['nama_barang'];
                                    $harga_beli = $row['harga_beli'];
                                    $harga_jual = $row['harga_jual'];
                                    $stok = $row['stok'];
                                    $image = $row['image'];
                                    $id_supplier = $row['id_supplier'];
                                    $nama_supplier = $row['nama_supplier'];
                                ?>
                                    <tr>
                                        <td><?php echo $no++ ?></td>
                                        <td><?php echo $kode_barang ?></td>
                                        <td><?php echo $nama_barang ?></td>
                                        <td><?php echo $harga_beli ?></td>
                                        <td><?php echo $harga_jual ?></td>
                                        <td><?php echo $stok ?></td>
                                        <td><?php echo $image ?></td>
                                        <td><?php echo $nama_supplier ?></td>
                                        <td><?php echo $id_supplier ?></td>
                                        <td>
                                            <a href="#" class="btn btn-warning rounded-circle" data-bs-toggle="modal" data-bs-target="#modalUbah<?= $no ?>"><i class="fas fa-edit"></i></a>
                                            <a href="#" class="btn btn-danger rounded-circle" data-bs-toggle="modal" data-bs-target="#modalHapus<?= $no ?>"><i class="fas fa-trash"></i> </a>
                                        </td>
                                    </tr>

                                    <!-- awal modal ubah -->
                                    <div class="modal fade" id="modalUbah<?= $no ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Form Data Produk</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <form action="" method="POST" enctype="multipart/form-data">
                                                    <div class="modal-body">
                                                        <input type="hidden" name="id_barang" id="id_barang" value="<?= $id_barang  ?>">
                                                        <div class="mb-3">
                                                            <label for="exampleFormControlInput1" class="form-label">kode barang</label>
                                                            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan kode buah" name="kode_barang" value="<?php echo $kode_barang ?>" required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="exampleFormControlTextarea1" class="form-label">Nama Buah</label>
                                                            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Nama Buah" name="nama_barang" value="<?php echo $nama_barang ?>" required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="exampleFormControlTextarea1" class="form-label">Harga Beli</label>
                                                            <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Harga Beli" name="harga_beli" value="<?php echo $harga_beli ?>" required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="exampleFormControlTextarea1" class="form-label">Harga Jual</label>
                                                            <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Harga Jual" name="harga_jual" value="<?php echo $harga_jual ?>" required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="exampleFormControlTextarea1" class="form-label">Stok</label>
                                                            <input type="number" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Stok Buah" name="stok" value="<?php echo $stok ?>" required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="exampleFormControlTextarea1" class="form-label">Gambar</label>
                                                            <input type="file" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan Gambar Buah" name="gambar" accept="image/*" required>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="exampleFormControlTextarea1" class="form-label">ID Supplier</label>
                                                            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Masukkan ID Supplier" name="id_supplier" value="<?php echo $id_supplier ?>" required>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn btn-primary" name="bUbah">Ubah</button>
                                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Batal</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- akhir modal ubah -->

                                    <div class="modal fade" id="modalHapus<?= $no ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Konfirmasi Hapus Data Produk</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <form action="" method="POST">
                                                    <div class="modal-body">
                                                        <input type="hidden" name="id_barang" id="id_barang" value="<?= $id_barang  ?>">
                                                        <h5 class="text-center">Apakah anda yakin akan menghapus data ini ? <br>
                                                            <span class="text-danger"><?= $kode_barang ?> - <?= $nama_barang  ?></span>
                                                        </h5>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn btn-primary" name="bhapus">Hapus</button>
                                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Batal</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- akhir modal ubah -->
                                <?php

                                }
                                ?>
                            </tbody>
                        </table>
                    </div>


                    <!-- akhir modal -->
                    <script>
                        $(document).ready(function() {
                            $('#member').DataTable();
                        });
                    </script>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; SiMbah 2022</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="../index.php">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <!-- <script src="vendor/jquery/jquery.min.js"></script> -->
    <!-- <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->
    <!-- <script src="../vendor/DataTables/datatables.min.js"></script> -->
    <script src="../vendor/boostrap/js/bootstrap.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>