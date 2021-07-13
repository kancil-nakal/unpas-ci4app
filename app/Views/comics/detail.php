<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container">
  <div class="row">
    <div class="col">
      <h2 class="mt-2">Detail Komik</h2>
      <div class="card mb-3" style="max-width: 540px;">
        <div class="row no-gutters">
          <div class="col-md-4">
            <img src="/img/<?= $comics['sampul'] ?>" class="card-img" alt="">
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title">Komik <?= $comics['judul'] ?></h5>
              <p class="card-text"><b>Penulis : </b><?= $comics['penulis'];  ?></p>
              <p class="card-text"><small class="text-muted"><b>Penerbit : </b><?= $comics['penerbit']; ?></small></p>

              <a href="/comics/edit/<?= $comics['slug']; ?>" class="btn btn-warning">Edit</a>

              <form action="/comics/<?= $comics['id']; ?>" method="post" class="d-inline">
                <?= csrf_field(); ?>
                <input type="hidden" name="_method" value="DELETE">
                <button type="submit" class="btn btn-danger" onclick="return confirm('apakah anda yakin?')">Delete</button>
              </form>

              <br><br>
              <a href="/comics">Kembali ke daftar komik</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<?= $this->endSection() ?>