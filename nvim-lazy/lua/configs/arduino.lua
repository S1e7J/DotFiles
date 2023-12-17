local arduino = require('arduino')
arduino.setup({
    default_fqbn = "arduino:avr:uno",

    --Path to clangd (all paths must be full)
    clangd = require 'mason-core.path'.bin_prefix 'clangd',
    --Path to arduino-cli
    arduino = "~/bin/arduino-cli",

    --Data directory of arduino-cli
    arduino_config_dir = "/home/s1e7j/.arduino15/arduino-cli.yaml",
})

require 'lspconfig' ['arduino_language_server'].setup {
    on_new_config = arduino.on_new_config,
}
