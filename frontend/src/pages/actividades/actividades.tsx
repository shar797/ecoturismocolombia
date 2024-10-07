
import './actividades.css'
import React, { useState, useEffect } from 'react';
import { useNavigate, useLocation  } from 'react-router-dom';
import axios from 'axios';


export function Actividades() {
        
    const navigate = useNavigate()
    const [actividad, setActividad] = useState([]);
    const [categorias, setCategorias] = useState([]);
    const [loading, setLoading] = useState(true);
    const [selectedActividad, setSelectedActividad] = useState('null');
    const [selectedCategoria, setSelectedCategoria] = useState('null');
    const [err, setError] = useState(null);
    
    const handleChange = (e: { target: { value: React.SetStateAction<string>; }; }) => {
    console.log(e.target.value);
    
    const categoria= categorias.find(r=>r.id_cat==e.target.value);
    console.log(categorias);
    setSelectedCategoria(categoria);

    //Busco en directorio
    const fetchDirectorio = async () => {
        try {
            const response = await axios.post('http://localhost:8080/directorio', {categoria_dir: categoria.id_cat});
            
            console.log(response);
            setActividad(response.data.data);
             } catch (err) {
            setError(err);
         } finally {
            setLoading(false); //La documentación de API (Interfaz de programación de aplicaciones) proporciona a los desarrolladores información completa sobre el uso eficaz de una API en el desarrollo de software. a documentación de API (Interfaz de programación de aplicaciones) proporciona a los desarrolladores información completa sobre el uso eficaz de una API en el desarrollo de software. 
        }
    };

    //llamo funcion
    fetchDirectorio()

      }; 
      
    let location =useLocation(); //Traer region seleccionada
    console.log(location);
    const region = location.state.region;
    console.log(region);
    
    
        useEffect(() => {
            const fetchRegiones = async () => {
                try {
                    const response = await fetch('http://localhost:8080/categoria');
                    if (!response.ok) {
                        throw new Error('Error al obtener las actividades');
                    }
                    const result = await response.json();
                    console.log(result);
                    setCategorias(result.data);
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
    console.log(actividad);
        return (
            <div>
               
                <div className="destino-container">
                <h2>Selecciona una Categoria</h2>
                <select onChange={handleChange}>
                    <option value="" disabled>
                        <div className="select">
                            Selecciona una Actividad
                        </div>
                    </option>
                    {categorias.map((option, index) => (
                        
                        <option key={index} value={option.id_cat}>
                            {option.tipo}
                            
                        </option>
    
                    ))}
                </select>           
                <p></p>
                
                <table>
                    {actividad.map(actividad => (

                //Se da formato de tabla a la informacion de las actividades
                    <tr>
                       <td>{actividad && <p> <p>ACTIVIDAD </p> {actividad.nombre}</p>} </td>
                       <td>
                        <table>

                        <tr>
                        <td>{actividad&& <p> <p>EMPRESA </p> {actividad.empresa}</p>} </td>
                        </tr>

                        <tr>
                        <td>{actividad && <p> <p> CONTACTO </p> {actividad.contacto}</p>} </td>
                        </tr>
                        
                        <tr>
                        <td>{actividad && <p> <p>UBICACION </p> {actividad.ubicacion}</p>} </td>
                        </tr>

                        </table>
                        </td>
                         </tr> 
                       
                
                        
                    ))}
              
                </table>
                
            
                <button onClick={() => navigate("/destino")} className="btn">Regresar a seleccionar Region</button>
               
    
            </div>
            </div>
        );
    };
                export default Actividades;
                