-- Scala (Metals). Not available in Mason: install/update with `cs install metals` / `cs update metals`.
---@type vim.lsp.Config
return {
	-- nvim-lspconfig only attaches to *.scala; also handle build.sbt files
	filetypes = { "scala", "sbt" },
	-- lspconfig's markers plus project.scala, so scala-cli projects get a root too
	root_markers = { "build.sbt", "build.sc", { "build.gradle", "build.gradle.kts" }, "pom.xml", "project.scala" },
}
