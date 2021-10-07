defmodule Mix.Tasks.Assets do
  use Mix.Task

  @shortdoc "Compiles CSS and JS assets"
  def run(_args) do
    {cmds, _} = Code.eval_file("config/cmds.exs")

    run_cmd(cmds.sass, ["--style=compressed"])
    run_cmd(cmds.esbuild, ["--minify"])
  end

  defp run_cmd(cmd, args) do
    cmd
    |> Enum.concat(if Mix.env() == :prod, do: args, else: [])
    |> Enum.join(" ")
    |> Mix.shell().cmd()
  end
end

