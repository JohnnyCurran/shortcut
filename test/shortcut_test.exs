defmodule ShortcutTest do
  use ExUnit.Case
  doctest Shortcut

  test "greets the world" do
    assert Shortcut.hello() == :world
  end
end
