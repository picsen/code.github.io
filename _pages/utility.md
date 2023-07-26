---
layout: page
title: 유용한 유틸리티 모음
permalink: /utility
comments: true
---

<!--
manatoki: {{ site.data.site_checker_result['manatoki'] }}
<script>alert(0);</script>
-->
<script>
function validate(o) {
    if( o.value.trim() == '') {
        alert('변경할려는 문자열을 입력해주세요.');
        o.focus();
        return false;
    }

    return true;
}

function strToList(s) {
    const lines = s.split("\n");
    let outputs = [];
    for(let i = 0; i < lines.length; i++) {
        outputs.push('"' + lines[i].trim() + '"');
    }

    return '[' + outputs.join(', ') + ']';
}

document.addEventListener("DOMContentLoaded", function(){
    const md = function() {
        const today = new Date();
        const year = today.getFullYear();
        const month = ('0' + (today.getMonth() + 1)).slice(-2);
        const day = ('0' + today.getDate()).slice(-2);
        const date = year + '-' + month  + '-' + day;
        const frmMd = document.querySelector('form[name="frmMd"]');
        frmMd.querySelector('textarea[name="output"]').placeholder = date + '-how-to-convert-file-name.md';
        frmMd.querySelector('button').addEventListener('click', function(event) {
            // event.preventDefault();
            const input = frmMd.querySelector('textarea[name="input"]');
            const inputValue = input.value.trim();
            if( !validate(input)) {
                return;
            }

            const replacement = inputValue.toLowerCase().replace(/[^\w]+/g, ' ').replace(/[_-]+/g, ' ').trim().replace(/[ ]+/g, '-');
            frmMd.querySelector('textarea[name="output"]').value = date + '-' + replacement + '.md';
        });
    }

    md();

    const json = function() {
        const frmJson = document.querySelector('form[name="frmJson"]');
        const input = frmJson.querySelector('textarea[name="input"]');
        const output = frmJson.querySelector('textarea[name="output"]');

        frmJson.querySelector('button').addEventListener('click', function(event) {
            if( !validate(input)) {
                return;
            }
            output.value = strToList(input.value.trim());
        });

        output.placeholder = strToList(input.placeholder);
    }

    json();

});
</script>

<div class="row justify-content-between">
    <div class="col-md-8 pr-5" >
        <h4>Jekyll 마크다운 파일명 변환기</h4>
        <form name="frmMd">
            <div class="form-group">
                <label for="raw">변경할 문구</label>
                <textarea class="form-control" name="input" rows="3" placeholder="how to convert file name"></textarea>
            </div>
            <button type="button" class="btn btn-primary btn-sm float-right">변환하기</button>
            <div class="form-group">
                <label for="output">변경된 파일 이름</label>
                <textarea class="form-control" name="output" rows="3"></textarea>
            </div>
        </form>

        <p>마크다운 이름 변경시 귀찮아서 만들어 보았습니다. 이후에 문자열 변환에 관련된 기능들이 계속 업데이트 될 예정입니다.</p>

        <!--
        <p class="mb-5"><img class="shadow-lg" src="{{site.baseurl}}/assets/images/mediumish-jekyll-template.png" alt="jekyll template mediumish" /></p>
        <h4>Documentation</h4>

        <p>Please, read the docs <a href="https://bootstrapstarter.com/bootstrap-templates/template-mediumish-bootstrap-jekyll/">here</a>.</p>

        <h4>Questions or bug reports?</h4>

        <p>Head over to our <a href="https://github.com/wowthemesnet/mediumish-theme-jekyll">Github repository</a>!</p>
        -->
    </div>

    <div class="col-md-4">
    
        <div class="sticky-top sticky-top-80">
        <!--
        <h5>Buy me a coffee</h5>

        <p>Thank you for your support! Your donation helps me to maintain and improve <a target="_blank" href="https://github.com/wowthemesnet/mediumish-theme-jekyll">Mediumish <i class="fab fa-github"></i></a>.</p>

        <a target="_blank" href="https://www.wowthemes.net/donate/" class="btn btn-danger">Buy me a coffee</a> <a target="_blank" href="https://bootstrapstarter.com/bootstrap-templates/template-mediumish-bootstrap-jekyll/" class="btn btn-warning">Documentation</a>
        -->

        </div>
    </div>
    
    <div class="col-md-8 pr-5" >
        <h4>JSON 변환기</h4>
        <form name="frmJson">
            <div class="form-group">
                <label for="raw">입력 문자열</label>
                <textarea class="form-control" name="input" rows="3" placeholder="first&#10;second&#10;third"></textarea>
            </div>
            <button type="button" class="btn btn-primary btn-sm float-right">변환하기</button>
            <div class="form-group">
                <label for="output">JSON</label>
                <textarea class="form-control" name="output" rows="3" placeholder=""></textarea>
            </div>
        </form>
    </div>    
</div>
```javascript
        var input = document.getElementById('input').value;
        var replacement = input.toLowerCase().replace(/[^\w]+/g, ' ').replace(/[_-]+/g, ' ').trim().replace(/[ ]+/g, '-');
        document.getElementById('output').value = date + '-' + replacement + '.md';
```