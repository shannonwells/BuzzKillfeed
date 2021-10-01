defmodule Mix.Tasks.SassWatch do
  use Mix.Task

  @shortdoc "Compiles CSS assets"
  def run(_args) do
    {cmds, _} = Code.eval_file("config/cmds.exs")

    run_cmd(cmds.sass, ["--style=compressed"])
  end

  defp run_cmd(cmd, args) do
    cmd
    |> Enum.concat(if Mix.env() == :prod, do: args, else: [])
    |> Enum.join(" ")
    |> Mix.shell().cmd()
  end

end

defmodule Mix.Tasks.Sass do
  use Mix.Task

  @shortdoc "Compiles CSS assets"
  def run(_args) do
    {cmds, _} = Code.eval_file("config/cmds.exs")

    run_cmd(cmds.sass, ["--style=compressed"])
  end

  defp run_cmd(cmd, args) do
    cmd
    |> Enum.concat(if Mix.env() == :prod, do: args, else: [])
    |> Enum.join(" ")
    |> Mix.shell().cmd()
  end
end

