
//1 - importamos modulo con require
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");

//2 - configuracion
const app = express();
app.use(express.json());
app.use(cors());

//3 - conexion
const conexion = mysql.createConnection({
    host: "localhost",
    database: "personas",
    user: "root",
    password: ""
});

conexion.connect();
//4 - rutas
//Login
  app.post('/login', (req, res) => {
  console.log(conexion.state);
  console.log(req.body);
  
    const db = "SELECT * FROM administradores WHERE email = ? AND password = ?";
    conexion.query(db, [req.body.email, req.body.password], (err, data) => {
      console.log(err);
            if (err) return res.status(500).json({ success: false, message: "Error en el inicio de sesión" });
      
        
  
      if (data.length > 0) {
        return res.status(200).json({ success: true, message: "BIENVENIDO A LA PLATAFORMA" });
      } else {
        return res.status(401).json({ success: false, message: "Usuario o contraseña incorrectos" });
      }
    });
  });
// register
  app.post('/register', (req, res) => {
  const { email, password } = req.body;

  // Verificar si el correo ya está registrado
  const dbCheck = "SELECT * FROM administradores WHERE email = ?";
  conexion.query(dbCheck, [email], (err, data) => {
    if (err) return res.status(500).json({ success: false, message: "Error en el registro" });

    if (data.length > 0) {
      return res.status(400).json({ success: false, message: "El correo electrónico ya está registrado" });
    } else {
      // Insertar el nuevo usuario con el email y la contraseña proporcionados
      const dbInsert = "INSERT INTO administradores (email, password) VALUES (?, ?)";
      conexion.query(dbInsert, [email, password], (err, data) => {
        if (err) {
          console.error(err); // Imprime el error en la consola    
        }

        return res.status(201).json({ success: true, message: "Registro exitoso" });
      });
    }

  });
});

//Destino
app.get('/destino', (req, res) => {
  console.log(conexion.state);
  console.log(req.body);
  
    const db = "SELECT * FROM destino";
    console.log
    conexion.query(db, (err, data) => {
      console.log(err);
            if (err) return res.status(50).json({ success: false, message: "No se encuentra descripcion1" });
      
        
  
      if (data.length > 0) {
        return res.status(200).json({ success: true, message: "Descripcion encontrada",data });
      } else {
        return res.status(401).json({ success: false, message: "No se encuentra descripcion2" });
      }
    });
  });

    //Categorias
  app.get('/categoria', (req, res) => {
  console.log(conexion.state);
  console.log(req.body);
  
    const db = "SELECT * FROM categoria";
    console.log
    conexion.query(db, (err, data) => {
      console.log(err);
            if (err) return res.status(50).json({ success: false, message: "No se encuentra descripcion1" });
      
        
  
      if (data.length > 0) {
        return res.status(200).json({ success: true, message: "Descripcion encontrada",data });
      } else {
        return res.status(401).json({ success: false, message: "No se encuentra descripcion2" });
      }
    });
  });

   //Directorio
   
app.post('/directorio', (req, res) => {
  console.log(conexion.state);
  console.log(req.body);
  
    const db = "SELECT * FROM directorio where categoria_dir=?";
    console.log
    conexion.query(db, [req.body.categoria_dir],(err, data) => {
      console.log(err);
            if (err) return res.status(50).json({ success: false, message: "No se encuentra descripcion1" });
      
        
  
      if (data.length > 0) {
        return res.status(200).json({ success: true, message: "Descripcion encontrada",data });
      } else {
        return res.status(401).json({ success: false, message: "No se encuentra descripcion2" });
      }
    });
  });

  //Actividades
app.get('/actividades', (req, res) => {
  console.log(conexion.state);
  console.log(req.body);
  
    const db = "SELECT * FROM actividades";
    console.log
    conexion.query(db, (err, data) => {
      console.log(err);
            if (err) return res.status(500).json({ success: false, message: "No se encuentra descripcion1" });
      
        
  
      if (data.length > 0) {
        return res.status(200).json({ success: true, message: "Descripcion encontrada",data });
      } else {
        return res.status(401).json({ success: false, message: "No se encuentra descripcion2" });
      }
    });
  });

                       
//5 - poner a escuchar al servidor
app.listen(8080,()=>{
    console.log("servidor escuchando...");
})
