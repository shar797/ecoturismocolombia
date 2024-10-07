import { Route, Routes } from 'react-router-dom';
import { Header } from './components/header';
import { Home } from './pages/home/home';
import { Login } from './pages/login/login';
import { Destino } from './pages/destino/destino';
import {Actividades} from './pages/actividades/actividades';
import {Registrarse} from './pages/registrarse/registrarse';


export function App() {
  return (
    <div>
      <Header />

      <Routes>
        <Route path="/" element={<Home/>} />
        <Route path="/Login" element={<Login />} />
        <Route path="/Destino" element={<Destino />} />
        <Route path="/Actividades" element={<Actividades />} />
        <Route path="/Registrarse" element={<Registrarse />} />
        
      </Routes>
    </div>
  );
}


