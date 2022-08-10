export function dayRate(ratePerHour){
  return ratePerHour * 8
}

export function daysInBudget(budget, ratePerHour){
  return Math.trunc(budget/dayRate(ratePerHour))
}

export function priceWithMonthlyDiscount(ratePerHour, numDays, discount) {
  const fullMonths = Math.trunc(numDays / 22)
  const remainingDays = numDays - (fullMonths * 22)

  return Math.ceil(
    ((22 * dayRate(ratePerHour) * fullMonths) * (1 - discount)) + ((dayRate(ratePerHour)) * remainingDays)
  )
}