defmodule FreelancerRates do

  def daily_rates(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(monthly_budget, discount) do
    monthly_budget * (100.0 - discount) / 100.0
  end

  def monthly_rate(hourly_rate, discount) do
    monthly_budget = daily_rates(hourly_rate) * 22
    ceil(apply_discount(monthly_budget, discount))
  end

  def days_in_budget(budget, hourly_rate, _discount) do
    daily_rate = daily_rates(hourly_rate)
    Float.round((budget / daily_rate), 1)
  end

end
