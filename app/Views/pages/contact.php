<!-- untuk menampilkan layout template -->
<?= $this->extend('layout/template'); ?>
<!-- untuk memangil content -->
<?= $this->Section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col">
            <h1>Contact</h1>
            <?php foreach ($alamat as $a) : ?>
                <ul>
                    <li><?= $a['tipe']; ?></li>
                    <li><?= $a['alamat']; ?></li>
                    <li><?= $a['kota']; ?></li>
                </ul>
            <?php endforeach; ?>
        </div>
    </div>
</div>

<?= $this->endSection('content'); ?>
<!-- Akhir menampilkan content -->