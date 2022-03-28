defmodule Stock.Laptop do
  @derive Computer
  defstruct type: "laptop", branch: "", model: "", serial: ""

  def new(type \\ "Laptop", branch \\ "", model \\ "", serial \\ "") do
    %__MODULE__{type: type, branch: branch, model: model, serial: serial}
  end
end
