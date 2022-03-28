defmodule Stock.PC do
  @derive Computer
  defstruct type: "PC", branch: "", model: "", serial: ""

  def new(type \\ "PC", branch \\ "", model \\ "", serial \\ "") do
    %__MODULE__{type: type, branch: branch, model: model, serial: serial}
  end
end
