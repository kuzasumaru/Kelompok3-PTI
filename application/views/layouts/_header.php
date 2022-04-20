<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Lora:700|Montserrat:200,400,600|Pacifico&display=swap" rel="stylesheet">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">

  <!-- My CSS -->
  <link rel="stylesheet" type="text/css" href="<?= base_url('/assets/css/style.css'); ?>">

  <title><?= $title; ?></title>
</head>

<body>

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <div>
        <img src="assets/img/nemu-logo.png" alt="logo" style="width: 160px; height: 80px; margin: 8px;">
      </div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
        <div class="navbar-nav">

          <?php if ($title == 'Coffee Shop') : ?>
            <a class="nav-item nav-link active mr-3" href="<?= base_url('home'); ?>">Home</a>
          <?php else : ?>
            <a class="nav-item nav-link mr-3" href="<?= base_url('home'); ?>">Home</a>
          <?php endif; ?>


          <?php if ($title == 'Menu') : ?>
            <a class="nav-item nav-link active mr-3" href="<?= base_url('menu'); ?>">Menu</a>
          <?php else : ?>
            <a class="nav-item nav-link mr-3" href="<?= base_url('menu'); ?>">Menu</a>
          <?php endif; ?>

          <?php if ($title == 'Chat') : ?>
            <a class="nav-item nav-link active mr-3" href="<?= base_url('Message'); ?>">Chat</a>
          <?php else : ?>
            <a class="nav-item nav-link mr-3" href="<?= base_url('Message'); ?>">Chat</a>
          <?php endif; ?>

          <?php if ($this->session->userdata('role_id') == '2') : ?>
            <?php if ($title == 'Pesanan') : ?>
              <a class="nav-item nav-link active" href="<?= base_url('pesanan'); ?>">Pesanan (<span><?= $notif_pesanan; ?></span>)</a>
            <?php else : ?>
              <a class="nav-item nav-link" href="<?= base_url('pesanan'); ?>">Pesanan (<span><?= $notif_pesanan; ?></span>)</a>
            <?php endif; ?>
          <?php endif; ?>

          <!-- Nav Item - Profil -->
          <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="mr-3 d-none d-lg-inline text-gray-40 small">Hallo, <?= $this->session->userdata('username'); ?></span>
              <img class="img-profile rounded-circle mr-1" width="28px" src="<?= base_url(); ?>assets/img/undraw_profile.svg">
            </a>
            <!-- Dropdown - Profil Logout-->
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
              <a href="<?= base_url('auth/logout') ?>" class="dropdown-item" data-toggle="modal" data-target="#logoutModal">
                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-3 text-gray-400"></i>
                Logout
              </a>
            </div>
          </li>

        </div>
      </div>
    </div>
  </nav>
  <!-- End Navbar -->