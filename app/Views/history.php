<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>History</title>
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

                        <table class="table table-bordered">
                            <thead class="thead-light">
                                <tr>
                                    <th>No</th>
                                    <th>Username</th>
                                    <th>Wahana</th>
                                    <th>Harga Daftar</th>
                                    <th>Durasi Main</th>
                                    <th>Waktu Daftar</th>
                                    <th>Waktu Expired</th>
                                    
                                    <th>Aksi</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                $no = 1;
                                foreach($history as $h){
                                ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= $h->username ?></td>
                                    <td><?= $h->wahana ?></td>
                                    <td>Rp <?= number_format($h->harga_daftar, 0, ',', '.') ?></td>
                                    <td><?= $h->waktu_main ?></td>
                                    <td><?= $h->waktu_daftar ?></td>
                                    <td><?= $h->waktu_expired ?></td>
                                    
                                    <td>
                                       <!--  <button class="btn btn-primary ti-pencil" 
                                                data-toggle="modal" 
                                                data-target="#editHistoryModal" 
                                                data-id="<?= $h->id_history ?>"
                                                data-username="<?= $h->username ?>"
                                                data-wahana="<?= $h->wahana ?>"
                                                data-harga="<?= $h->harga_daftar ?>"
                                                data-main="<?= $h->waktu_main ?>"
                                                data-toggle="tooltip"
                                                data-placement="top"
                                                title="Edit">
                                        </button> -->
                                        <a href="<?= base_url('Home/hapus_history/'.$h->id_history) ?>">
                                            <button class="btn btn-danger ti-trash" 
                                                    data-toggle="tooltip" 
                                                    data-placement="top" 
                                                    title="Hapus">
                                            </button>
                                        </a>
                                    </td>
                                    
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Edit History Modal -->
    <div class="modal fade" id="editHistoryModal" tabindex="-1" aria-labelledby="editHistoryModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editHistoryModalLabel">Edit History</h5>
                    <button type="button" class="btn btn-close" data-dismiss="modal" aria-label="Close">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="editHistoryForm" action="<?= base_url('Home/aksi_edit_history') ?>" method="POST">
                        <input type="hidden" id="id_history" name="id_history">
                        <div class="mb-3">
                            <label for="edit_username" class="form-label">Username</label>
                            <input type="text" class="form-control" id="edit_username" name="username" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_wahana" class="form-label">Wahana</label>
                            <input type="text" class="form-control" id="edit_wahana" name="wahana" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_harga_daftar" class="form-label">Harga Daftar</label>
                            <input type="text" class="form-control" id="edit_harga_daftar" name="harga_daftar" required>
                        </div>
                        <div class="mb-3">
                            <label for="edit_waktu_main" class="form-label">Waktu Main</label>
                            <input type="text" class="form-control" id="edit_waktu_main" name="waktu_main" required>
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
            $('#editHistoryModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget);
                var id_history = button.data('id');
                var username = button.data('username');
                var wahana = button.data('wahana');
                var harga = button.data('harga');
                var main = button.data('main');

                var modal = $(this);
                modal.find('#id_history').val(id_history);
                modal.find('#edit_username').val(username);
                modal.find('#edit_wahana').val(wahana);
                modal.find('#edit_harga_daftar').val(harga);
                modal.find('#edit_waktu_main').val(main);
            });
        });
    </script>
</body>
</html>
