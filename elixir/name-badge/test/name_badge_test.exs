defmodule NameBadgeTest do
  use ExUnit.Case
  doctest NameBadge

  describe "print/3" do
    @tag task_id: 1
    test "prints the employee badge with full data" do
      assert NameBadge.print(455, "Mary M. Brown", "MARKETING") ==
               "[455] - Mary M. Brown - MARKETING"
    end
    test "prints the employee badge with full data using cond" do
      assert NameBadge.print_with_cond(455, "Mary M. Brown", "MARKETING") ==
               "[455] - Mary M. Brown - MARKETING"
    end

    @tag task_id: 1
    test "does uppercase on department" do
      assert NameBadge.print(89, "Jack McGregor", "Procurement") ==
               "[89] - Jack McGregor - PROCUREMENT"
    end
    test "does uppercase on department using cond" do
      assert NameBadge.print_with_cond(89, "Jack McGregor", "Procurement") ==
               "[89] - Jack McGregor - PROCUREMENT"
    end

    @tag task_id: 2
    test "prints the employee badge without id" do
      assert NameBadge.print(nil, "Barbara White", "Security") == "Barbara White - SECURITY"
    end
    test "prints the employee badge without id using cond" do
      assert NameBadge.print_with_cond(nil, "Barbara White", "Security") == "Barbara White - SECURITY"
    end

    @tag task_id: 3
    test "prints the owner badge" do
      assert NameBadge.print(1, "Anna Johnson", nil) == "[1] - Anna Johnson - OWNER"
    end
    test "prints the owner badge using cond" do
      assert NameBadge.print_with_cond(1, "Anna Johnson", nil) == "[1] - Anna Johnson - OWNER"
    end

    @tag task_id: 3
    test "prints the owner badge without id" do
      assert NameBadge.print(nil, "Stephen Dann", nil) == "Stephen Dann - OWNER"
    end
    test "prints the owner badge without id using cond" do
      assert NameBadge.print_with_cond(nil, "Stephen Dann", nil) == "Stephen Dann - OWNER"
    end
  end
end
