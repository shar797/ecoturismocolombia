import { NavLink } from 'react-router-dom';
import logo from '../assets/logo.jpg';
import './header.css';

export function Header() {
  return (
    <header>
      <div className="logotipo">
        <img src={logo} alt="logo Ecoturismo Colombia" />
        <h2 className="Ecoturismo Colombia">Ecoturismo Colombia</h2>
      </div>

      <nav>
        <div className="mapa">
          <NavLink to="/">Inicio</NavLink>
          <NavLink to="/destino">Destino</NavLink>
          <NavLink to="/login">Login</NavLink>
          <NavLink to="/registrarse">Registrarse</NavLink>
        </div>
      </nav>
    </header>
  );
}
