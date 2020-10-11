<!-- untuk menampilkan layout template -->
<?= $this->extend('layout/template'); ?>
<!-- untuk memangil content -->
<?= $this->Section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col">
            <h1>About</h1>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eos, ipsa totam cum quam voluptatem placeat iste, fugiat vero rerum debitis dicta unde illo obcaecati repellendus?</p>
        </div>
    </div>
</div>

<?= $this->endSection('content'); ?>
<!-- Akhir menampilkan content -->