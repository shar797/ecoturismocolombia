import './destino.css'
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';


export function Destino () {

    const navigate = useNavigate()
    
    const destino= (props) => {
   // navigate("new-route",{state:{key: "region"}}); //Guardar region seleccionada para envio a otra pagina "Actividades"
    
    }

    const [regiones, setRegiones] = useState([]);
    const [loading, setLoading] = useState(true);
    const [selectedRegion, setSelectedRegion] = useState('null');
    const [err, setError] = useState(null);
    const handleChange = (e: { target: { value: React.SetStateAction<string>; }; }) => {
      console.log(e.target.value);
      const region=regiones.find(r=>r.id_r==e.target.value);
      console.log(region);
      setSelectedRegion(region);
  };  

    useEffect(() => {
        const fetchRegiones = async () => {
            try {
                const response = await fetch('http://localhost:8080/destino');
                if (!response.ok) {
                    throw new Error('Error al obtener las Regiones');
                }
                const result = await response.json();
                console.log(result);
                setRegiones(result.data);
                //navigate('/actividades');
                               
            } catch (err) {
                setError(err);
            } finally {
                setLoading(false); //La documentación de API (Interfaz de programación de aplicaciones) proporciona a los desarrolladores información completa sobre el uso eficaz de una API en el desarrollo de software. a documentación de API (Interfaz de programación de aplicaciones) proporciona a los desarrolladores información completa sobre el uso eficaz de una API en el desarrollo de software. 
                
            }
        };

        fetchRegiones();
    }, []);

    if (loading) {
        return <p>Cargando...</p>;
    }

    if (err) {
        return <p>Error: {err}</p>;
    }

    return (
        <div>
            
            <div className="destino-container">
            <h2>Selecciona una Region</h2>
            <select onChange={handleChange}>
                <option value="" disabled>
                    <div className="select">
                        Selecciona una Region
                    </div>
                </option>
                {regiones.map((option, index) => (
                    <option key={index} value={option.id_r}>
                        {option.region}
                    </option>
                    

                ))}
            </select>       


            <br></br><br></br>
           <h3> {selectedRegion  && <p> {selectedRegion.descripcion}</p>} </h3>
           
           <br></br><br></br>
           
            <button onClick={() => navigate("/actividades",{state:{region: selectedRegion}})} className="btn">Buscar actividades</button>
            
               
               
           

        </div>
        </div>
    );
};



export default Destino;
