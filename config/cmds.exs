%{
  zombie: Path.expand("../zombie.sh", __DIR__),
  sass: [
    "sass",
    "-c",
    "--verbose",
    "assets/css/app.scss",
    "priv/static/css/app.css"
  ],
# this version is used by the mix assets task only.
  esbuild: [
    "NODE_PATH=#{Path.expand("../deps", __DIR__)}",
    "esbuild",
    "./assets/js/app.js",
    "--bundle",
    "--sourcemap",
    "--target=es2016",
    "--outfile=priv/static/js/app.js",
  ]
}

