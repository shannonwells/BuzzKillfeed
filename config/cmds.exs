%{
  sasswatch: [
    "sass",
    "-c",
    "--watch",
    "--verbose",
    "assets/css/app.scss",
    "priv/static/assets/app.css",
  ],
  sass: [
    "sass",
    "-c",
    "--verbose",
    "assets/css/app.scss",
    "priv/static/assets/app.css",
  ],
}
