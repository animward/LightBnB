// LightBnB/server.js
const path = require("path");
const express = require("express");
const cookieSession = require("cookie-session");

const app = express();
const port = process.env.PORT || 3000;

// middleware
app.use(express.static(path.join(__dirname, "./public")));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
app.use(
  cookieSession({
    name: "session",
    keys: ["key1"],
  })
);

const apiRoutes = require("./routes/apiRoutes");
const userRoutes = require("./routes/userRoutes");

app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "LightBnB_WebApp", "public", "index.html"));
});

// /api/endpoints
app.use("/api", apiRoutes);

// /user/endpoints
app.use("/users", userRoutes);

app.get("/test", (req, res) => {
  res.send("🤗");
});

app.listen(port, (err) => {
  console.log(err || `listening on port ${port} 😎`);
});
