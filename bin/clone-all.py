import os
import sys
import json
import shlex
import getpass
import subprocess
import requests


def main(auth, dest):
    user = auth[0]
    user_repos = github('/users/%s/repos' % user, auth,
                        sort='pushed', direction='desc')

    for repo in user_repos:
        if repo['fork']:
            name = repo['name']
            repo = github('/repos/%s/%s' % (repo['owner']['login'], name), auth)
            if repo['source']['owner']['type'] == 'Organization':
                clone_fp = os.path.join(dest, repo['source']['owner']['login'], name)
            else:
                clone_fp = os.path.join(dest, repo['owner']['login'], name)

            if clone(repo['ssh_url'], dest=clone_fp):
                git('-C %s remote add upstream %s' % (clone_fp, repo['source']['clone_url']))
        else:
            clone(repo['ssh_url'], os.path.join(dest, user, repo['name']))


def github(path, auth, per_page=100, **kwargs):
    if not path.startswith('/'):
        raise ValueError("Path doesn't start with '/'")
    params = "?per_page=%d" % per_page
    params += "&" + "&".join("%s=%s" % item for item in kwargs.items())
    url = "https://api.github.com" + path + params
    print("Fetching: %s" % url)
    return requests.get(url, auth=auth).json()


def clone(url, dest):
    if os.path.exists(dest):
        print("Skipping %s." % url)
    else:
        git("clone %s %s" % (url, dest))
        return True


def git(subcommand):
    subprocess.run(["git", *shlex.split(subcommand)], shell=False, check=True)


if __name__ == '__main__':
    username = input('GitHub Username: ')
    password = getpass.getpass()
    main((username, password), sys.argv[1])
