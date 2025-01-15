<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pendaftaran</title>
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
            min-width: 1300px;
        }
    </style>
</head>
<body>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                                                <a href="<?= base_url('home/t_pendaftaran') ?>">
                            <button class="btn btn-success">Daftar Wahana</button>
                        </a>
                        <table class="table table-bordered">
                            <thead class="thead-light">
                                <tr>
                                    <th>No</th>
                                    <th>Username</th>
                                    <th>Wahana</th>
                                    <th>Harga</th>
                                    <th>Durasi Main</th>
                                    <!-- <th>Durasi</th> -->
                                    <th>Waktu Daftar</th>
                                    <th>Waktu Expired</th>
                                    <th>Status Bayar</th>
                                    <?php if (session()->get('id_level') == 1) { ?>
                                    <th>Aksi</th>
                                    <?php } ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                $no = 1;
                                foreach ($pendaftaran as $p) {
                                ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= $p->username ?></td>
                                    <td><?= $p->nama_wahana ?></td>
                                      <td>Rp <?= number_format($p->harga_daftar, 0, ',', '.') ?></td>
                                      <td><?= $p->waktu_main ?></td>
                                    <!-- <td><?= $p->durasi ?></td> -->
                                    <td><?= $p->waktu_daftar ?></td>
                                    <td><?= $p->waktu_expired ?></td>
                                    <td>
    <?php if ($p->status == 'Lunas') { ?>
        <span class="badge badge-success"><?= $p->status ?></span>
    <?php } else { ?>
        <span class="badge badge-danger"><?= $p->status ?></span>
    <?php } ?>
</td>
                                    <?php if (session()->get('id_level') == 1) { ?>
                                    <td>
                                        <button class="btn btn-primary ti-pencil" 
                                                data-toggle="modal" 
                                                data-target="#editPendaftaranModal" 
                                                data-id="<?= $p->id_pendaftaran ?>"
                                                 data-username="<?= $p->username ?>"
                                                  data-id_wahana="<?= $p->id_wahana ?>"
                                                   data-harga_daftar="<?= $p->harga_daftar ?>"
                                                   data-waktu_main="<?= $p->waktu_main ?>"
                                                   data-status="<?= $p->status ?>"
                                                data-status="<?= $p->status ?>"
                                                data-toggle="tooltip"
                                                data-placement="top"
                                                title="Edit">
                                        </button>
                                        <a href="<?= base_url('Home/hapus_pendaftaran/' . $p->id_pendaftaran) ?>">
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

    <!-- Edit Pendaftaran Modal -->
    <div class="modal fade" id="editPendaftaranModal" tabindex="-1" aria-labelledby="editPendaftaranModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editPendaftaranModalLabel">Edit Pendaftaran</h5>
                    <button type="button" class="btn btn-close" data-dismiss="modal" aria-label="Close">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="editPendaftaranForm" action="<?= base_url('Home/aksi_edit_pendaftaran') ?>" method="POST">
                        <input type="hidden" id="id_pendaftaran" name="id_pendaftaran">

                        <div class="mb-3">
                            <label for="edit_username" class="form-label">Username</label>
                            <input type="text" class="form-control" id="edit_username" name="username" required>
                        </div>

                        <div class="mb-3">
                            <label for="edit_id_wahana" class="form-label">Nama Wahana</label>

                            <select type="text" class="form-control" id="edit_id_wahana" name="wahana">
                               
                                  <?php foreach($wahana as $dennis): ?>
                <option value="<?=$dennis->id_wahana?>">
                    <?=$dennis->nama_wahana?>
                </option>
                                  <?php endforeach; ?>
                            </select>
                        </div>


                      <div class="mb-3">
                            <label for="edit_harga" class="form-label">Harga</label>
                            <input type="text" class="form-control" id="edit_harga" name="harga" readonly style="background-color: #ffffff; border: 1px solid #ced4da; cursor: default;">
                        </div>

                                              <div class="mb-3">
                            <label for="edit_waktu" class="form-label">Durasi Main</label>
                            <input type="text" class="form-control" id="edit_waktu" name="waktu" readonly style="background-color: #ffffff; border: 1px solid #ced4da; cursor: default;">
                        </div>
                       <!--  <div class="mb-3">
                            <label for="edit_durasi" class="form-label">Durasi</label>
                            <select class="form-control" id="edit_durasi" name="durasi" required>
                                <option value="15 Menit">15 Menit</option> 
                                <option value="30 Menit">30 Menit</option> 
                                <option value="1 Jam">1 Jam</option>
                                <option value="1 Jam 30 Menit">1 Jam 30 Menit</option>
                                <option value="2 Jam">2 Jam</option>
                            </select>
                        </div> -->

                        <div class="mb-3">
                            <label for="edit_status" class="form-label">Status Pembayaran</label>
                            <select class="form-control" id="edit_status" name="status" required>
                                <option value="Pending">Pending</option>
                                <option value="Lunas">Lunas</option>
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
            $('#editPendaftaranModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget);
                var id_pendaftaran = button.data('id');
                var username = button.data('username');
                var id_wahana = button.data('id_wahana');
                 var harga_daftar = button.data('harga_daftar');
                  var waktu_main = button.data('waktu_main');
                // var durasi = button.data('durasi');
                var status = button.data('status');

                var modal = $(this);
                modal.find('#id_pendaftaran').val(id_pendaftaran);
                modal.find('#edit_username').val(username);
                modal.find('#edit_id_wahana').val(id_wahana);
                modal.find('#edit_harga').val(harga_daftar);
                modal.find('#edit_waktu').val(waktu_main);
                // modal.find('#edit_durasi').val(durasi);
                modal.find('#edit_status').val(status);
            });
        });
    </script>
</body>
</html>
