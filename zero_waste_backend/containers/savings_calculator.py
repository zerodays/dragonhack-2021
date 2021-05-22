import abc


class SavingsCalculator(abc.ABC):
    @classmethod
    def g_co2(cls, food_g: int) -> int:
        return food_g

    @classmethod
    def g_waste(cls, food_g: int) -> int:
        return food_g
