const e = require('express');
const mysql = require('mysql');
const { sendDataToProcessId } = require('pm2');


const connection = mysql.createPool({ 
  host: 'localhost',
  user: 'root', 
  password: '',
  database: 'transmision',
  port: 3306,  
  multipleStatements: true 
});  

module.exports = {
  getConnection: (callback) => { 
    return connection.getConnection(callback); 
  }
}

