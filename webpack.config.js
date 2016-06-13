var webpack = require('webpack');

var env = process.env.WEBPACK_ENV
var name = 'style-tools'

config = {}
config.module =  {
    loaders: [
        { test: /\.coffee$/, loader: "coffee-loader" }
    ]
}
config.resolve = {
    extensions: ["", ".webpack.js", ".web.js", ".js", ".js.coffee"]
}


config.entry = "./src/js/app.js.coffee";
config.output = {
    path: __dirname,
    filename: 'bundle.js' }

config.devtool = "cheap-module-source-map"

module.exports = config
