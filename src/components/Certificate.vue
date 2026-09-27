<template>
	<svg class="wave-top" viewBox="0 0 1773 109" preserveAspectRatio="none" aria-hidden="true"><path d="M0 79C35 52 132-2 244 0c140 2 268 79 400 79S808 38 931 43c98 3 147 43 200 43 82 0 118-41 197-41s166 41 263 41c69 0 114-2 182-17v40H0V79Z" fill="#EEEEE2" /></svg>
	<section class="certificates" id="about">
		<div class="header">
			<span class="branch left">
				<img src="../assets/image/flowers_services.png" alt="flowers" />
			</span>
			<div>
				<h1>Освіта та кваліфікація</h1>
				<p>Постійно навчаюся та вдосконалюю свої знання</p>
			</div>
			<span class="branch right">
				<img src="../assets/image/flowers_services.png" alt="flowers" />
			</span>
		</div>
			
		<div class="content">
			<div class="main">
				<div class="carousel-stage">
					<img class="carousel-flower flower-left" src="../assets/image/hero_flower2_cut.png" alt="" aria-hidden="true" />
					<img class="carousel-flower flower-right" src="../assets/image/flower_services2.svg" alt=""/>
					<div class="carousel" aria-label="Сертифікати">
						<div class="viewport">
							<div class="track" :style="{ transform: `translateX(-${slide * 100}%)` }">
								<figure v-for="item in certificates" :key="item.title">
									<img :src="item.image" :alt="item.title" />
								</figure>
							</div>
						</div>
						<button class="arrow previous" aria-label="Попередній" @click="previous">
							<svg width="20" height="17" viewBox="0 0 20 17" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M18.1 9.20034C18.7075 9.20034 19.2 8.70786 19.2 8.10034C19.2 7.49283 18.7075 7.00034 18.1 7.00034V8.10034V9.20034ZM0.322159 7.32252C-0.107418 7.7521 -0.107418 8.44858 0.322159 8.87816L7.32252 15.8785C7.75209 16.3081 8.44857 16.3081 8.87815 15.8785C9.30773 15.4489 9.30773 14.7525 8.87815 14.3229L2.65561 8.10034L8.87815 1.8778C9.30773 1.44823 9.30773 0.751744 8.87815 0.322167C8.44857 -0.107409 7.75209 -0.107409 7.32252 0.322167L0.322159 7.32252ZM18.1 8.10034V7.00034L1.09998 7.00034V8.10034V9.20034L18.1 9.20034V8.10034Z" fill="#EEEEE2"/>
							</svg>
						</button>
						<button class="arrow next" aria-label="Наступний" @click="next">
							<svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M1 6.36401C0.447715 6.36401 0 6.81173 0 7.36401C0 7.9163 0.447715 8.36401 1 8.36401V7.36401V6.36401ZM15.7071 8.07112C16.0976 7.6806 16.0976 7.04743 15.7071 6.65691L9.34315 0.292946C8.95262 -0.0975785 8.31946 -0.0975785 7.92893 0.292946C7.53841 0.68347 7.53841 1.31664 7.92893 1.70716L13.5858 7.36401L7.92893 13.0209C7.53841 13.4114 7.53841 14.0446 7.92893 14.4351C8.31946 14.8256 8.95262 14.8256 9.34315 14.4351L15.7071 8.07112ZM1 7.36401V8.36401H15V7.36401V6.36401H1V7.36401Z" fill="white"/>
							</svg>
						</button>
						<div class="dots">
							<button v-for="(_, index) in certificates" :key="index" :class="{ selected: slide === index }" :aria-label="`Слайд ${index + 1}`" @click="slide = index" />
						</div>
					</div>
				</div>
				<div class="quote">
					<p>“Кожен організм унікальний, і для якісної роботи з ним потрібні
					глибокі знання. Моя професійна освіта та регулярне підвищення 
					кваліфікації дозволяють знаходити індивідуальні рішення для 
					кожного клієнта. Усі мої методики базуються на доказовій 
					медицині та підтверджені відповідними дипломами”</p>
					<p class="signature">Валерія Когут</p>
				</div>
			</div>
		</div>
	</section>

	<svg class="wave-bottom" viewBox="0 0 1773 57" preserveAspectRatio="none" aria-hidden="true"><path d="M1773 48c-167 26-314-16-314-16-212-31-345 12-461 12-194 0-231-44-417-44C82 56 0 32 0 32V0h1773v48Z" fill="#EEEEE2" /></svg>
</template>

<script setup>
import { ref } from 'vue'
import cert1 from '@/assets/image/certificate/IMG_6394.JPG'
import cert2 from '@/assets/image/certificate/IMG_6395.JPG'
import cert3 from '@/assets/image/certificate/IMG_6396.JPG'
import cert4 from '@/assets/image/certificate/IMG_6397.JPG'
import cert5 from '@/assets/image/certificate/IMG_6398.JPG'
import cert6 from '@/assets/image/certificate/IMG_6399.JPG'

const slide = ref(0)

const certificates = [
	{ title: 'Сертифікат 1', image: cert1 },
	{ title: 'Сертифікат 2', image: cert2 },
	{ title: 'Сертифікат 3', image: cert3 },
	{ title: 'Сертифікат 4', image: cert4 },
	{ title: 'Сертифікат 5', image: cert5 },
	{ title: 'Сертифікат 6', image: cert6 }
]
const next = () => { slide.value = (slide.value + 1) % certificates.length }
const previous = () => { slide.value = (slide.value + certificates.length - 1) % certificates.length }
</script>

<style scoped>

.certificates{
	position:relative;
	min-height:auto;
	overflow:hidden;
	background:#EEEEE2;
	color:#59463c;
	padding:3% 4% 5% 7%;
}

.content{
	display:flex;
	justify-content: space-between;
	position:relative;
	z-index:1;
	margin:0;
}

.header{
	display:flex;
	align-items:start;
	justify-content:center;
	text-align:center
}

h1{
	margin:0;
	padding: 0;
	font-family: 'Kudry';
	font-style: normal;
	font-weight: 400;
	font-size: 64px;
	line-height: 99%;
	display: flex;
	align-items: flex-end;
	text-align: center;
	color: #47352B;
	mix-blend-mode: normal;
}

.header p{
	margin:14px 0 0;
	font-family: 'Montserrat';
	font-style: normal;
	font-weight: 400;
	font-size: 20px;
	line-height: 24px;
	text-align: center;
	letter-spacing: -0.02em;

	color: #47352B;
}

.branch img{
	margin:0;
	width:50%;
}

.left{
	margin-top:0.8%;
	margin-right:-2%;
	padding: 0;
	transform:scaleX(-1) rotate(-5deg);
}

.right{
	margin-top:1%;
	margin-left:-2%;
	padding: 0;
	transform:scaleX(1) rotate(-5deg);
}

.main{
	display:grid;
	grid-template-columns:40% 1fr;
	gap:8%;
	margin-top:2%;
}

.carousel-stage{
	position:relative;
	width:100%;
}

.carousel{
	position:relative;
	width:80%;
	height: auto;
	box-shadow: 1px 1px 30px rgb(128, 127, 127);
	z-index:1;
	margin-top:5%;
}

.carousel-flower{
	position:absolute;
	z-index:0;
	pointer-events:none;
}

.flower-left {
	width: 65%;
	left: -15%;
	top: -150px;
	transform: scaleX(-1);
}

.flower-right {
	width: 70%;
	right: -15%;
	bottom: 5px; 
}

.viewport{
	overflow:hidden;
	background:#fff;
	box-shadow:0 12px 22px #665d4935
}


.track{
	display:grid;
	grid-auto-flow:column;
	grid-auto-columns:100%;
	transition:transform .45s ease
}

figure{
	aspect-ratio:1.48;
	margin:0
}

figure img{
	display:block;
	width:100%;
	height:100%;
	object-fit:cover
}

.arrow{
	position:absolute;
	top:46%;
	width:38px;
	height:38px;
	border:0;
	border-radius:50%;
	background:#858a7c;
	color:#fff;
	font-size:32px;
	line-height:20px;
	cursor:pointer
}
.arrow {
  background-color: #797A6E;
  color: #fff;
  border: none;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 16px;
  transition: background-color 0.3s ease, transform 0.2s ease;
}

.arrow:hover {
  background-color: #797A6E;
  transform: scale(1.1);
}

.arrow.previous:hover {
  transform: scale(1.1);
}

.arrow.next:hover {
  transform: scale(1.1);
}
.previous{
	left:10px
}

.next{
	right:10px
}

.dots{
	position: absolute; 
    bottom: 10px; 
    width: 100%; 
    z-index: 2; 
    
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 8px;
    margin: 0;
}

.dots button{
	width:7px;
	height:7px;
	padding:0;
	border:0;
	border-radius:50%;
	background:#bbbcb0;
	cursor:pointer
}

.dots .selected{
	background:#858a7c;
	width:10px;
	height: 10px;;
}

.quote{
	width:100%;
	max-width: 650px; 
	font-family: 'Gabriola';
	font-style: normal;
	font-weight: 400;
	font-size: clamp(26px, 2.5vw, 35px);
	line-height: 138%;
	text-align: right;
	letter-spacing: 0.02em;
	margin-top:5%;
	padding-left: 15%;
}

.quote p{
	margin:0;
}

.signature {
	margin-top: 15px !important;
}


.wave-top {
    display: block;
    width: 100%;
    height: auto;
    margin-top: -50px; 
    
    margin-bottom: -2px; 
    
    position: relative;
    z-index:3;
}

.wave-bottom {
    display: block;
    width: 100%;
    height: auto;
    margin-top: -2px;
}

@media(max-width:1024px){
	.certificates{
		padding:80px 6%
	}
	
	.branch{
		width:20%;
		margin:0;
	}
	
	.main{
		display:block;
		justify-content: center;
		margin-top:40px
	}

	.carousel-stage{
		width:88%;
		margin:0 auto;
	}

	.carousel{
		width:60%;
		margin:5% auto 0;
	}

	.flower-left{
		width:54%;
		left:-45%;
		top:-15%;
		transform:scale(1);
	}

	.flower-right{
		width:40%;
		right:-25%;
		bottom:4%;
		transform: scaleY(-1)rotate(-180deg);
	}
	
	.quote{
		display:none
	}
	
	.header{
		display:flex;
		align-items:start;
		justify-content:center;
		text-align:center;
		width:100%;
	}

	.header h1 {
		font-size: 44px; 
		white-space: nowrap;
	}
}

@media(max-width:480px){
	.header h1 {
		font-size: 40px;
	}

	.carousel-stage{
		width:100%;
		margin:0;
	}

	.carousel{
		width:80%;
		margin:5% auto 0;
	}

	.flower-left{
		width:80%;
		left:-50%;
		top:-30%;
		transform:scale(1);
	}

	.flower-right{
		width:80%;
		right:-47%;
		bottom:-50%;
		transform: scaleY(-1)rotate(-190deg);
	}

}
</style>
