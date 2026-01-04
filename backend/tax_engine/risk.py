def risk_score(deduction: float, income: float) -> float:
    ratio = deduction / max(income, 1)
    if ratio < 0.05:
        return 0.1
    if ratio < 0.15:
        return 0.4
    return 0.8
