const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
  })
)

const aliasConfig = {
  'jquery': 'jquery/src/jquery',
  //'datepicker': '@chenfengyuan/datepicker/dist/datepicker.js'
};

environment.config.set('resolve.alias', aliasConfig);

module.exports = environment

