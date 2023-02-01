return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    capabilities.offsetEncoding = { "utf-16" }
    capabilities.textDocument.completion.completionItem = {
      documentationFormat = {
        "markdown",
        "plaintext",
      },
      snippetSupport = true,
      preselectSupport = true,
      insertReplaceSupport = true,
      labelDetailsSupport = true,
      deprecatedSupport = true,
      commitCharactersSupport = true,
      tagSupport = {
        valueSet = { 1 },
      },
      resolveSupport = {
        properties = {
          "documentation",
          "detail",
          "additionalTextEdits",
        },
      },
    }

    require("neoconf").setup {}
    require("mason-lspconfig").setup {
      automatic_installation = false,
    }
    require("plugins.lsp.diagnostics").setup()
    local keys = function(client, bufnr)
      require("plugins.lsp.keys").keys(client, bufnr)
    end

    require("mason-lspconfig").setup_handlers {
      function(server_name)
        require("lspconfig")[server_name].setup {
          on_attach = keys,
          capabilities = capabilities,
        }
      end,
      ["denols"] = function()
        require("lspconfig")["denols"].setup({
          on_attach = keys,
          capabilities = capabilities,
          root_dir = require("lspconfig").util.root_pattern("deno.json"),
          init_options = {
            lint = true,
            unstable = true,
            suggest = {
              imports = {
                hosts = {
                  ["https://deno.land"] = true,
                  ["https://cdn.nest.land"] = true,
                  ["https://crux.land"] = true,
                },
              },
            },
          },

        })
      end,
      ["tsserver"] = function()
        require("lspconfig")["tsserver"].setup({
          on_attach = keys,
          capabilities = capabilities,
          single_file_support = false,
          root_dir = require("lspconfig").util.root_pattern("package.json"),
        })
      end,
      ["rust_analyzer"] = function()
        require("lspconfig")["rust_analyzer"].setup {
          on_attach = keys,
          capabilities = capabilities,
          settings = {
            ["rust-analyzer"] = {
              imports = {
                granularity = {
                  group = "module",
                },
                prefix = "self",
              },
              cargo = {
                buildScripts = {
                  enable = true,
                },
              },
              procMacro = {
                enable = true,
              },
            },
          },
        }
      end,
      ["jsonls"] = function()
        local status, schemastore = pcall(require, "schemastore")
        if not status then
          return
        end
        require("lspconfig")["jsonls"].setup {
          on_attach = keys,
          capabilities = capabilities,
          settings = {
            json = {
              schemas = schemastore.json.schemas(),
              validate = { enable = true },
            },
          },
        }
      end,
      ["sumneko_lua"] = function()
        require "neodev"
        require("lspconfig")["sumneko_lua"].setup {
          on_attach = keys,
          capabilities = capabilities,
          settings = {
            Lua = {
              format = { enable = false },
              runtime = {
                version = "LuaJIT",
              },
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                checkThirdParty = false,
                library = vim.api.nvim_get_runtime_file("", true),
              },
              telemetry = {
                enable = false,
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        }
      end,
    }
  end,
}
