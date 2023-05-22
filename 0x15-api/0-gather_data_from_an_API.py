#!/usr/bin/python3
"""This module contains the script to send a get request to a REST API"""


if __name__ == "__main__":
    import requests
    import sys

    user_id = sys.argv[1]
    req_url = 'https://jsonplaceholder.typicode.com/users/' + user_id
    req = requests.get(req_url + '/todos')
    name = 'https://jsonplaceholder.typicode.com/users/' + user_id
    name_req = requests.get(name)
    res_name = name_req.json()
    res = req.json()
    print(f'Employee {res_name.get("name")} is done with tasks(n/20):')
    for i in res:
        if i.get("completed") is True:
            print(f'\t {i.get("title")}')
