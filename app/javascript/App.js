// App.js
import React from 'react';
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from "../components/Home";
import AboutUs from "../components/AboutUs";

export default function App() {
  return (

    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home/>}/>
          <Route path="aboutus" element={<AboutUs/>} />
        
      </Routes>
    </BrowserRouter>
  );
}

