<div id="menu" class="menu">
	<div class="container">

		<?php if ($this->session->userdata('role_id') == '1') : ?>
			<a href="<?= base_url('tambah_menu'); ?>" class="btn btn-primary mt-3">Tambah Menu</a><br><br>
		<?php endif;  ?>

		<h4>Kategori :</h4>


		<div class="btn-group mb-3" role="group" aria-label="Basic example" id="kategori">

			<button type="button" class="btn btn-secondary" name="Coffee" id="Coffee">Coffee</button>
			<button type="button" class="btn btn-secondary" name="Non Coffee" id="Non Coffee">Non Coffee</button>
			<button type="button" class="btn btn-secondary" name="Makanan" id="Makanan">Makanan</button>
		</div>


		<div class="row mt-3">
			<?php foreach ($menu as $m) : ?>
				<div class="col-lg-3">

					<div class="shadow p-3 mb-5 bg-white">
						<img src="<?= base_url('assets/img/menu/') . $m['image']; ?>" class="img-fluid">
						<div class="text-center mt-3">
							<h5><?= $m['kopi']; ?></h5>
							<p>IDR <?= number_format($m['harga'], 2, ',', '.'); ?></p>
							<a href="<?= base_url('menu/pesan/') . $m['id']; ?>" class="btn btn-pesan">Pesan</a>
						</div>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
		<div class="row justify-content-center mt-2">
			<?= $this->pagination->create_links(); ?>
		</div>
	</div>
</div>