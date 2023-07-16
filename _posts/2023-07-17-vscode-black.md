---
layout: post
title:  Visual Studio Code에서 python 포멧팅 black 설정
author: picsen
categories: vscode python
tags: [red, yellow]
image: assets/images/Pasted_image_20230717010229.png
description: Visual Studio Code에서 python 포멧팅 black 설정하는 방법에 대해서 정리하였습니다.
featured: true
hidden: true
rating: 4.5
beforetoc: Visual Studio Code에서 python 포멧팅 black 설정
toc: true
---

Visual Studio Code에서 python 포멧팅 black 설정하는 방법에 대해서 정리하였습니다.

#### black 설치

pip install black

설치 오류시 터미널을 관리자 권한으로 실행하여 설치


#### Visual Studio Code에서 black 설정 추가
File -> Preferences -> Settings 메뉴 이동
단축키 Ctrl + ,
검색창에서 formatting provider 설정후에 콤보 박스에서 black 선택  
 

![](https://blog.kakaocdn.net/dn/cb7vXs/btslC4Ayd9Y/kMkss3jcSNU9FOnwkOdvVK/img.png)

#### Visual Studio Code에서 settings.json 편집

![](/assets/images/Pasted_image_20230717010113.png)

변경전
```json
{
    "[python]": {
        "editor.defaultFormatter": "ms-python.python"
    },
    "python.formatting.provider": "none"
}
```

변경후
```json
{
    "[python]": {
        "editor.defaultFormatter": "ms-python.python"
    },
    "python.formatting.provider": "black",
    "python.formatting.blackArgs": ["--line-length", "100"],
    "editor.formatOnSave": true
}
```

black 적용전 코드
```python
def func(a: int):
    if a == 1:
        print('a:', a)
        return

    try:
        if a == 2:
            print('a:', a)
            return

        print('try')
        items = [1,2,3,4,5,6,7,8,9,10]
        print(items[1:])
    except:
        print('except')
        pass
    finally:
        print('finally')

def main():
    func(1)

    func(2)

if __name__ == '__main__':
    main()

```

black 적용후 코드
```python
def func(a: int):
    if a == 1:
        print("a:", a)
        return

    try:
        if a == 2:
            print("a:", a)
            return

        print("try")
        items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        print(items[1:])
    except:
        print("except")
        pass
    finally:
        print("finally")


def main():
    func(1)

    func(2)


if __name__ == "__main__":
    main()
```