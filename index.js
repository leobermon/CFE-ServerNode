﻿const axios = require('axios').default;
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
app.get('/subestaciones', (req, res) => {

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


app.get('/instalaciones', (req, res) => {

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


app.get('/equipos/:rack', (req, res) => {

    db.getConnection((err, conn) => {
        conn.query(`SELECT le.*, (select imgActive from modelo_equipo where id = le.modelo ) as imgActive, le.modelo as modeloEquipo
        FROM lista_de_equipos as le
        WHERE le.gabinete = ${req.params.rack}
        ORDER BY posicionRackStart DESC
        `, function (err, result) {
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

app.get('/equipoNotas/:equipo', (req, res) => {

    db.getConnection((err, conn) => {
        conn.query(`SELECT * FROM  notas WHERE equipo = ${req.params.equipo}`, function (err, result) {
            if (err) {
                res.send({ mensaje: 'error, no data DB', data: err });
            } else {
                if (result.length > 0) {
                    console.log(`/equipoNotas/ ${req.params.rack} -` + moment().format('HH::mm:ss'));
                    res.send(result)
                } else {
                    console.log(`/equipoNotas/ ${req.params.rack} - ` + moment().format('HH::mm:ss'));
                    res.send(result);
                }
            }
            conn.release();
        });
    })

})




app.get('/equipo/:idEquipo', (req, res) => {

    db.getConnection((err, conn) => {
        conn.query(` SELECT lista_de_equipos.*, (SELECT nombre FROM modelo_equipo WHERE id = lista_de_equipos.modelo) AS nombreTipoEquipo, (SELECT modelo FROM modelo_equipo WHERE id =lista_de_equipos.modelo) AS nombreModelo, (SELECT imgActive FROM modelo_equipo WHERE lista_de_equipos.modelo = modelo_equipo.id) AS imgActive, (SELECT nombre FROM marcas WHERE (SELECT marca FROM modelo_equipo WHERE id = lista_de_equipos.modelo) = marcas.id) AS marcaNombre,(SELECT etiqueta from gabinetes WHERE id = lista_de_equipos.gabinete) as gabineteName,(SELECT alias FROM subestaciones WHERE id = (SELECT subestacion FROM gabinetes WHERE id = lista_de_equipos.gabinete)) as se, (SELECT id FROM marcas WHERE (SELECT marca FROM modelo_equipo WHERE id = lista_de_equipos.modelo) = marcas.id) AS marcaId FROM lista_de_equipos WHERE id = ${req.params.idEquipo}`, function (err, result) {
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

app.get('/equiposr3', (req, res) => {

    db.getConnection((err, conn) => {
        conn.query(`SELECT * FROM r3`, function (err, result) {
            if (err) {
                res.send({ mensaje: 'error, no data DB', data: err });
            } else {
                if (result.length > 0) {
                    console.log(`/equiposr3 - ` + moment().format('HH::mm:ss'));
                    res.send(result)
                } else {
                    console.log(`/equiposr3 - ` + moment().format('HH::mm:ss'));
                    res.send(result);
                }
            }
            conn.release();
        });
    })

})




app.get('/equipoInfoExtra/:idEquipo', (req, res) => {

    db.getConnection((err, conn) => {
        conn.query(`SELECT *, (SELECT caracteristica FROM tipo_caracteristicas WHERE id = caracteristicas_de_equipos.caracteristica_id) AS caracteristicaLang  FROM caracteristicas_de_equipos WHERE equipo_id = ${req.params.idEquipo}`, function (err, result) {
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

app.get('/equipoPuertosEspecificos/:idEquipo', (req, res) => {

    db.getConnection((err, conn) => {
        conn.query(`SELECT * FROM puertos WHERE equipo_id = ${req.params.idEquipo}`, function (err, result) {
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


app.get('/archivos/:idGabinete', (req, res) => {

    db.getConnection((err, conn) => {
        conn.query(`SELECT id, nombre_archivo, folder FROM archivos WHERE gabinete_id = ${req.params.idGabinete}`, function (err, result) {
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

app.get('/gabinete/:idGabinete', (req, res) => {

    db.getConnection((err, conn) => {
        conn.query(`select subestacion, etiqueta, (select alias from subestaciones where id = subestacion) as abrev from gabinetes where id = ${req.params.idGabinete}`, function (err, result) {
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




app.get('/interruptores/:idGabinete', (req, res) => {

    db.getConnection((err, conn) => {
        conn.query(`SELECT * FROM interruptores WHERE gabinete = ${req.params.idGabinete}`, function (err, result) {
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

//aqui es donde obtenemos el directorio telefonico 
//agrupamos la lista de directorio por departamto 
app.get('/directorio', (req, res) => {

    db.getConnection((err, conn) => {
        conn.query(`SELECT di.nombre, di.apellido, extension, (SELECT nombre from puestos where id = di.puesto ) as puesto, (Select nombre from departamento where id = di.departamento ) as departamento, (Select abreviacion from zonas where id = di.zona ) as zona from directorio as di ORDER BY di.prioridad, di.extension`, function (err, result) {
            if (err) {
                res.send({ mensaje: 'error, no data DB', data: err });
            } else {
                if (result.length > 0) {
                    console.log(`/directorio` + moment().format('HH::mm:ss'));
                    res.send(result)
                } else {
                    console.log(`/directorio` + moment().format('HH::mm:ss'));
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