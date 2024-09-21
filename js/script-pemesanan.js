function updateHarga() {
    // Ambil nilai tipe kamar yang dipilih
    const tipeKamar = document.getElementById("tipeKamar").value;
  
    // Tentukan harga dasar berdasarkan tipe kamar
    let harga = 0;
    switch (tipeKamar) {
      case "Standar":
        harga = 500000;
        break;
      case "Deluxe":
        harga = 750000;
        break;
      case "Family":
        harga = 900000;
        break;
    }
  
    // Tampilkan harga pada elemen input "harga"
    document.getElementById("harga").value = formatRupiah(harga);
  
    // Hitung total bayar
    hitungTotal();
  }
  
  function hitungTotal() {
    // Ambil nilai dari inputan
    const tipeKamar = document.getElementById("tipeKamar").value;
    const durasi = document.getElementById("durasi").value;
    const breakfast = document.getElementById("breakfast").checked;
  
    // Harga dasar sudah dihitung di fungsi updateHarga()
    const harga = parseInt(document.getElementById("harga").value.replace(/\./g, '')); // Hapus titik dari format rupiah
  
    // Hitung total harga sebelum diskon dan tambahan breakfast
    let total = harga * durasi;
  
    // Berikan diskon jika lama menginap lebih dari 3 hari
    if (durasi > 3) {
      total *= 0.9; // Diskon 10%
    }
  
    // Tambahkan biaya breakfast jika dicentang
    if (breakfast) {
      total += durasi * 80000;
    }
  
    // Tampilkan total harga
    document.getElementById("totalBayar").value = formatRupiah(total);
  }

function formatRupiah(angka) {
    var number_string = angka.toString(),
      split   = number_string.split(','),
      sisa     = split[0].length % 3,
      rupiah     = split[0].substr(0, sisa),
      ribuan     = split[0].substr(sisa).match(/\d{3}/gi);
  
    // tambahkan titik setiap 3 angka
    if (ribuan) {
      separator = sisa ? '.' : '';
      rupiah += separator + ribuan.join('.');
    }
  
    rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
    return rupiah;
}

// Panggil updateHarga() saat halaman dimuat (opsional, jika ingin harga awal terisi)
window.onload = function() {
    updateHarga();
};

function validasiNomorIdentitas() {
    var nomorIdentitas = document.getElementById("nomorIdentitas").value;
    if (nomorIdentitas.length !== 16) {
        alert("Nomor Identitas harus 16 digit");
    }
}

function validasiDurasi() {
    var durasi = document.getElementById("durasi").value;
    if (isNaN(durasi)) {
        alert("harus isi angka");
    }
}

// Untuk Review Form
function reviewForm() {
    // Get form data
    const namaPemesan = document.getElementById('namaPemesan').value;
    const jenisKelamin = document.querySelectorAll('input[name="jenisKelamin"]:checked')[0].value;
    const nomorIdentitas = document.getElementById('nomorIdentitas').value;
    const tipeKamar = document.getElementById('tipeKamar').value;
    const harga = document.getElementById('harga').value;
    const tanggalPesan = document.getElementById('tanggalPesan').value;
    const durasi = document.getElementById('durasi').value;
    const breakfast = document.getElementById('breakfast').checked ? 'Ya' : 'Tidak';
    const totalBayar = document.getElementById('totalBayar').value;
  
    // Set review modal content
    document.getElementById('reviewnamaPemesan').textContent = namaPemesan;
    document.getElementById('reviewjenisKelamin').textContent = jenisKelamin;
    document.getElementById('reviewnomorIdentitas').textContent = nomorIdentitas;
    document.getElementById('reviewtipeKamar').textContent = tipeKamar;
    document.getElementById('reviewharga').textContent = harga;
    document.getElementById('reviewtanggalPeminjaman').textContent = tanggalPesan;
    document.getElementById('reviewdurasi').textContent = durasi;
    document.getElementById('reviewbreakfast').textContent = breakfast;
    document.getElementById('reviewtotalBayar').textContent = totalBayar;
  
    // Show the modal
    const reviewModal = new bootstrap.Modal(document.getElementById('reviewModal'));
    reviewModal.show();
  }
