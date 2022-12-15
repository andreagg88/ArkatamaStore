<div class="card">
    <h5 class="card-header">Detail Produk</h5>
    <div class="card-body">
        <?php foreach ($admin as $key => $value) : ?>
            <div class="row">
                <div class="col-md-4">
                    <img src="<?= base_url('uploads/') . $value['gambar_barang']; ?>" class="card-img-top" alt="image">

                </div>
                <div class="col-md-8">
                    <table class="table">
                        <tr>
                            <td>Nama Produk</td>
                            <td><strong><?= $value['nama_barang']; ?></strong></td>
                        </tr>
                        <tr>
                            <td>Keterangan</td>
                            <td><strong><?= $value['keterangan_barang']; ?></strong></td>
                        </tr>
                        <tr>
                            <td>Kategori</td>
                            <td><strong><?= $value['nama_kategori']; ?></strong></td>
                        </tr>

                        <tr>
                            <td>Stok</td>
                            <td><strong><?= $value['stok_barang']; ?></strong></td>
                        </tr>
                        <tr>
                            <td>Kondisi</td>
                            <td><strong><?= $value['kondisi_barang']; ?></strong></td>
                        </tr>
                        <tr>
                            <td>Harga</td>
                            <td><strong>
                                    <div class="btn btn-warning text-white">Rp. <?= number_format($value['harga_barang'], 0, ',', '.'); ?></div>
                                </strong></td>
                        </tr>
                    </table>
                    <br><a href="<?= base_url('admin'); ?>" class="btn btn-danger ">Kembali</a>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>