local configs = require 'lspconfig'

configs.zls = {
  default_config = {
    cmd = {"/home/vincent/dev/devtools/zls/zig-cache/bin/zls"};
    filetypes = {"zig"};
    root_dir = [[root_pattern("build.zig", ".git");]]
  };
  docs = {
    description = [[ ]];
    default_config = {
      root_dir = [[root_pattern("build.zig", ".git")]];
    };
  };
}

