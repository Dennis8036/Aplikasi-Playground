<div class="row">
    <!-- Tabel untuk Countdown Aktif -->
    <div class="col-12 col-md-12 mb-4">

        <div class="card shadow-lg border-0 rounded-3">
            <div class="card-header bg-gradient text-white">
                <h4 class="mb-0">Wahana Sedang Dimainkan</h4>
            </div>
            <div class="card-body p-3">
                <table class="table table-bordered table-hover table-sm custom-table">
                    <thead class="bg-primary text-white">
                        <tr>
                            <th>No</th>
                            <th>Username</th>
                            <th>Wahana</th>
                            <th>Durasi Main</th>
                            <th>Waktu Daftar</th>
                            <th>Waktu Expired</th>
                            <th>Countdown</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1; foreach ($dashboard as $d): ?>
                        <?php if (new DateTime() < new DateTime($d->waktu_expired)): ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $d->username ?></td>
                            <td><?= $d->wahana ?></td>
                            <td class="text-info"><?= $d->waktu_main ?></td>
                            <td><?= $d->waktu_daftar ?></td>
                            <td class="text-danger"><?= $d->waktu_expired ?></td>
                            <td>
                                <span class="countdown text-warning" 
                                      data-expired="<?= $d->waktu_expired ?>">
                                </span>
                            </td>
                        </tr>
                        <?php endif; ?>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Tabel untuk Data yang Sudah Expired -->
    <div class="col-12 col-md-12 mb-4">
        <div class="card shadow-lg border-0 rounded-3">
            <div class="card-header bg-danger text-white">
                <h4 class="mb-0">Wahana Telah Selesai Hari Ini</h4>
            </div>
            <div class="card-body p-3">
                <table class="table table-bordered table-hover table-sm custom-table">
                    <thead class="bg-dark text-white">
                        <tr>
                            <th>No</th>
                            <th>Username</th>
                            <th>Wahana</th>
                            <th>Durasi Main</th>
                            <th>Waktu Daftar</th>
                            <th>Waktu Expired</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1; foreach ($dashboard as $d): ?>
                        <?php if (new DateTime() >= new DateTime($d->waktu_expired)): ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $d->username ?></td>
                            <td><?= $d->wahana ?></td>
                            <td class="text-info"><?= $d->waktu_main ?></td>
                            <td><?= $d->waktu_daftar ?></td>
                            <td class="text-danger"><?= $d->waktu_expired ?></td>
                        </tr>
                        <?php endif; ?>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const countdownElements = document.querySelectorAll(".countdown");
        countdownElements.forEach((element) => {
            const expiredTime = new Date(element.dataset.expired).getTime();
            const interval = setInterval(() => {
                const now = new Date().getTime();
                const distance = expiredTime - now;

                if (distance < 0) {
                    element.innerText = "Expired";
                    clearInterval(interval);
                    // Pindahkan data ke tabel expired (otomatis)
                    const row = element.closest("tr");
                    document.querySelector(".col-12 .table tbody").appendChild(row);
                } else {
                    const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                    const seconds = Math.floor((distance % (1000 * 60)) / 1000);
                    element.innerText = `${minutes}m ${seconds}s`;
                }
            }, 1000);
        });
    });
</script>

<!-- CSS tambahan untuk memperbaiki layout tabel -->
<style>
    .card-body {
        padding: 15px;
    }

    .custom-table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 0;
    }

    .custom-table th, .custom-table td {
        vertical-align: middle;
        text-align: center;
        padding: 10px;
        border: 1px solid #ddd;
    }

    .custom-table th {
        font-size: 14px;
        background-color: #f8f9fa;
        color: #343a40;
        font-weight: bold;
    }

    .custom-table td {
        font-size: 12px;
        color: #495057;
    }

    .custom-table tbody tr:hover {
        background-color: #f1f1f1;
        transition: background-color 0.3s ease;
    }

    .countdown {
        font-weight: bold;
        font-size: 14px;
    }

    .table td {
        padding: 10px;
    }

    .card-header {
        border-radius: 5px 5px 0 0;
        padding: 15px;
        text-align: center;
        font-size: 18px;
    }

    /* Responsif untuk tampilan mobile */
    @media (max-width: 767px) {
        .col-md-6 {
            width: 100%;
        }
        .custom-table th, .custom-table td {
            font-size: 10px;
        }
    }

    /* Gradient header styling */
    .bg-gradient {
        background: linear-gradient(90deg, #007bff, #00c6ff);
    }

    .bg-primary {
        background-color: #007bff !important;
    }

    .bg-danger {
        background-color: #dc3545 !important;
    }
</style>
