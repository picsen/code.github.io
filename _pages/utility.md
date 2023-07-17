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
document.addEventListener("DOMContentLoaded", function(){
    var today = new Date();
    var year = today.getFullYear();
    var month = ('0' + (today.getMonth() + 1)).slice(-2);
    var day = ('0' + today.getDate()).slice(-2);

    var date = year + '-' + month  + '-' + day;
    document.getElementById('output').placeholder = date + '-how-to-convert-file-name.md';

    document.getElementById('convert').addEventListener('click', function(event) {
        // event.preventDefault();
        var input = document.getElementById('input').value.trim();
        if( input == '') {
            alert('변경할 파일명을 입력해주세요.');
            document.getElementById('input').focus();
            return;
        }
        var replacement = input.toLowerCase().replace(/[^\w]+/g, ' ').replace(/[_-]+/g, ' ').trim().replace(/[ ]+/g, '-');
        document.getElementById('output').value = date + '-' + replacement + '.md';
    });

});
</script>

<div class="row justify-content-between">
    <div class="col-md-8 pr-5" >
        <h4>Jekyll 마크다운 파일명 변환기</h4>
        <form>
            <div class="form-group">
                <label for="raw">변경할 문구</label>
                <textarea class="form-control" id="input" rows="3" placeholder="how to convert file name"></textarea>
            </div>
            <button type="button" class="btn btn-primary btn-sm float-right" id="convert">변환하기</button>
            <div class="form-group">
                <label for="output">변경된 파일 이름</label>
                <textarea class="form-control" id="output" rows="3"></textarea>
            </div>
        </form>

        <p>This website is built with Jekyll and Mediumish template for Jekyll. It's for demonstration purposes, no real content can be found. Mediumish template for Jekyll is compatible with Github pages, in fact even this demo is created with Github Pages and hosted with Github.</p>

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
</div>
```javascript
        var input = document.getElementById('input').value;
        var replacement = input.toLowerCase().replace(/[^\w]+/g, ' ').replace(/[_-]+/g, ' ').trim().replace(/[ ]+/g, '-');
        document.getElementById('output').value = date + '-' + replacement + '.md';
```