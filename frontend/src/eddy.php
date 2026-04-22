import React from "react";
import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
import Home from "./Component/HOME";
import Registration from "./Component/REGISTER";
import Report from "./Component/REPORT";

function App() {
  return (
    <Router>
        <nav className="bg-blue-600 p-4 shadow-lg">
          <div className="container mx-auto flex justify-between items-center">
            <ul className="flex gap-15 text-white font-medium">
              <li>
                <Link to="/" className="hover:text-black transition duration-300"> Home</Link>
              </li>
              <li>
                <Link to="/Registration" className="hover:text-black transition duration-300">Registration</Link>
              </li>
              <li>
                <Link to="/Report" className="hover:text-black transition duration-300"> Report</Link>
              </li>
            </ul>
          </div>
        </nav>
        <main className="container mx-auto mt-10 p-6 bg-gray-500 rounded-xl shadow-md">
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/Registration" element={<Registration />} />
            <Route path="/Report" element={<Report />} />
          </Routes>
        </main>
    </Router>  
  );
}

export default App;