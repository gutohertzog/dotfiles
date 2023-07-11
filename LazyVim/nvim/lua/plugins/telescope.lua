return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      return {
        defaults = {
          file_ignore_patters = { ".venv", ".pyc" },
        },
      }
    end,
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
