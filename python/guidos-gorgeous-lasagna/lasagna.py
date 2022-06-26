"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language: https://en.wikipedia.org/wiki/Guido_van_Rossum
"""

# TODO: define the 'EXPECTED_BAKE_TIME' constant
# TODO: consider defining the 'PREPARATION_TIME' constant
#       equal to the time it takes to prepare a single layer
EXPECTED_BAKE_TIME = 40


# TODO: define the 'bake_time_remaining()' function
def bake_time_remaining(actual_minutes_taken):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """

    return EXPECTED_BAKE_TIME - actual_minutes_taken


# TODO: define the 'preparation_time_in_minutes()' function
#       and consider using 'PREPARATION_TIME' here
def preparation_time_in_minutes(number_of_layers):
    """Implement the preparation_time_in_minutes() function that takes the number of layers
    you want to add to the lasagna as an argument and returns how many minutes you would
    spend making them. Assume each layer takes 2 minutes to prepare.
    """
    PREPARATION_TIME = number_of_layers * 2
    return PREPARATION_TIME


# TODO: define the 'elapsed_time_in_minutes()' function
def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """This function should return the total number of minutes you've been cooking,
    or the sum of your preparation time and the time the lasagna has already spent
    baking in the oven
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time * 3
