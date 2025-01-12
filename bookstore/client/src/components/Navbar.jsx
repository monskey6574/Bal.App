import { NavLink } from "react-router-dom";

const NavBar = () => {
  return (
    <>
      <div className="nav-bar bg-white px-10 py-5 text-black font-semibold">
        <div className="nav-items flex justify-between items-center">
          {/* Bookstore NavLink */}
          <NavLink
            to="/"
            className={({ isActive }) =>
              isActive ? "text-green-500 font-bold" : "hover:text-gray-300"
            }
          >
            Bookstore
          </NavLink>

          {/* Right-side Links */}
          <div className="flex space-x-5">
            {/* Books NavLink */}
            <NavLink
              to="/about"
              className={({ isActive }) =>
                isActive ? "text-green-500 font-bold" : "hover:text-gray-300"
              }
            >
              About{" "}
            </NavLink>

            {/* Contact NavLink */}
            <NavLink
              to="/contact"
              className={({ isActive }) =>
                isActive ? "text-green-500 font-bold" : "hover:text-gray-300"
              }
            >
              Contact
            </NavLink>
          </div>
        </div>
      </div>
    </>
  );
};

export default NavBar;
