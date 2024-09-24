"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language:
https://en.wikipedia.org/wiki/Guido_van_Rossum
"""

# the 'PREPARATION_TIME' constant equals
# to the time it takes to prepare a single layer
EXPECTED_BAKE_TIME = 40


def bake_time_remaining(actual_minutes_taken):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """

    return EXPECTED_BAKE_TIME - actual_minutes_taken


def preparation_time_in_minutes(number_of_layers):
    """Implement the preparation_time_in_minutes() function that takes the number of layers
    you want to add to the lasagna as an argument and returns how many minutes you would
    spend making them. Assume each layer takes 2 minutes to prepare.
    """
    preparation_time = number_of_layers * 2
    return preparation_time


def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """This function should return the total number of minutes you've been cooking,
    or the sum of your preparation time and the time the lasagna has already spent
    baking in the oven
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
