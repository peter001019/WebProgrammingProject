document.getElementById('MyPage').addEventListener('click', function(){
    window.location.href = "MyPage.html";
});

let isLoggedIn = false;

document.getElementById('loginButton').addEventListener('click', function(){
    if(isLoggedIn){
        this.textContent = "로그인";
        isLoggedIn = false;
    }

    else{
        location.href = '로그인.html';
        isLoggedIn = true;
    }
});