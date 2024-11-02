import React, { useState, useEffect } from "react";

function App() {
  const [ip, setIp] = useState("");

  useEffect(() => {
    // Function to fetch the IP address
    const fetchIp = async () => {
      try {
        const response = await fetch("https://checkip.amazonaws.com/");
        const data = await response.text();
        setIp(data.trim());
      } catch (error) {
        console.error("Error fetching IP address:", error);
      }
    };

    fetchIp();
  }, []);

  return (
    <div style={{ textAlign: "center", marginTop: "50px" }}>
      <h1>Your Instance IP</h1>
      {ip ? <p>IP Address: {ip}</p> : <p>Loading...</p>}
    </div>
  );
}

export default App;
