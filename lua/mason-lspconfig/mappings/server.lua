local _ = require "mason-core.functional"

local M = {}

---Maps lspconfig server config name to its corresponding package name.
M.lspconfig_to_package = {
    ["als"] = "ada-language-server",
    ["angularls"] = "angular-language-server",
    ["ansiblels"] = "ansible-language-server",
    ["antlersls"] = "antlers-language-server",
    ["apex_ls"] = "apex-language-server",
    ["arduino_language_server"] = "arduino-language-server",
    ["asm_lsp"] = "asm-lsp",
    ["ast_grep"] = "ast-grep",
    ["astro"] = "astro-language-server",
    ["autotools_ls"] = "autotools-language-server",
    ["awk_ls"] = "awk-language-server",
    ["azure_pipelines_ls"] = "azure-pipelines-language-server",
    ["basedpyright"] = "basedpyright",
    ["bashls"] = "bash-language-server",
    ["beancount"] = "beancount-language-server",
    ["bicep"] = "bicep-lsp",
    ["biome"] = "biome",
    ["bright_script"] = "brighterscript",
    ["bsl_ls"] = "bsl-language-server",
    ["bufls"] = "buf-language-server",
    ["bzl"] = "bzl",
    ["cairo_ls"] = "cairo-language-server",
    ["clangd"] = "clangd",
    ["clarity_lsp"] = "clarity-lsp",
    ["clojure_lsp"] = "clojure-lsp",
    ["cmake"] = "cmake-language-server",
    ["cobol_ls"] = "cobol-language-support",
    ["codeqlls"] = "codeql",
    ["coq_lsp"] = "coq-lsp",
    ["crystalline"] = "crystalline",
    ["csharp_ls"] = "csharp-language-server",
    ["cssls"] = "css-lsp",
    ["cssmodules_ls"] = "cssmodules-language-server",
    ["css_variables"] = "css-variables-language-server",
    ["cucumber_language_server"] = "cucumber-language-server",
    ["custom_elements_ls"] = "custom-elements-languageserver",
    ["cypher_ls"] = "cypher-language-server",
    ["dagger"] = "cuelsp",
    ["denols"] = "deno",
    ["dhall_lsp_server"] = "dhall-lsp",
    ["diagnosticls"] = "diagnostic-languageserver",
    ["docker_compose_language_service"] = "docker-compose-language-service",
    ["dockerls"] = "dockerfile-language-server",
    ["dotls"] = "dot-language-server",
    ["dprint"] = "dprint",
    ["drools_lsp"] = "drools-lsp",
    ["earthlyls"] = "earthlyls",
    ["efm"] = "efm",
    ["elixirls"] = "elixir-ls",
    ["elmls"] = "elm-language-server",
    ["elp"] = "elp",
    ["ember"] = "ember-language-server",
    ["emmet_language_server"] = "emmet-language-server",
    ["emmet_ls"] = "emmet-ls",
    ["erg_language_server"] = "erg-language-server",
    ["erlangls"] = "erlang-ls",
    ["esbonio"] = "esbonio",
    ["eslint"] = "eslint-lsp",
    ["facility_language_server"] = "facility-language-server",
    ["fennel_language_server"] = "fennel-language-server",
    ["fennel_ls"] = "fennel-ls",
    ["flux_lsp"] = "flux-lsp",
    ["foam_ls"] = "foam-language-server",
    ["fortls"] = "fortls",
    ["fsautocomplete"] = "fsautocomplete",
    ["gitlab_ci_ls"] = "gitlab-ci-ls",
    ["glint"] = "glint",
    ["glsl_analyzer"] = "glsl_analyzer",
    ["glslls"] = "glslls",
    ["golangci_lint_ls"] = "golangci-lint-langserver",
    ["gopls"] = "gopls",
    ["gradle_ls"] = "gradle-language-server",
    ["grammarly"] = "grammarly-languageserver",
    ["graphql"] = "graphql-language-service-cli",
    ["groovyls"] = "groovy-language-server",
    ["harper_ls"] = "harper-ls",
    ["haxe_language_server"] = "haxe-language-server",
    ["hdl_checker"] = "hdl-checker",
    ["helm_ls"] = "helm-ls",
    ["hls"] = "haskell-language-server",
    ["hoon_ls"] = "hoon-language-server",
    ["html"] = "html-lsp",
    ["htmx"] = "htmx-lsp",
    ["hydra_lsp"] = "hydra-lsp",
    ["hyprls"] = "hyprls",
    ["intelephense"] = "intelephense",
    ["java_language_server"] = "java-language-server",
    ["jdtls"] = "jdtls",
    ["jedi_language_server"] = "jedi-language-server",
    ["jinja_lsp"] = "jinja-lsp",
    ["jqls"] = "jq-lsp",
    ["jsonls"] = "json-lsp",
    ["jsonnet_ls"] = "jsonnet-language-server",
    ["julials"] = "julia-lsp",
    ["kotlin_language_server"] = "kotlin-language-server",
    ["lelwel_ls"] = "lelwel",
    ["lemminx"] = "lemminx",
    ["lexical"] = "lexical",
    ["ltex"] = "ltex-ls",
    ["lua_ls"] = "lua-language-server",
    ["luau_lsp"] = "luau-lsp",
    ["lwc_ls"] = "lwc-language-server",
    ["markdown_oxide"] = "markdown-oxide",
    ["marksman"] = "marksman",
    ["matlab_ls"] = "matlab-language-server",
    ["mdx_analyzer"] = "mdx-analyzer",
    ["millet"] = "millet",
    ["mm0_ls"] = "metamath-zero-lsp",
    ["motoko_lsp"] = "motoko-lsp",
    ["move_analyzer"] = "move-analyzer",
    ["mutt_ls"] = "mutt-language-server",
    ["neocmake"] = "neocmakelsp",
    ["nickel_ls"] = "nickel-lang-lsp",
    ["nginx_language_server"] = "nginx-language-server",
    ["nil_ls"] = "nil",
    ["nim_langserver"] = "nimlangserver",
    ["nimls"] = "nimlsp",
    ["ocamllsp"] = "ocaml-lsp",
    ["ols"] = "ols",
    ["omnisharp"] = "omnisharp",
    ["omnisharp_mono"] = "omnisharp-mono",
    ["opencl_ls"] = "opencl-language-server",
    ["openscad_lsp"] = "openscad-lsp",
    ["pbls"] = "pbls",
    ["perlnavigator"] = "perlnavigator",
    ["pest_ls"] = "pest-language-server",
    ["phpactor"] = "phpactor",
    ["pico8_ls"] = "pico8-ls",
    ["pkgbuild_language_server"] = "pkgbuild-language-server",
    ["powershell_es"] = "powershell-editor-services",
    ["prismals"] = "prisma-language-server",
    ["prosemd_lsp"] = "prosemd-lsp",
    ["psalm"] = "psalm",
    ["puppet"] = "puppet-editor-services",
    ["purescriptls"] = "purescript-language-server",
    ["pylsp"] = "python-lsp-server",
    ["pylyzer"] = "pylyzer",
    ["pyre"] = "pyre",
    ["pyright"] = "pyright",
    ["quick_lint_js"] = "quick-lint-js",
    ["r_language_server"] = "r-languageserver",
    ["raku_navigator"] = "raku-navigator",
    ["reason_ls"] = "reason-language-server",
    ["regols"] = "regols",
    ["regal"] = "regal",
    ["remark_ls"] = "remark-language-server",
    ["rescriptls"] = "rescript-language-server",
    ["rnix"] = "rnix-lsp",
    ["robotframework_ls"] = "robotframework-lsp",
    ["rome"] = "rome",
    ["rubocop"] = "rubocop",
    ["ruby_lsp"] = "ruby-lsp",
    ["ruff"] = "ruff",
    ["ruff_lsp"] = "ruff-lsp",
    ["rust_analyzer"] = "rust-analyzer",
    ["salt_ls"] = "salt-lsp",
    ["serve_d"] = "serve-d",
    ["shopify_theme_ls"] = "shopify-cli",
    ["slint_lsp"] = "slint-lsp",
    ["smithy_ls"] = "smithy-language-server",
    ["snyk_ls"] = "snyk-ls",
    ["solang"] = "solang",
    ["solargraph"] = "solargraph",
    ["solc"] = "solidity",
    ["solidity"] = "solidity-ls",
    ["solidity_ls"] = "vscode-solidity-server",
    ["solidity_ls_nomicfoundation"] = "nomicfoundation-solidity-language-server",
    ["somesass_ls"] = "some-sass-language-server",
    ["sorbet"] = "sorbet",
    ["sourcery"] = "sourcery",
    ["spectral"] = "spectral-language-server",
    ["sqlls"] = "sqlls",
    ["sqls"] = "sqls",
    ["standardrb"] = "standardrb",
    ["starlark_rust"] = "starlark-rust",
    ["starpls"] = "starpls",
    ["steep"] = "steep",
    ["stimulus_ls"] = "stimulus-language-server",
    ["stylelint_lsp"] = "stylelint-lsp",
    ["svelte"] = "svelte-language-server",
    ["svlangserver"] = "svlangserver",
    ["svls"] = "svls",
    ["swift_mesonls"] = "swift-mesonlsp",
    ["mesonlsp"] = "mesonlsp",
    ["tailwindcss"] = "tailwindcss-language-server",
    ["taplo"] = "taplo",
    ["teal_ls"] = "teal-language-server",
    ["templ"] = "templ",
    ["terraformls"] = "terraform-ls",
    ["texlab"] = "texlab",
    ["textlsp"] = "textlsp",
    ["tflint"] = "tflint",
    ["theme_check"] = "shopify-theme-check",
    ["thriftls"] = "thriftls",
    ["ts_ls"] = "typescript-language-server",
    ["tsp_server"] = "tsp-server",
    ["twiggy_language_server"] = "twiggy-language-server",
    ["typos_lsp"] = "typos-lsp",
    ["tinymist"] = "tinymist",
    ["typst_lsp"] = "typst-lsp",
    ["unocss"] = "unocss-language-server",
    ["v_analyzer"] = "v-analyzer",
    ["vacuum"] = "vacuum",
    ["vala_ls"] = "vala-language-server",
    ["vale_ls"] = "vale-ls",
    ["verible"] = "verible",
    ["veryl_ls"] = "veryl-ls",
    ["vhdl_ls"] = "rust_hdl",
    ["vimls"] = "vim-language-server",
    ["visualforce_ls"] = "visualforce-language-server",
    ["vls"] = "vls",
    ["volar"] = "vue-language-server",
    ["vtsls"] = "vtsls",
    ["vuels"] = "vetur-vls",
    ["wgsl_analyzer"] = "wgsl-analyzer",
    ["yamlls"] = "yaml-language-server",
    ["zk"] = "zk",
    ["zls"] = "zls",
}

M.package_to_lspconfig = _.invert(M.lspconfig_to_package)

return M
