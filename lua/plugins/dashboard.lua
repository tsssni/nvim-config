return {
  "glepnir/dashboard-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      config = {
        header = {          
          "              \'.             ",
          "     ,≈Θ,φ▒≤≈ ,╔≈╦#▒\'ⁿº,     ",
          "   .╠╓╔▒▒╠╬▓▀╙╙╙▀▓▓╬╬▒╦╓╠-   ",
          "    ╟╬▒╣╩╙`       '╙╝╬╬╬▌    ",
          "   ╔█└ \' [        ┌¡ \' └╫▄   ",
          "  ]█  \' .░        :jε  . ╫µ  ",
          "  ╫⌐\";\'.\" ░░      ; └, \'  ▌  ",
          " \'/  ∩; ,,,░░..  :,,, φ└  ░  ",
          "` » ¡Γ╔▀▓▓▌⌡  ⁿ░ⁿ▐▓▓╨▀▄⌠  . `",
          "  \'░ ▐└ ╙╙╙╚     ╙╙└╚ └Γ     ",
          "  \"»░ = \'           \' /,     ",
          "  »└\'\"░░=.         ,;░░░ \';  ",
          "  ,▄G.░=j▄▌░░░\',░░å▄└»≤\',φ   ",
          "  ╘\" \' -▀▀╝╝╙╛≈∞╙╩═▀▀═  \'~-  ",
        }
      }
    })
  end,
}