<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wahana</title>
    <link rel="stylesheet" href="path/to/your/styles.css">
    <style>
        .card {
            margin: 20px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .table-responsive {
            overflow-x: auto;
        }
        .table {
            min-width: 900px;
        }
    </style>
</head>
<body>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                         <?php if(session()->get('id_level') == 1 || session()->get('id_level') == 2) { ?>
                        <a href="<?= base_url('home/t_wahana') ?>">
                            <button class="btn btn-success">Tambah Wahana</button>
                        </a>
                        <?php } ?>
                        <table class="table table-bordered">
                            <thead class="thead-light">
                                <tr>
                                    <th>No</th>
                                    <th>Nama Wahana</th>
                                    <th>Harga</th>
                                     <th>Durasi Main</th>
                                    <?php if(session()->get('id_level') == 1 || session()->get('id_level') == 2) { ?>
                                    <th>Aksi</th>
                                    <?php } ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                $no = 1;
                                foreach ($wahana as $w) {
                                ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= $w->nama_wahana ?></td>
                                    
                                     <td>Rp <?= number_format($w->harga, 0, ',', '.') ?></td>
                                     <td><?= $w->waktu ?></td>
                                    <?php if(session()->get('id_level') == 1 || session()->get('id_level') == 2) { ?>
                                    <td>
                                        <button class="btn btn-primary ti-pencil" 
                                                data-toggle="modal" 
                                                data-target="#editWahanaModal" 
                                                data-id="<?= $w->id_wahana ?>"
                                                data-nama="<?= $w->nama_wahana ?>"
                                                data-harga="<?= $w->harga ?>"
                                                data-waktu="<?= $w->waktu ?>"
                                                data-toggle="tooltip"
                                                data-placement="top"
                                                title="Edit">
                                        </button>
                                        <a href="<?= base_url('Home/hapus_wahana/' . $w->id_wahana) ?>">
                                            <button class="btn btn-danger ti-trash" 
                                                    data-toggle="tooltip" 
                                                    data-placement="top" 
                                                    title="Hapus">
                                            </button>
                                        </a>
                                    </td>
                                    <?php } ?>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Edit Wahana Modal -->
    <div class="modal fade" id="editWahanaModal" tabindex="-1" aria-labelledby="editWahanaModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editWahanaModalLabel">Edit Wahana</h5>
                    <button type="button" class="btn btn-close" data-dismiss="modal" aria-label="Close">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="editWahanaForm" action="<?= base_url('Home/aksi_edit_wahana') ?>" method="POST">
                        <input type="hidden" id="id_wahana" name="id_wahana">
                        <div class="mb-3">
                            <label for="edit_nama_wahana" class="form-label">Nama Wahana</label>
                            <input type="text" class="form-control" id="edit_nama_wahana" name="nama_wahana" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_harga" class="form-label">Harga</label>
                            <input type="text" class="form-control" id="edit_harga" name="harga" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_waktu" class="form-label">Durasi</label>
                            <select class="form-control" id="edit_waktu" name="waktu" required>
                                <option value="15 Menit">15 Menit</option> 
                                <option value="30 Menit">30 Menit</option> 
                                <option value="60 Menit">60 Menit</option>
                                <option value="120 Menit">120 Menit</option>
                               

                                <!-- Tambahkan opsi level lain jika ada -->
                            </select>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-success">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="path/to/your/scripts.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="path/to/your/bootstrap.bundle.min.js"></script>

    <script>
        $(document).ready(function() {
            $('[data-toggle="tooltip"]').tooltip();
            $('#editWahanaModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget);
                var id_wahana = button.data('id');
                var nama = button.data('nama');
                var harga = button.data('harga');
                var waktu = button.data('waktu');

                var modal = $(this);
                modal.find('#id_wahana').val(id_wahana);
                modal.find('#edit_nama_wahana').val(nama);
                modal.find('#edit_harga').val(harga);
                 modal.find('#edit_waktu').val(waktu);
            });
        });
    </script>
</body>
</html>
