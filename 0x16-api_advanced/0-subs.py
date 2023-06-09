#!/usr/bin/python3
"""
Module contains the function that gets the number of subscrbers
"""

import requests


def number_of_subscribers(subreddit):
    """
    Function that gets the number of subreddit subscribers
    """
    if not subreddit:
        return 0
    else:
        return 1
