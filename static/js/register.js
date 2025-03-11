$(function () {
    function captchaBtnClick() {
        $('#captcha-btn').click(function (event) {
            let $this = $(this);
            let email = $("input[name='email']").val();
            if (!email) {
                alert("请先输入邮箱!");
                return;
            }
            $this.off('click');
            //auth/captcha?email=3168894598@qq.com

            $.ajax('/auth/captcha?email='+email, {
                method: 'get',
                success:function(result){
                    if(result['code']==200){
                        alert("验证码发送成功!");
                    }else{
                        alert(result['message']);
                    }
                },
                fail:function(error){
                    console.log(error)
                }
            })

            let countdown = 6;
            let timer = setInterval(function () {
                if (countdown <= 0) {
                    $this.text("获取验证码")
                    clearInterval(timer)
                    captchaBtnClick();
                } else {
                    $this.text(countdown + "s")
                    countdown--;
                }

            }, 1000)
        })
    }
    captchaBtnClick();
})