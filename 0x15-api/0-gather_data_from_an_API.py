#!/usr/bin/python3
"""This module contains the script to send a get request to a REST API

The REST API used is jsonplaceholder.typicode.com
"""


if __name__ == "__main__":
    """Code should only run when called on by terminal"""
    import requests
    import sys

    user_id = sys.argv[1]
    req_url = 'https://jsonplaceholder.typicode.com/users/' + user_id
    req = requests.get(req_url + '/todos')
    name = 'https://jsonplaceholder.typicode.com/users/' + user_id
    name_req = requests.get(name)
    nme = name_req.json()
    res = req.json()
    todo = []
    done = 0
    for i in res:
        if i.get("completed") is True:
            todo.append(i.get("title"))
            done += 1
    print(f'Employee {nme.get("name")} is done with tasks({done}/{len(res)}):')
    for i in todo:
        print(f'\t {i}')
