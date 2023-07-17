---
layout: post
title:  jekyll에서 syntax highlight 변경하기
author: picsen
categories: jekyll
tags: rouge
image: assets/images/mika-baumeister-J5yoGZLdpSI-unsplash.jpg
description: "코드에 알록달록한 syntax hightlight 적용하기"
featured: true
---

기존의 syntax highlight가 너무 밋밋해 보여서
코드에 알록달록한 syntax hightlight 적용하였습니다.

*변경 전 syntax highlight*
![](/assets/images/Pasted image 20230717235745.png)



대부분 테마에서 rouge를 사용하기 때문에 shell에서 다음과 같은 명령어로 사용 가능한 테마를 조회할 수 있습니다. 

```shell
d:\picsen\git\picsen.github.io (main -> origin)
λ rougify help style
usage: rougify style [<theme-name>] [<options>]

Print CSS styles for the given theme.  Extra options are
passed to the theme. To select a mode (light/dark) for the
theme, append '.light' or '.dark' to the <theme-name>
respectively. Theme defaults to thankful_eyes.

options:
  --scope       (default: .highlight) a css selector to scope by
  --tex         (default: false) render as TeX
  --tex-prefix  (default: RG) a command prefix for TeX
                implies --tex if specified

available themes:
  base16, base16.dark, base16.light, base16.monokai, base16.monokai.dark, base16.monokai.light, base16.solarized, base16.solarized.dark, base16.solarized.light, bw, colorful, github, github.dark, github.light, gruvbox, gruvbox.dark, gruvbox.light, igorpro, magritte, molokai, monokai, monokai.sublime, pastie, thankful_eyes, tulip
```

조회 후에는 자기가 원하는 컬러 테마에 맞게 css 파일을 생성합니다.
monokai.sublime 테마를 선택하여 진행하였습니다.
```shell
d:\picsen\git\picsen.github.io (main -> origin)
λ rougify style monokai.sublime > assets\css\syntax.css
```

레이아웃 파일에서 생성된 css 파일을 추가합니다.
일부 템플릿에 따라서 수정되는 파일이 다를 수 있으며,
일반적으로 \_layouts/default.html에서 많이 적용합니다.

```html
<!-- syntax highlight css -->
<link href="{{ site.baseurl }}/assets/css/syntax.css" rel="stylesheet">
```

실제 적용된 화면입니다.
일단 테마는 적용되었지만, CSS 충돌 이슈가 있어서 일부 색상이 이상하게 보입니다.
*해결 방법은 일단 _config.yml 파일에서 아래 부분을 제거하면 됩니다._*

```yml
#_config.yml
# 변경전
kramdown:
  input: GFM
  syntax_highlighter: rouge
  syntax_highlighter_opts:
    block:
      line_numbers: true

# 변경후
kramdown:
  input: GFM
  syntax_highlighter: rouge
#  syntax_highlighter_opts:
#    block:
#      line_numbers: true
```


짜잔~! 일단 색상은 모두 적상적으로 적용되었습다.
하지만 라인 번호가 안보여서 조금 아쉽네요.
![](/assets/images/Pasted image 20230718002316.png)

이 상태로 사용해도 되는데, 라인 번호를 보이게 하고 싶으면 아래 과정을 수행하세요.
일단 \_config.yml 파일을 원복합니다.
```yml
#_config.yml
# 원복
kramdown:
  input: GFM
  syntax_highlighter: rouge
  syntax_highlighter_opts:
    block:
      line_numbers: true
```

문제가 되는 부분은 개발자 도구에서 살펴보니, 다음과 같이 CSS 충돌되는 현상이 있습니다.
직접 screen.css 파일을 수정을 해도 되고,  저는 syntax.css 파일에서 추가하였습니다.
이후에 다른 jekyll 테마나 syntax highlight 적용하기 위해서는 별도의 css 파일 사용하는게 좋을거 같습니다.

*문제가 되는 css*
![](/assets/images/Pasted image 20230718000637.png)


```css
/* screen.css */
pre {
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    border: #E3EDF3 1px solid;
    width: 100%;
    padding: 7px;
    font-family: monospace, sans-serif;
    font-size: .9rem;
    white-space: pre;
    overflow: auto;
    background: #fff;
    border-radius: 0px;
    line-height: 1.6;
    color: #333;
    margin-bottom: -rem;
}
```

syntax.css 수정 결과
```css
/* syntax.css 변경전 */
.highlight table pre { margin: 0; }

/* syntax.css 변경후 */
.highlight table pre {
  margin: 0;
  border: #E3EDF3 0px solid;
  color: #FFF;
  background: transparent;
  font-family: inherit;
}
```


*변경 전*
![](/assets/images/Pasted image 20230717234550.png)

변경 후
![](/assets/images/Pasted image 20230718011208.png)


사진: <a href="https://unsplash.com/ko/%EC%82%AC%EC%A7%84/J5yoGZLdpSI?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>의<a href="https://unsplash.com/@mbaumi?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Mika Baumeister</a>
