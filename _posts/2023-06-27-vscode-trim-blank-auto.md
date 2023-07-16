---
layout: post
title:  "Visual Studio Code에서 파일 저장시 불필요한 공백 제거하기"
author: picsen
date:   2023-06-27 09:13:52 +0900
categories: vscode
image: assets/images/Pasted_image_20230717020503.png
---
Visual Studio Code에서 파일 저장시 불필요한 공백 제거 기능 설정하는 방법에 대하여 정리하였습니다.

1. Visual Studio Code에서 black 설정 추가
File -> Preferences -> Settings 메뉴 이동
단축키 Ctrl + ,

모든 파일에 대하여 적용하는 경우에는 Whitespace로 검색후에 Trim Trailing Whitespace에서 체크 박스 옵션 선택
![](https://blog.kakaocdn.net/dn/bAEgUC/btslB0FBdqw/5Onv7993eKyhiuXF1KXxNk/img.png)

Markdown 파일의 경우에는 개행을 위하여 공백 2개가 필요하기 때문에 공백 제거시에 문제가 발생합니다.

이럴 경우에 특정 파일에 대해서 적용하기 위해서는 화면 하단에서 특정 언어 선택후에 저장하면 됩니다.

이때 이전에 모든 파일에 적용하기 위한 설정을 제거합니다.

전역 설정에서 제거
![](https://blog.kakaocdn.net/dn/bzHpWl/btslw8j31z4/L3Ekrs9uBHBWTV93jKUsdk/img.png)


python에서만 설정
![](https://blog.kakaocdn.net/dn/rM1YB/btslDEV4ahx/AOKAck4dXPsz1KlQ84VcQK/img.png)


Files: Trim Trailing Whitespace 사용 설정
![](/assets/images/Pasted_image_20230717020503.png)