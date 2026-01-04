def calculate_tax(income: float, brackets: list[dict]) -> float:
    tax = 0.0
    for b in brackets:
        if income > b["min"]:
            tax += (min(income, b["max"]) - b["min"]) * b["rate"]
    return max(tax, 0)
