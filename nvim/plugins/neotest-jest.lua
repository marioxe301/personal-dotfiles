-- Adapters for Vitest and Jest testing frameworks
return {
  { "haydenmeade/neotest-jest" },
  {

    "nvim-neotest/neotest",
    opts = {
      adapters = { "neotest-jest" },
    },
  },
}
