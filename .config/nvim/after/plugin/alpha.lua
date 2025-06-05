 local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            math.randomseed(os.time())

            local function pick_color()
                local colors = {"String", "Identifier", "Keyword", "Number"}
                return colors["gray"]
            end

            local function footer()
                local total_plugins = #vim.tbl_keys(packer_plugins)
                local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
                local version = vim.version()
                local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

                return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info .. "\n" .."coooddddeeee".."\n"..", the asteroids are comin..."
            
            end

            local logo ={
                

                                                                                                    
                                                                                                   
                                                                                                   
"                                              ░░░░░░░░░░░                                        " ,
"                                          ░░░░░░░░░░░░░░░░░░░░░                                   ",
"                                       ░░░░░░░░░░░░░░░░░░░░░░░░░░                                 ",
"                                     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░                              ",
"                                  ░░░░░░░░░░▒▒▒▒▒▓▓▓▓▓▒░░░░░░░░░░░░░░                             ",
"                                 ░░░░░░░░▓▒▓▒▓▓▒▓▒▓████▓▓▓▓░░░░░░░░░░░░                           ",
"                             ░░░░░░░░░▓▓▒▓▒▒▒▒▒▓▓▓▓▓█▓▓▓▓████▒░░░░░░░░░░░                         ",
"                             ░░░░░░░▒▒▒▒▓▓▓▒▒▒▓▓▓▓▓▒▓▓▓▓▓█▓████░░░░░░░░░░░                        ",
"                            ░░░░░░▒▓▒▒▓█▓▒▓▒▒▓▓▓▓▓▓▓█████▓██▓████░░░░░░░░░                        ",
"                            ░░░░░▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒▓▓████▓▓▓███▓█████░░░░░░░░                        ",
"                          ░░░░░░▓▓▓▓▓▓▓▓▓▒▒▓▒▒▒▒██████▓████████████░░░░░░░░░                      ",
"                          ░░░░░▒▓▓▓▓▓▓▓▓▒▒▒▒▒▒▓▓█▓███▓█████████████ ░░░░░░░░                      ",
"                          ░░░░░▓▓▓▓▓▓▓▒▒▒▓▓▓▓▓▓▓█▓█▓▓▓▓▓▓███████████░░░░░░░░                      ",
"                          ░░░░░▓▓▓▓▓▓▓▓▒▓▓▒▓▓▓▒▓█▓▓▓▓▓▓▓▓▓▓▓▓███████░░░░░░░░                      ",
"                        ░░░░ ▒▓▓▒▓▓▓▓▒▒▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒█▓███▓█░░░░░░░░                      ",
"                         ░░░░░▒▓█▓▓▓▓▓█▓▓▓▒▓▓▓▓▒▓▓▒▓▓▓▓▓▓▓▓▓▓▓▒██▓▓█░░░░░░░░                      ",
"                          ░░░░░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██░░░░░░░░░                      ",
"                          ░░░░░▓█▓▓▓█▓▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▓▒▒▓████ ░░░░░░░░                      ",
"                          ░░░░░░▓██▓▓▓▓▓▓▓▓▓▓▒▓▓▓▓▓▓▓▓▓▓▓▒▓▓▓▓████░░░░░░░░░░                      ",
"                            ░░░░░██▓▓▓▓▓▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓███░░░░░░░░░                        ",
"                            ░░░░░░██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▓████░░░░░░░░░                         ",
"                             ░░░░░ ░██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▓███░░░░░░░░░                           ",
"                               ░░░░░ ░██▓▓▓▓▓▓▓▓▓▓▓▓▒▓▓▓▓███░░░░░░░░░                             ",
"                               ░░░░░░░░░░▓▓▓▓▓▓▓▒▓▓▓▓▓███░░░░░░░░░░░░                             ",
"                                 ░░░░░░░░░░░░░░░░░░░░░░ ░░░░░░░░░░                                ",
"                                    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░                                 ",
"                                         ░░░░░░░░░░░░░░░░░░░                                      ",
"                                                                                                   ",
"                                                                                                  ",
                                                                                                    
                                                                                                    
                                                                                                    


            }

            dashboard.section.header.val = logo
            dashboard.section.header.opts.hl = pick_color()

            dashboard.section.buttons.val = {
                dashboard.button("<Leader>pv", "  File Explorer"),
                dashboard.button("<Leader>pf", "  Find File"),
                dashboard.button("<Leader>ps", "  Grep"),
                dashboard.button("q", "  Quit", ":qa<cr>")
            }

            dashboard.section.footer.val = footer()
            dashboard.section.footer.opts.hl = "Constant"

            alpha.setup(dashboard.opts)

            vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
