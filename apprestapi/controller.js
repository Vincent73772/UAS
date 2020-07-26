'use strict';

var response = require('./res');
var connection = require('./koneksi');

exports.index = function (req, res) {
    response.ok("Aplikasi REST API ku berjalan!", res)
};

//menampilkan semua data mahasiswa
exports.tampilsemuahandphone = function (req, res) {
    connection.query('SELECT * FROM handphone', function (error, rows, fileds) {
        if (error) {
            console.log(error); 
        } else {
            response.ok(rows, res)
        }
    });
};

//menampilkan semua data mahasiwa berdasarkan id
exports.tampilberdasarkanid = function (req, res) {
    let id = req.params.id;
    connection.query('SELECT * FROM handphone WHERE id_handphone = ?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok(rows, res);
            }
        });
};

//menambahkan data Handphone
exports.tambahhandphone = function (req, res) {
    var id_hp = req.body.id_hp;
    var nama = req.body.nama;
    var harga = req.body.harga;

    connection.query('INSERT INTO handphone (id_hp,nama,harga) VALUES(?,?,?)',
        [id_hp, nama, harga],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Menambahkan Data!", res)
            }
        });
};

//mengubah data berdasarkan id
exports.ubahhandphone = function (req, res) {
    var id = req.body.id_handphone;
    var id_hp = req.body.id_hp;
    var nama = req.body.nama;
    var harga = req.body.harga;

    connection.query('UPDATE handphone SET id_hp=?, nama=?, harga=? WHERE id_handphone=?', [id_hp, nama, harga, id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Ubah Data", res)
            }
        });
}

//Menghapus data berdasarkan id
exports.hapushandphone = function (req, res) {
    var id = req.body.id_handphone;
    connection.query('DELETE FROM handphone WHERE id_handphone=?',[id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Hapus Data", res) 
            }
        });
}

//menampilkan matakuliah group
exports.tampilgroupmatakuliah = function(req, res){
    connection.query('SELECT handphone.id_handphone, handphone.id_hp, handphone.nama, handphone.harga, matakuliah.matakuliah, matakuliah.sks from krs JOIN matakuliah JOIN handphone WHERE krs.id_handphone = matakuliah.id_matakuliah AND krs.id_handphone = handphone.id_handphone ORDER BY handphone.id_handphone',
        function (error, rows, fields){
            if(error){
                console.log(error);
            }else {
                response.oknested(rows, res);
            }
        }
    )

}


