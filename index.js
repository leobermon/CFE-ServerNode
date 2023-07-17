const axios = require('axios').default;
const _ = require('lodash')
const db = require('./db')
const moment = require('moment-timezone');
var globalFunc = require('./functions')
const express = require('express');
const cors = require('cors')

const app = express();
const PORT = 5000 || process.env.PORT

const corsConf = {
    origin: "*",
    methods: "GET,HEAD,PUT,PATCH,POST,DELETE",
    preflightContinue: false,
    optionsSuccessStatus: 204
  }
  
  app.use(cors(corsConf));

app.get('/subestaciones',(req, res) => {
 
        db.getConnection((err, conn) => {
            // obtenemos todos los productos de ct = 3
            conn.query("SELECT * FROM subestaciones WHERE active = 1", function (err, result) {
                if (err) {
                    res.send({ mensaje: 'error, no data DB', data: err });
                } else {
                    if (result.length > 0) {
                        console.log('/subestaciones ' + moment().format('HH::mm:ss'));
                        res.send(result)
                    } else {
                        console.log('/subestaciones' + moment().format('HH::mm:ss'));
                        res.send(result);
                    }
                }
                conn.release();
            });
        })
})


app.get('/instalaciones',(req, res) => {
 
    db.getConnection((err, conn) => {
        // obtenemos todos los productos de ct = 3
        conn.query("SELECT * FROM tipo_de_instalacion", function (err, result) {
            if (err) {
                res.send({ mensaje: 'error, no data DB', data: err });
            } else {
                if (result.length > 0) {
                    console.log('/instalaciones' + moment().format('HH::mm:ss'));
                    res.send(result)
                } else {
                    console.log('/instalaciones' + moment().format('HH::mm:ss'));
                    res.send(result);
                }
            }
            conn.release();
        });
    })

})

app.get('/equipos/:rack',(req, res) => {
 
    db.getConnection((err, conn) => {
        conn.query(`SELECT lista_de_equipos.*, equipos.modeloEquipo, modelo_equipo.imgActive FROM lista_de_equipos INNER JOIN equipos ON lista_de_equipos.equipo=equipos.id AND lista_de_equipos.gabinete = ${req.params.rack} INNER JOIN modelo_equipo ON modelo_equipo.ID = equipos.modeloEquipo ORDER BY lista_de_equipos.posicionRackStart DESC`, function (err, result) {
            if (err) {
                res.send({ mensaje: 'error, no data DB', data: err });
            } else {
                if (result.length > 0) {
                    console.log(`/equipos/ ${req.params.rack} -` + moment().format('HH::mm:ss'));
                    res.send(result)
                } else {
                    console.log(`/equipos/ ${req.params.rack} - ` + moment().format('HH::mm:ss'));
                    res.send(result);
                }
            }
            conn.release();
        });
    })

})


app.get('/equipo/:idEquipo',(req, res) => {
 
    db.getConnection((err, conn) => { conn.query(`SELECT lista_de_equipos.*, (SELECT nombre FROM equipos WHERE id = lista_de_equipos.equipo) AS nombreTipoEquipo , (SELECT modelo FROM modelo_equipo WHERE (SELECT modeloEquipo FROM equipos WHERE id = lista_de_equipos.equipo) = modelo_equipo.id) AS nombreModelo, (SELECT id FROM modelo_equipo WHERE (SELECT modeloEquipo FROM equipos WHERE id = lista_de_equipos.equipo) = modelo_equipo.id) AS nombreModeloId, (SELECT imgActive FROM modelo_equipo WHERE (SELECT modeloEquipo FROM equipos WHERE id = lista_de_equipos.equipo) = modelo_equipo.id) AS imgActive, (SELECT nombre FROM marcas WHERE (SELECT marca FROM equipos WHERE id = lista_de_equipos.equipo) = marcas.id) AS marcaNombre, (SELECT id FROM marcas WHERE (SELECT marca FROM equipos WHERE id = lista_de_equipos.equipo) = marcas.id) AS marcaId FROM lista_de_equipos WHERE id = ${req.params.idEquipo}` , function (err, result) {
            if (err) {
                res.send({ mensaje: 'error, no data DB', data: err });
            } else {
                if (result.length > 0) {
                    console.log(`/equipo/ ${req.params.idEquipo} - ` + moment().format('HH::mm:ss'));
                    res.send(result)
                } else {
                    console.log(`/equipo/ ${req.params.idEquipo} - ` + moment().format('HH::mm:ss'));
                    res.send(result);
                }
            }
            conn.release();
        });
    })

})


app.get('/equipoInfoExtra/:idEquipo',(req, res) => {
 
    db.getConnection((err, conn) => { conn.query(`SELECT *, (SELECT caracteristica FROM tipo_caracteristicas WHERE id = caracteristicas_de_equipos.caracteristica_id) AS caracteristicaLang  FROM caracteristicas_de_equipos WHERE equipo_id = ${req.params.idEquipo}` , function (err, result) {
            if (err) {
                res.send({ mensaje: 'error, no data DB', data: err });
            } else {
                if (result.length > 0) {
                    console.log(`/equipoInfoExtra/ ${req.params.idEquipo} - ` + moment().format('HH::mm:ss'));
                    res.send(result)
                } else {
                    console.log(`/equipoInfoExtra/ ${req.params.idEquipo} - ` + moment().format('HH::mm:ss'));
                    res.send(result);
                }
            }
            conn.release();
        });
    })

})

app.get('/equipoPuertosEspecificos/:idEquipo',(req, res) => {
 
    db.getConnection((err, conn) => { conn.query(`SELECT * FROM puertos WHERE equipo_id = ${req.params.idEquipo}` , function (err, result) {
            if (err) {
                res.send({ mensaje: 'error, no data DB', data: err });
            } else {
                if (result.length > 0) {
                    console.log(`/equipoPuertosEspecificos/ ${req.params.idEquipo} - ` + moment().format('HH::mm:ss'));
                    res.send(result)
                } else {
                    console.log(`/equipoPuertosEspecificos/ ${req.params.idEquipo} - ` + moment().format('HH::mm:ss'));
                    res.send(result);
                }
            }
            conn.release();
        });
    })

})


app.get('/gabinetes/:idGabinete',(req, res) => {
 
    db.getConnection((err, conn) => { conn.query(`SELECT archivo FROM gabinetes WHERE id = ${req.params.idGabinete}` , function (err, result) {
            if (err) {
                res.send({ mensaje: 'error, no data DB', data: err });
            } else {
                if (result.length > 0) {
                    console.log(`/gabinetes/ ${req.params.idEquipo} - ` + moment().format('HH::mm:ss'));
                    res.send(result)
                } else {
                    console.log(`/gabinetes/ ${req.params.idEquipo} - ` + moment().format('HH::mm:ss'));
                    res.send(result);
                }
            }
            conn.release();
        });
    })

})


app.get('/interruptores/:idGabinete',(req, res) => {
 
    db.getConnection((err, conn) => { conn.query(`SELECT * FROM interruptores WHERE gabinete = ${req.params.idGabinete}` , function (err, result) {
            if (err) {
                res.send({ mensaje: 'error, no data DB', data: err });
            } else {
                if (result.length > 0) {
                    console.log(`/gabinetes/ ${req.params.idEquipo} - ` + moment().format('HH::mm:ss'));
                    res.send(result)
                } else {
                    console.log(`/gabinetes/ ${req.params.idEquipo} - ` + moment().format('HH::mm:ss'));
                    res.send(result);
                }
            }
            conn.release();
        });
    })

})


app.listen(PORT, () => {
    console.log('app running in: ' + PORT);
})


function obtenerProductosTemporalesSyscomUpdate() {
    return new Promise(resolve => {
        db.getConnection((err, conn) => {
            // obtenemos todos los productos de ct = 3
            conn.query("SELECT * FROM subestaciones WHERE active = 1", function (err, result) {
                if (err) {
                    resolve({ mensaje: 'error, no data DB', data: {} });
                } else {
                    if (result.length > 0) {
                        console.log('si hay datos btenerProductosTemporalesSyscomUpdate');
                        resolve(result)
                    } else {
                        console.log('no hay datos btenerProductosTemporalesSyscomUpdate'); 
                        resolve(false)
                    }
                }
                conn.release();
            });
        })
    });
}


function asignProductsIds() {
    return new Promise(resolve => {
        db.getConnection((err, conn) => {
            //conn.query('UPDATE ps_productos_syscom INNER JOIN ps_product ON TRIM(ps_productos_syscom.clave) <=> TRIM(ps_product.reference ) SET ps_productos_syscom.id_product = IF(ps_product.id_product > 0, ps_product.id_product, 0) WHERE ps_product.id_supplier = 1',
            conn.query('UPDATE ps_productos_syscom AS dest,(SELECT id_product, id_syscom, id_category_default FROM ps_product WHERE id_supplier = 4) AS src SET dest.id_product = src.id_product, dest.id_category = src.id_category_default WHERE dest.clave = src.id_syscom',
                function (error, result) {
                    if (error) {
                        resolve('fail');
                    } else {
                        resolve('done');
                    }
                    conn.release();
                });
        })
    })
}

function insertProductLang(idProduct, p) {
    return new Promise(resolve => {
        var cleanJustName = globalFunc.cleanJustName(p.titulo)
        var cleanNameString = globalFunc.cleanName(p.titulo)
        var nameNoSpecial4 = cleanNameString.replace(/  /g, ' ')
        var nameNoSpecial6 = nameNoSpecial4.split(' ').join('-')
        var nameInLinkFormat = nameNoSpecial6 + '-' + p.producto_id
        let stringLowerCase = cleanJustName.toLocaleLowerCase();
        let stringUpperCase = stringLowerCase
            .split(/ /g).map(word =>
                `${word.substring(0, 1).toUpperCase()}${word.substring(1)}`)
            .join(" ");
        // limpiar descripcion de emojis
        var descripcionNueva2 = p.descripcion.replace(/  /g, ' ')
        var descripcionNueva3 = descripcionNueva2.replace(/([\u2700-\u27BF]|[\uE000-\uF8FF]|\uD83C[\uDC00-\uDFFF]|\uD83D[\uDC00-\uDFFF]|[\u2011-\u26FF]|\uD83E[\uDD10-\uDDFF])/g, '');
        var descripcionNueva4 = descripcionNueva3.replace(/ñ/gi, 'n');
        var descripcionNueva5 = descripcionNueva4.replace(/í/gi, 'i')

        db.getConnection((err, conn) => {
            conn.query('INSERT INTO ps_product_lang(id_product, id_shop, id_lang, description, description_short, link_rewrite, meta_description, meta_keywords, meta_title, name) VALUES (?,?,?,?,?,?,?,?,?,?)', [idProduct, 1, id_lang, descripcionNueva5, ' ', nameInLinkFormat, '', '', '', stringUpperCase], function (error, result) {
                if (err) throw err;

                resolve('ok')
                conn.release();
            });
        })
    })
}


function deleteTemporalProducts() {
    return new Promise(resolve => {
        db.getConnection((err, conn) => {
            conn.query('DELETE FROM ps_productos_syscom ',
                function (error, result) {
                    if (error) {
                        resolve('fail');
                    } else {
                        resolve('done');
                    }
                    conn.release();
                });
        })
    })
}


console.log('servidor corriendo y ejecutandose ');