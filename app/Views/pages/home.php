<!-- untuk menampilkan layout template -->
<?= $this->extend('layout/template'); ?>
<!-- untuk memangil content -->
<?= $this->Section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col">
            <h1>Hello, world!</h1>
        </div>
    </div>
</div>

<?= $this->endSection('content'); ?>
<!-- Akhir menampilkan content -->