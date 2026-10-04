<template>
	<section class="services" id="services">
		<div class="ornament">
            <img src="@/assets/image/flower3.png" alt="flowers" />
        </div>
		<div class="intro">
			<h1>Мої послуги</h1>
			<span class="underline"></span>
			<p class="subtitle">Що ви отримаєте, працюючи зі мною</p>
			<p>Я допомагаю не просто схуднути чи скласти раціон — а знайти<br> баланс з їжею, позбутися дієтичних гойдалок і відчути легкість у тілі<br> та спокій у голові</p>
			<p>Ви завжди матимете підтримку, чіткі кроки та зрозумілий план дій</p>
		</div>
		<div class="photo"><img src="@/assets/image/valeria3.png" alt="Nutrition"></div>
		<div class="separator">
            <span>
                <img src="@/assets/image/flower_services2.svg" alt="flowers" />
            </span>
        </div>
		<div class="services-list">
			<article v-for="item in items" :key="item.title">
				<h2>{{ item.title }}</h2>
				<div class="leaves">
                    <img src="../assets/image/flowers_services.png" alt="flowers" />
                </div>
				<p v-for="line in item.lines" :key="line">{{ line }}</p>
			</article>
		</div>
	</section>
</template>

<script setup>
const items = [
	{ title: 'Персональний супровід', lines: ['Харчування, звички та підтримка - без обмежень'] },
	{ title: 'Супровід + сесії', lines: ['Глибока робота з переїданнями, емоціями та відносинами з їжею'] },
	{ title: 'Індивідуальні сесії', lines: ['Детальний аналіз запиту та підтримка, яка допоможе побачити ситуацію по іншому'] },
	{ title: 'Безкоштовка діагностика', lines: ['Це коротка зустріч, на якій ми роздеремо вашу ситуацію, визначимо основий запит та зрозумаємо, який формат роботи буде для вас найбільш підходящим'] }
]
</script>

<style scoped>
.services{
    position:relative;
    overflow:hidden;
    padding:50px 22px 70px;
    color:#47352B;
    background:#fbf8f1;
    text-align:center;
}



.intro,
.separator,
.services-list,
.photo{
    position:relative;
    z-index:1;
}

.intro h1{
    margin:0;
    font-family: 'Kudry';
    font-style: normal;
    font-weight: 400;
    font-size: 64px;
    line-height: 119.44%;
}

.underline{
    display:block;
    width:250px;
    margin:8px auto;
    background:#9b9d81;
    height:2px;
}
    
.intro p{
    margin:24px auto 0;
    font-family: 'Montserrat';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 30px;
    text-align: center;
    letter-spacing: -0.04em;
    color: #47352B;
}

.intro .subtitle{
    margin-top:10px;
    font-family: 'Montserrat';
    font-style: normal;
    font-weight: 500;
    font-size: 18px;
    line-height: 24px;
    text-align: center;
    color: #8B9175;
}

.photo{
    position:absolute;
    top:30px;
    right:5%;
    width:20%;
    padding:8px;
}

.photo img{
    width:100%;
    height: auto;
    display: block;
}

.ornament img{
    position:absolute;
    z-index:0;
    top:3%;
    left:0;
    width:25%;
}


.separator{
    height:45px;
    margin-top:150px;
    border-top: 2.5px solid #9da082
}
    
.separator span {
    position: relative;
    top: -170%; 
    
    padding: 0 70px; 
    
    background: #fbf8f1;
    display: inline-block;
}

.separator span img {
    height: 150px;
    transform: rotate(-15deg);
    width: auto;
    vertical-align: middle;
}

.services-list{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    margin-top:3%;
}

article{
    min-height:140px;
    padding:0 20px;
    border-right:2.5px solid #a4a58a
}

article:last-child{
    border:0
}

h2{
    white-space:pre-line;
    margin:0;
    font-family: 'Kudry';
    font-style: normal;
    font-weight: 400;
    font-size: 29px;
    line-height: 119.44%;
}

.leaves img{
    width:35%;
    margin:8px 0;
    color:#a4a58a;
    font-size:30px
}

article p{
    margin:3px 0;
    font-family: 'Montserrat';
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    text-align: center;
    letter-spacing: -4%;
}

@media(max-width:1024px){
    .services {
        padding: 50px 5% 70px; 
    }

    .intro {
        width: 55%; 
        margin-left: 2%;
    }

    .intro h1,
    .intro .subtitle {
        justify-content: center;
        text-align: center;
    }
    
    .intro p{
        text-align:left;
    }

    .underline {
        width:350px;
    } 

    .intro br {
        display: none;
    }

    .photo {
        top: 10%;
        right: 0%; 
        width: 35%;
    }

    .separator span {
        position: relative;
        top: -120%; 
        
        padding: 0 70px; 
        
        background: #fbf8f1;
        display: inline-block;
    }

    .separator span img {
        height: 100px;
        transform: rotate(-15deg);
        width: auto;
        vertical-align: middle;
    }
        
    .ornament img {
        position: absolute;
        z-index: 0;
        top: 5%;
        left: 50%;
        width: 25%;
        transform: rotate(203deg);
        opacity: 50%;
    }

    .services-list{
        grid-template-columns:repeat(2,1fr);
        gap:55px 15px
    }

    article:nth-child(2){
        border:0
    }

}

@media (max-width: 680px) {
        .intro {
        width: 100%;
        margin: 0;
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .intro h1 {
        font-size: 40px;
        text-align: center;
    }

    .underline {
        width: 150px;
        margin: 8px auto;
    }

    .intro .subtitle {
        font-size: 16px;
        text-align: center;
    }

    .intro p {
        font-size: 16px;
        text-align: center;
        line-height: 1.5;
        padding: 0 10px;
    }

    .photo {
        display: flex;
        justify-content: center;
        position: relative;
        top: 0;
        right: 0;
        width: 100%;
        margin-top:20px;
        padding: 0;
    }

    .photo img {
        width: 50%;
        height: 30%;
    }

    .separator {
        margin-top: 40px;
    }

}

@media (max-width: 480px) {
    .services {
        padding: 40px 15px 50px;
    }

    .intro {
        width: 100%;
        margin: 0;
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .intro h1 {
        font-size: 40px;
        text-align: center;
    }

    .underline {
        width: 150px;
        margin: 8px auto;
    }

    .intro .subtitle {
        font-size: 16px;
        text-align: center;
    }

    .intro p {
        font-size: 16px;
        text-align: center;
        line-height: 1.5;
        padding: 0 10px;
    }

    .photo {
        display: flex;
        justify-content: center;
        position: relative;
        top: 0;
        right: 0;
        width: 100%;
        padding: 0;
    }

    .photo img {
        width: 50%;
        height: 30%;
    }

    .separator {
        margin-top: 40px;
    }

    .separator span {
        top: -90%;
        padding: 0 30px;
    }

    .separator span img {
        height: 70px;
    }

    .ornament img {
       display: none;
    }

    .services-list {
        grid-template-columns: 1fr;
        gap: 40px 0;
        margin-top: 10px;
    }

    article {
        border-right: none !important;
        padding: 0 10px 40px;
        position: relative;
    }

    article:not(:last-child)::after {
        content: "";
        position: absolute;
        bottom: 0;
        left: 50%;
        transform: translateX(-50%);
        width: 70%;
        height: 2px;
        background-color: #9da082;
    }

    article:last-child {
        padding-bottom: 0;
    }

    h2 {
        font-size: 26px; 
    }

    article p {
        font-size: 15px;
        line-height: 1.4;
    }
}
</style>
