// 1 - importamos modulo con require
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const bcrypt = require('bcrypt');

// 2 - configuracion
const app = express();
app.use(express.json());
app.use(cors());

// 3 - conexion
const conexion = mysql.createConnection({
    host: "localhost",
    database: "personas",
    user: "root",
    password: ""
});

conexion.connect((err) => {
    if (err) {
        console.error('Error al conectar a la base de datos:', err);
        return;
    }
    console.log('Conexión a la base de datos establecida');
});

// 4 - rutas
// Login
app.post('/login', (req, res) => {
    const db = "SELECT * FROM administradores WHERE email = ?";
    conexion.query(db, [req.body.email], (err, data) => {
        if (err) return res.status(500).json({ success: false, message: "Error en el inicio de sesión" });

        if (data.length > 0) {
            const hashedPassword = data[0].password;
            bcrypt.compare(req.body.password, hashedPassword, (err, result) => {
                if (result) {
                    return res.status(200).json({ success: true, message: "BIENVENIDO A LA PLATAFORMA" });
                } else {
                    return res.status(401).json({ success: false, message: "Usuario o contraseña incorrectos" });
                }
            });
        } else {
            return res.status(401).json({ success: false, message: "Usuario o contraseña incorrectos" });
        }
    });
});

// Register
app.post('/register', (req, res) => {
    const { email, password } = req.body;

    const dbCheck = "SELECT * FROM administradores WHERE email = ?";
    conexion.query(dbCheck, [email], (err, data) => {
        if (err) return res.status(500).json({ success: false, message: "Error en el registro" });

        if (data.length > 0) {
            return res.status(400).json({ success: false, message: "El correo electrónico ya está registrado" });
        } else {
            const hashedPassword = bcrypt.hashSync(password, 10); // Encriptar la contraseña
            const dbInsert = "INSERT INTO administradores (email, password) VALUES (?, ?)";
            conexion.query(dbInsert, [email, hashedPassword], (err, data) => {
                if (err) {
                    console.error(err);
                    return res.status(500).json({ success: false, message: "Error al registrar usuario" });
                }
                return res.status(201).json({ success: true, message: "Registro exitoso" });
            });
        }
    });
});

// Rutas para destino, categoria y directorio
// Aquí puedes mantener las rutas como están, asegurándote de corregir los códigos de estado y errores como se mencionó anteriormente.

app.listen(8080, () => {
    console.log("Servidor escuchando en http://localhost:8080");
});
