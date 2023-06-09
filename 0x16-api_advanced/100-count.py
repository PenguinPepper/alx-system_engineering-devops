#!/usr/bin/python3
"""
Module contains the function that gets the number of subscrbers
"""

import requests


def count_words(subreddit, word_list):
    """
    Function that prints the titles of the
    first 10 hot posts listed for a given subreddit
    """
    if not subreddit:
        return None
    else:
        return word_list
