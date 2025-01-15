<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <!-- Include your CSS files here -->
    <link rel="stylesheet" href="path/to/your/styles.css">
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
                                <form action="<?= base_url('Home/aksi_t_wahana') ?>" method="POST" enctype="multipart/form-data">


<div class="form-group row">
    <label for="inputText" class="col-sm-2 col-form-label">Nama Wahana</label>
    <div class="col-sm-10">
        <input type="text" id="" placeholder="Nama Wahana" class="form-control" name="w" required>
    </div>
</div>

<div class="form-group row">
    <label for="inputText" class="col-sm-2 col-form-label">Harga</label>
    <div class="col-sm-10">
        <input type="text" id="nominal" placeholder="Harga" class="form-control" name="h" require15d>
    </div>
</div>
                                    
<div class="form-group row">
                                        <label for="inputText" class="col-sm-2 col-form-label">Durasi</label>
                                        <div class="col-sm-10">
                                             <select  type="select" class="form-control" name="durasi">
               <option>Pilih</option>
                 <option value="15 Menit">15 Menit</option> 
                 <option value="30 Menit">30 Menit</option> 
                 <option value="60 Menit">60 Menit</option>
                 <option value="120 Menit">120 Menit</option>
             
             </select>
                                        </div>
                                    </div>





                                    
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </table>
                        </div>
                    </div>


                                                                <script>
    function formatRupiah(angka, prefix) {
        var number_string = angka.replace(/[^,\d]/g, '').toString(),
            split   = number_string.split(','),
            sisa    = split[0].length % 3,
            rupiah  = split[0].substr(0, sisa),
            ribuan  = split[0].substr(sisa).match(/\d{3}/g);
        
        if (ribuan) {
            separator = sisa ? '.' : '';
            rupiah += separator + ribuan.join('.');
        }

        rupiah = split[1] !== undefined ? rupiah + ',' + split[1] : rupiah;
        return prefix === undefined ? rupiah : (rupiah ? 'RP ' + rupiah : '');
    }

    // Event listener untuk harga per bulan
    document.getElementById('nominal').addEventListener('keyup', function(e) {
        this.value = formatRupiah(this.value, 'RP');
    });

    // Event listener untuk harga per tahun

</script>