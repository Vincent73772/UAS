'use strict';

module.exports = function (app) {
    var jsonku = require('./controller');

    app.route('/')
        .get(jsonku.index);

    app.route('/tampil')
        .get(jsonku.tampilsemuahandphone);

    app.route('/tampil/:id')
        .get(jsonku.tampilberdasarkanid);
    app.route('/tambah')
        .post(jsonku.tambahhandphone);

    app.route('/ubah')
        .put(jsonku.ubahhandphone);
        
    app.route('/hapus')
        .delete(jsonku.hapushandphone);

    app.route('/tampilmatakuliah')
        .get(jsonku.tampilgroupmatakuliah);
}