def explain(context: dict) -> str:
    return (
        f"Based on your income of ${context['income']}, "
        f"this choice saves ${context['savings']}."
    )
