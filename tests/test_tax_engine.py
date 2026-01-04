from backend.tax_engine.calculator import calculate_tax

def test_basic_tax():
    brackets = [{"min": 0, "max": 10000, "rate": 0.1}]
    assert calculate_tax(10000, brackets) == 1000
