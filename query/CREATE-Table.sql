CREATE TABLE pelanggan(
    `id_pelanggan` INT NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(50) NOT NULL DEFAULT '',
    `alamat` VARCHAR(100) NOT NULL DEFAULT '',
    `nohp` VARCHAR(15) NOT NULL DEFAULT '',
    PRIMARY KEY (`id_pelanggan`)
)


CREATE TABLE kategori(
    `id_kategori` INT NOT NULL,
    `nama_kategori` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`id_kategori`)
)


CREATE TABLE produk(
    `id_produk` INT NOT NULL AUTO_INCREMENT,
    `nama_produk` VARCHAR(50) NOT NULL DEFAULT '',
    `harga` INT NOT NULL,
    `stok_produk` INT NOT NULL,
    `id_kategori` INT NOT NULL,
    PRIMARY KEY (`id_produk`),
    CONSTRAINT `kategori` FOREIGN KEY(`id_kategori`) REFERENCES `kategori`(`id_kategori`) ON UPDATE CASCADE ON DELETE CASCADE 
)


CREATE TABLE transaksi(
    `id_transaksi` INT NOT NULL,
    `id_pelanggan` INT NOT NULL,
    `id_produk` INT NOT NULL,
    `jumlah_produk` INT NOT NULL,
    `tanggal_transaksi` DATE NOT NULL,
    PRIMARY KEY (`id_transaksi`),
    CONSTRAINT `pelanggan` FOREIGN KEY(`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `produk` FOREIGN KEY(`id_produk`) REFERENCES `produk` (`id_produk`) ON UPDATE CASCADE ON DELETE CASCADE 
)