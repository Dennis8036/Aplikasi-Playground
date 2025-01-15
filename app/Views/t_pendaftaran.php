<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <!-- Include your CSS files here -->
    <link rel="stylesheet" href="path/to/your/styles.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <style>
        .card {
            margin: 20px; /* Adjust margin as needed */
            padding: 20px; /* Add padding to the card */
            border-radius: 8px; /* Optional: for rounded corners */
            box-shadow: 0 2px 4px rgba(0,0,0,0.1); /* Optional: for shadow effect */
        }
        .table-responsive {
            overflow-x: auto; /* Allow horizontal scroll if needed */
        }
        .table {
            min-width: 1300px; /* Ensure table is wide enough */
        }
    </style>
</head>
<body>
    <!-- Sidebar start -->
    <!-- Your sidebar code here -->
    <!-- Sidebar end -->

    <!-- Content body start -->

        <!-- row -->

       
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"></h4>

                           
                                <table class="table">
                                <!-- General Form Elements -->
                                <form action="<?= base_url('Home/aksi_t_pendaftaran') ?>" method="POST" enctype="multipart/form-data">

<div class="form-group row">
    <label for="inputTime" class="col-sm-2 col-form-label">Nama Pelanggan</label>
    <div class="col-sm-10">
        <input type="text"  class="form-control" placeholder="Nama Pelanggan" name="id_user" required>
    </div>
</div>



<div class="form-group row">
    <label for="judul" class="col-sm-2 col-form-label">Nama Wahana</label>
    <div class="col-sm-10">
        <select class="form-control" name="wahana" id="wahana" required>
            <option value="">Pilih</option>
            <?php foreach($wahana as $dennis): ?>
                <option value="<?=$dennis->id_wahana?>" data-harga="<?=$dennis->harga?>" data-waktu="<?=$dennis->waktu?>">
                    <?=$dennis->nama_wahana?>
                </option>
            <?php endforeach; ?>
        </select>
    </div>
</div>


<div class="form-group row">
    <label for="harga" class="col-sm-2 col-form-label">Harga</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="harga" name="harga" readonly style="background-color: #ffffff; border: 1px solid #ced4da; cursor: default;">
    </div>
</div>

<div class="form-group row">
    <label for="waktu" class="col-sm-2 col-form-label">Durasi Main</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="waktu" name="waktu" readonly style="background-color: #ffffff; border: 1px solid #ced4da; cursor: default;">
    </div>
</div>

                                    
<!-- <div class="form-group row">
                                        <label for="inputText" class="col-sm-2 col-form-label">Durasi</label>
                                        <div class="col-sm-10">
                                             <select  type="select" class="form-control" name="durasi">
               <option>Pilih</option>
                <option value="15 Menit">15 Menit</option> 
               <option value="30 Menit">30 Menit</option> 
               <option value="1 Jam">1 Jam</option>
               <option value="1 Jam 30 Menit">1 Jam 30 Menit</option>
               <option value="2 Jam">2 Jam</option>
             
             </select>
                                        </div>
                                    </div> -->

<!-- <div class="form-group row">
    <label for="inputTime" class="col-sm-2 col-form-label">Waktu Expired</label>
    <div class="col-sm-10">
        <input type="time" id="durasi" class="form-control" name="exp" required>
    </div>
</div> -->

<div class="form-group row">

<input type="hidden" name="status" value="Pending">

                                    
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </table>
                        </div>
                    </div>


<script>
$(document).ready(function() {
    // Menambahkan kondisi ketika halaman dimuat pertama kali
    if ($('#wahana').val() === "") {
        // Tampilkan teks default saat halaman dimuat pertama kali
        $('#harga').val('Pilih Wahana');
        $('#waktu').val('Pilih Wahana');
    }

    // Event listener saat wahana dipilih
    $('#wahana').on('change', function() {
        // Ambil nilai id_wahana yang dipilih
        var selectedWahana = $(this).val();

        if (selectedWahana === "") {
            // Tampilkan teks default saat opsi "Pilih" dipilih
            $('#harga').val('Pilih Wahana');
            $('#waktu').val('Pilih Wahana');
        } else {
            // Ambil harga wahana yang dipilih dari atribut data-harga
            var harga = $(this).find(':selected').data('harga');
            
            // Ambil waktu wahana yang dipilih dari atribut data-waktu
            var waktu = $(this).find(':selected').data('waktu');
            
            // Cek apakah harga ada
            if (harga) {
                // Format harga dengan pemisah ribuan dan menambahkan "Rp"
                var formattedHarga = formatRupiah(harga);
                
                // Update input harga dengan harga yang diformat
                $('#harga').val(formattedHarga); // Mengisi harga pada form harga
            }

            // Cek apakah waktu ada
            if (waktu) {
                // Update input waktu dengan waktu yang diambil
                $('#waktu').val(waktu); // Mengisi waktu pada form waktu
            }
        }
    });

    // Fungsi untuk format angka ke dalam format "Rp .,"
    function formatRupiah(angka) {
        var numberString = angka.toString().replace(/[^,\d]/g, ''); // Hilangkan karakter selain angka dan koma
        var split = numberString.split(',');
        var sisa = split[0].length % 3;
        var rupiah = split[0].substr(0, sisa);
        var ribuan = split[0].substr(sisa).match(/\d{3}/gi);

        // Gabungkan angka dengan pemisah ribuan
        if (ribuan) {
            var separator = sisa ? '.' : '';
            rupiah += separator + ribuan.join('.');
        }

        // Jika ada bagian desimal (setelah koma)
        rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;

        // Menambahkan "Rp" di depan
        return 'Rp ' + rupiah;
    }
});




</script>
