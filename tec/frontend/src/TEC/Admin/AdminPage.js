import React from "react";
import Statistics from "./AdminComponent/Statistics";

function AdminPage () {
  return (
    <div>
      <div style={{ width: "70%", margin: "0 auto", padding: "20px" }}>
        <Statistics />
      </div>
      <div>
        <h1>관리자 페이지</h1>
      </div>
    </div>
  );
}

export default AdminPage;