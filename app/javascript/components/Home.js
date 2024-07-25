import React from 'react';
import Button from '@mui/material/Button';
import {useNavigate} from "react-router-dom"
const Home = () => {
  const navigate = useNavigate();
  return (
    <div>
     This is home page
    
        <Button 
        variant="contained"
onClick= {()=>
  navigate("/aboutus")
}
        >Contained</Button>
    </div>
  );
}

export default Home;