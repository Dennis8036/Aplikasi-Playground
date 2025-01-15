<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan History</title>
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
        .filter-container {
            margin-bottom: 20px;
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.21/jspdf.plugin.autotable.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.1/xlsx.full.min.js"></script>
</head>
<body>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <!-- Filter Form -->
                    <div class="filter-container">
                        <div style="display: flex; gap: 15px; align-items: center;">
                            <div class="form-group">
                                <label for="startDate" style="font-weight: bold;">Tanggal Mulai</label>
                                <input 
                                    type="date" 
                                    id="startDate" 
                                    name="startDate" 
                                    class="form-control" 
                                    style="padding: 8px; border-radius: 4px; border: 1px solid #ccc; width: 200px;">
                            </div>
                            <div class="form-group">
                                <label for="endDate" style="font-weight: bold;">Tanggal Akhir</label>
                                <input 
                                    type="date" 
                                    id="endDate" 
                                    name="endDate" 
                                    class="form-control" 
                                    style="padding: 8px; border-radius: 4px; border: 1px solid #ccc; width: 200px;">
                            </div>
                            <button 
                                onclick="filterData()" 
                                class="btn btn-primary" 
                                style="padding: 10px 20px; border: none; background-color: #007bff; color: white; border-radius: 5px; cursor: pointer;">
                                Filter
                            </button>
                            <button 
                                onclick="resetFilter()" 
                                class="btn btn-secondary" 
                                style="padding: 10px 20px; border: none; background-color: #6c757d; color: white; border-radius: 5px; cursor: pointer;">
                                Reset
                            </button>
                        </div>

                        <button onclick="printAllColumns()" class="btn btn-success">Print Windows</button>
                        <button onclick="printPDF()" class="btn btn-danger">Print PDF</button>
                        <button onclick="downloadExcel()" class="btn btn-primary">Download Excel</button>
                    </div>
                    
                    <div class="table-responsive">
                        <table class="table table-bordered" id="laporanHistory">
                            <thead class="thead-light">
                                <tr>
                                    <th>No</th>
                                    <th>Username</th>
                                    <th>Wahana</th>
                                    <th>Harga Daftar</th>
                                    <th>Durasi Main</th>
                                    <th>Waktu Daftar</th>
                                    <th>Waktu Expired</th>
                                    <?php if(session()->get('id_level') == 1) { ?>
                                    <th>Aksi</th>
                                    <?php } ?>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                $no = 1;
                                foreach($history as $h){
                                ?>
                                <tr data-tanggal="<?= $h->waktu_daftar ?>">
                                    <td><?= $no++ ?></td>
                                    <td><?= $h->username ?></td>
                                    <td><?= $h->wahana ?></td>
                                    <td>Rp <?= number_format($h->harga_daftar, 0, ',', '.') ?></td>
                                    <td><?= $h->waktu_main ?></td>
                                    <td><?= $h->waktu_daftar ?></td>
                                    <td><?= $h->waktu_expired ?></td>
                                    <?php if(session()->get('id_level') == 1) { ?>
                                    <td>
                                        <a href="<?= base_url('Home/hapus_history/'.$h->id_history) ?>">
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

    <script>
function filterData() {
    var startDate = document.getElementById('startDate').value;
    var endDate = document.getElementById('endDate').value;
    var rows = document.querySelectorAll('#laporanHistory tbody tr');
    var displayedRows = 0; // Variabel untuk menghitung jumlah baris yang ditampilkan

    rows.forEach(function(row, index) {
        var tanggalAcara = row.getAttribute('data-tanggal'); // Format: "2025-01-13 20:29:22"
        var tanggalTanpaJam = tanggalAcara.split(" ")[0]; // Ambil hanya bagian tanggal (2025-01-13)

        // Filter berdasarkan tanggal tanpa jam
        if (startDate && tanggalTanpaJam < startDate || endDate && tanggalTanpaJam > endDate) {
            row.style.display = 'none';
        } else {
            row.style.display = '';
            displayedRows++;
        }
    });

    // Menyesuaikan nomor urut setelah filter
    updateRowNumbers();
}

// Fungsi untuk menyesuaikan nomor urut
function updateRowNumbers() {
    var rows = document.querySelectorAll('#laporanHistory tbody tr');
    var counter = 1; // Mulai dengan nomor 1
    rows.forEach(function(row) {
        if (row.style.display !== 'none') {
            var cell = row.querySelector('td:nth-child(1)'); // Nomor urut ada di kolom pertama
            cell.textContent = counter++;
        }
    });
}


function resetFilter() {
    document.getElementById('startDate').value = '';
    document.getElementById('endDate').value = '';
    
    var rows = document.querySelectorAll('#laporanHistory tbody tr');
    
    rows.forEach(function(row) {
        row.style.display = ''; // Tampilkan semua baris
    });

    // Menyesuaikan nomor urut setelah reset filter
    updateRowNumbers();
}

        function printAllColumns() {
            var printTable = '<table class="table">';
            printTable += '<thead><tr><th>No</th><th>Username</th><th>Wahana</th><th>Harga Daftar</th><th>Waktu Main</th><th>Waktu Daftar</th><th>Waktu Expired</th></tr></thead><tbody>';

            var rows = document.querySelectorAll('table tbody tr');
            rows.forEach(function(row) {
                if (row.style.display !== 'none') {
                    var nomor = row.querySelector('td:nth-child(1)').textContent;
                    var username = row.querySelector('td:nth-child(2)').textContent;
                    var wahana = row.querySelector('td:nth-child(3)').textContent;
                    var harga = row.querySelector('td:nth-child(4)').textContent;
                    var main = row.querySelector('td:nth-child(5)').textContent;
                    var daftar = row.querySelector('td:nth-child(6)').textContent;
                    var expired = row.querySelector('td:nth-child(7)').textContent;

                    printTable += `<tr><td>${nomor}</td><td>${username}</td><td>${wahana}</td><td>${harga}</td><td>${main}</td><td>${daftar}</td><td>${expired}</td></tr>`;
                }
            });

            printTable += '</tbody></table>';
            var newWindow = window.open('', '', 'width=800,height=600');
            newWindow.document.write('<html><head><title>Print Laporan History</title>');
            newWindow.document.write('<style>table { width: 100%; border-collapse: collapse; } th, td { border: 1px solid black; padding: 8px; text-align: left; }</style>');
            newWindow.document.write('</head><body>');
            newWindow.document.write(printTable);
            newWindow.document.write('</body></html>');
            newWindow.document.close();

            setTimeout(function() {
                newWindow.focus();
                newWindow.print();
                newWindow.close();
            }, 500);
        }

        function printPDF() {
            const { jsPDF } = window.jspdf;
            const doc = new jsPDF();

            var table = document.getElementById("laporanHistory");
            var rows = table.querySelectorAll("tbody tr");
            
            var tableData = [];
            rows.forEach(function(row) {
                if (row.style.display !== 'none') {
                    var columns = row.querySelectorAll("td");
                    var data = [
                        columns[0].innerText,
                        columns[1].innerText,
                        columns[2].innerText,
                        columns[3].innerText,
                        columns[4].innerText,
                        columns[5].innerText
                    ];
                    tableData.push(data);
                }
            });

            const columns = ["No", "Username", "Wahana", "Harga Daftar", "Waktu Main", "Waktu Daftar"];
            
            doc.autoTable({
                head: [columns],
                body: tableData,
                startY: 20,
            });

            var pdfOutput = doc.output('bloburl');
            window.open(pdfOutput, '_blank');
        }

        function downloadExcel() {
            var table = document.getElementById("laporanHistory");
            
            var wb = XLSX.utils.book_new();
            var ws_data = [
                ["No", "Username", "Wahana", "Harga Daftar", "Waktu Main", "Waktu Daftar", "Waktu Expired"]
            ];

            var rows = table.querySelectorAll("tbody tr");
            rows.forEach(function(row) {
                if (row.style.display !== 'none') {
                    var columns = row.querySelectorAll("td");
                    var data = [
                        columns[0].innerText,
                        columns[1].innerText,
                        columns[2].innerText,
                        columns[3].innerText,
                        columns[4].innerText,
                        columns[5].innerText,
                        columns[6].innerText
                    ];
                    ws_data.push(data);
                }
            });

            var ws = XLSX.utils.aoa_to_sheet(ws_data);
            XLSX.utils.book_append_sheet(wb, ws, "Laporan History");

            XLSX.writeFile(wb, "laporan_history.xlsx");
        }
    </script>
</body>
</html>
