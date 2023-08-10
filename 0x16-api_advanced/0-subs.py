#!/usr/bin/python3
"""Contains function to make requests to Reddit API"""


import requests

def number_of_subscribers(subreddit):
    """
    Function queries the Reddit API and returns
    number of subscribers for a subreddit

    Arguments:
        subreddit (str): subbreddit to be queried
    Return:
        num_subscribers(int): number  of subscribers to subreddit thread
    """
    base_url = 'https://www.reddit.com/'
    reddit_r = 'r/{}/about.json'.format(subreddit)
    headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.188'}

    r = requests.get(base_url + reddit_r, headers=headers)
    if r.status_code == 200:
        about = r.json()
        num = about["data"]["subscribers"]
        return num
    else:
        return 0
