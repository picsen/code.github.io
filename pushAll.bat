git add .
git commit -m "jekyll start"
git commit -m "docker git commit"
git push


git config --global user.email "you@example.com"


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

airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ add 2023-07-09-shortcut.md
-bash: add: command not found
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git add 2023-07-09-shortcut.md
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git commit -m "docker git commit"
Author identity unknown

*** Please tell me who you are.

Run

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

to set your account's default identity.
Omit --global to set the identity only in this repository.

fatal: unable to auto-detect email address (got 'airflow@855768c400aa.(none)')
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git config --global user.email "picsen@naver.com"
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git config --global user.name "Suha Park"
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git add 2023-07-09-shortcut.md
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git commit -m "docker git commit"
[main 0481e58] docker git commit
 1 file changed, 2 insertions(+), 2 deletions(-)
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git push
Username for 'https://github.com': picsen
Password for 'https://picsen@github.com':
remote: Support for password authentication was removed on August 13, 2021.
remote: Please see https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-https-urls for information on currently recommended modes of authentication.
fatal: Authentication failed for 'https://github.com/picsen/picsen.github.io.git/'
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$


----------------------------------

fatal: unable to auto-detect email address (got 'airflow@855768c400aa.(none)')
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git config --global user.email "picsen@naver.com"
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git config --global user.name "Suha Park"
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git add 2023-07-09-shortcut.md
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git commit -m "docker git commit"
[main 0481e58] docker git commit
 1 file changed, 2 insertions(+), 2 deletions(-)
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git push
Username for 'https://github.com': picsen
Password for 'https://picsen@github.com':
remote: Support for password authentication was removed on August 13, 2021.
remote: Please see https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-https-urls for information on currently recommended modes of authentication.
fatal: Authentication failed for 'https://github.com/picsen/picsen.github.io.git/'
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git push
Username for 'https://github.com': picsen
Password for 'https://picsen@github.com':
Enumerating objects: 19, done.
Counting objects: 100% (19/19), done.
Delta compression using up to 8 threads
Compressing objects: 100% (16/16), done.
Writing objects: 100% (16/16), 1.42 KiB | 80.00 KiB/s, done.
Total 16 (delta 12), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (12/12), completed with 3 local objects.
To https://github.com/picsen/picsen.github.io.git
   b3dcc1a..0481e58  main -> main
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git push
Username for 'https://github.com': picsen
Password for 'https://picsen@github.com':
Everything up-to-date
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git config credential.helper store
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git push
Username for 'https://github.com': picsen
Password for 'https://picsen@github.com':
Everything up-to-date
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ git push
Everything up-to-date
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$ dir
2023-07-09-shortcut.md  2023-07-09-toddler.md  2023-07-09-welcome-to-jekyll.md
airflow@855768c400aa:/opt/airflow/blog/picsen.github.io/_posts$