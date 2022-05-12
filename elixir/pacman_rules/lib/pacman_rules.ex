defmodule PacmanRules do
  @moduledoc """
  Documentation for `PacmanRules`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> PacmanRules.hello()
      :world

  """
  def eat_ghost?(power_pellet_active, is_touching_ghost) do
    # return true only if Pac-Man has a power pellet active and is touching a ghost
    case {power_pellet_active, is_touching_ghost} do
      {:true, :true} -> "true"
      _ -> "false"
    end
  end

  def score?(istouching_power_pellet, is_touching_dot) do
    # return true if Pac-Man is touching a power pellet or a dot
    case {istouching_power_pellet, is_touching_dot} do
      {:true, _} -> "true"
      {_, :true} -> "true"
      _ -> "false"
    end
  end

  def loses?(power_pellet_active, is_touching_ghost) do
    # return true if Pac-Man is touching a ghost and does not have a power pellet active.
    case {power_pellet_active, is_touching_ghost} do
      {:false, :true} -> "true"
      _ -> "false"
    end
  end

  def win?(eaten_all_dots, power_pellet_active, is_touching_ghost) do
    # return true if Pac-Man has eaten all of the dots and has not lost
    # based on the arguments defined in Part 3.

    case {eaten_all_dots, power_pellet_active, is_touching_ghost} do
      {:true, :false, :true} -> "true"
      _ -> "false"
    end
  end

end
