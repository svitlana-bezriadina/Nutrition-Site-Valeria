<script setup lang="ts">
import FoodCarusel from './FoodCarusel.vue';

</script>

<template>
    <div class="container">
        <div class="content">
            <h1>Збалансоване <br> харчування — ключ до здоровья</h1>
            <div class="list">
                <span>
                    <img src="../assets/image/flowers_services.png" alt="flower">
                    Я навчаю, як складати правильні тарілки так, щоб ви <br>
                    отримували всі необхідні нутрієнти, відчували ситість і <br>
                    енергію протягом дня
                </span>
                <span>                    
                    <img src="../assets/image/flowers_services.png" alt="flower">
                    Разом ми працюємо над тим, щоб втрачати вагу без строгих <br>
                    дієт, будувати здорові харчові звички та зберігати результат <br>
                    назавжди
                </span>
            </div>
        </div>
        <div class="carusel">
            <FoodCarusel/>
        </div>
 
    </div>
</template>

<style scoped>
.container{
    display:flex;
    flex-direction: column;
    justify-content: center;
    width: 100%; 
    max-width: 100%;
    overflow: hidden; 
}

.content{
    display:flex;
    flex-direction: row;
    justify-content:center;
    gap:100px;
    margin-top:1%;
}

h1{
    font-family: 'Kudry';
    font-style: normal;
    font-weight: 400;
    font-size: clamp(36px, 4vw, 64px);
    line-height: 1.1;
    margin-left:5%;
    color: #47352B;
    flex-wrap: wrap;
}

.list{
    display:flex;
    flex-direction: column;
    align-items: stretch;
    justify-content: center;
    padding-left:5%;
    margin: 0;
}

span{
    font-family: 'Montserrat';
    font-style: normal;
    font-weight: 400;
    font-size: 20px;
    line-height: 30px;
    display: flex;
    align-items: center;
    letter-spacing: -0.04em;
    margin:0 0 5% 0;
    color: #47352B;
}

span img{
    transform: rotate(-95deg);
    width: 13%;
}


@media (max-width: 1440px) {
    .content{
        display:flex;
        flex-direction: row;
        justify-content:center;
        gap:100px;
        margin:1% 5%;
    }

    h1 {
        text-align: left;
        font-size: clamp(36px, 4vw, 48px);
    }

    h1 br,
    span br {
        display: none;
    }

    .list {
        padding-left: 0;
        margin: 0;
        gap: 25px;
    }

    span {
        align-items: center; 
        font-size: 18px;
        line-height: 1.4;
        margin: 0;
    }

    span img {
        width: 40px;
        height: auto;
        margin-right: 20px;
        flex-shrink: 0;
    }
}

@media (max-width: 1024px) {
    .content {
        flex-direction: column; 
        align-items: flex-start; 
        width: 85%;
        margin: 40px auto 0; 
        gap: 40px; 
    }

    h1 {
        text-align: left;
        font-size: clamp(36px, 4.5vw, 48px); 
    }

    h1 br,
    span br {
        display: none;
    }

    .list {
        padding-left: 0;
        margin: 0;
        gap: 25px;
    }

    span {
        align-items: center;
        font-size: 18px; 
        line-height: 1.4;
        margin: 0;
    }

    span img {
        width: 40px; 
        height: auto;
        margin-right: 20px;
        flex-shrink: 0;
    }
}

@media (max-width: 480px) {
    .content {
        width: 90%;
        gap: 30px;
    }

    h1 {
        text-align: center;
        font-size: 36px;
    }

    span {
        font-size: 16px;
        align-items: flex-start;
    }

    span img {
        width: 25%;
        margin-right: -1%;
        margin-top: 19px;
    }
}
</style>