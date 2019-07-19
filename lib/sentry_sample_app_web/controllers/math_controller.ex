defmodule SentrySampleAppWeb.MathController do
  use SentrySampleAppWeb, :controller

  def create(conn, %{"function" => "add", "val_1" => val_1, "val_2" => val_2}) do
    conn
    |> json(%{result: val_1 + val_2})
  end

  def create(conn, %{"function" => "div", "val_1" => val_1, "val_2" => val_2}) do
    conn
    |> json(%{result: val_1 / val_2})
  end

  def create(conn, %{"function" => "mult", "val_1" => val_1, "val_2" => val_2}) do
    conn
    |> json(%{result: val_1 * val_2})
  end
end
