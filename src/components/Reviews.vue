<template>
    <svg class="wave-top" viewBox="0 0 1506 93" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M0 79.1781C35.9639 52.1528 136.787 -1.51168 252.369 0.0326254C396.846 1.96309 528.63 79.178 664.895 79.1781C801.159 79.1781 834.012 38.158 960.943 42.5014C1062.49 45.9761 1113.26 85.4514 1167.77 85.4516C1251.96 85.4516 1289.61 44.8617 1371.37 44.8617C1453.13 44.8617 1462.27 49.2034 1506 60.7807V93.0014H0V79.1781Z" fill="#EEEEE2"/>
    </svg>
    
    <section class="reviews" id="reviews">
        <div class="header">
            <span class="branch left">
                <img src="../assets/image/flowers_services.png" alt="flowers" />
            </span>
            <div>
                <h1>Відгуки</h1>
            </div>
            <span class="branch right">
                <img src="../assets/image/flowers_services.png" alt="flowers" />
            </span>
        </div>

        <div class="content">

            <div class="text-section">
                <h2>Що кажуть мої клієнти</h2>
                <p>Читайте, як мої клієнти змогли змінити свої<br>харчові звички, відчути легкість у тілі та<br>отримати підтримку на кожному кроці</p>
            </div>

            <div class="carousel-section">
                <div class="carousel">
                    <div class="viewport">
                        <div class="track" :style="{ width: `${reviews.length * 100}%`, transform: `translateX(-${slide * (100 / reviews.length)}%)` }">
                            <figure v-for="item in reviews" :key="item.id" :style="{ flex: `0 0 ${100 / reviews.length}%` }">
                                <img :src="item.image" alt="Відгук клієнта" />
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
                        <button v-for="(_, index) in reviews" :key="index" :class="{ selected: slide === index }" @click="slide = index" />
                    </div>
                </div>
            </div>

            <div class="empty-section"></div>
            
            <!-- Ветка яблок справа -->
            <img class="apples-branch" src="../assets/image/flower3.png" alt="apples branch" aria-hidden="true" />
            <!-- Ветка сверху слева (если нужна) -->
            <img class="leaves-top-left" src="../assets/image/flower_services2.svg" alt="leaves" aria-hidden="true" />
        </div>
    </section>

    <svg class="wave-bottom" viewBox="0 0 1506 60" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M1506 36.2754C1505.96 36.2698 1368.73 16.7676 1149.89 47.4111C931.029 78.059 800.665 15.9404 705.938 15.9404C505.66 15.9404 466.965 60 275.577 60C84.1897 60 0 36.2754 0 36.2754V0H1506V36.2754Z" fill="#EEEEE2"/>
    </svg>
</template>

<script setup>
import { ref } from 'vue'

import review1 from '@/assets/image/reviews/R1.jpg' 
import review2 from '@/assets/image/reviews/R2.jpg'
import review3 from '@/assets/image/reviews/R3.jpg'
import review4 from '@/assets/image/reviews/R4.jpg'
import review5 from '@/assets/image/reviews/R5.jpg'

const slide = ref(0)

const reviews = [
    { id: 1, image: review1 },
    { id: 2, image: review2 },
    { id: 3, image: review3 },
    { id: 4, image: review4 },
    { id: 5, image: review5 }
]

const next = () => { slide.value = (slide.value + 1) % reviews.length }
const previous = () => { slide.value = (slide.value + reviews.length - 1) % reviews.length }


</script>

<style scoped>
.reviews {
    position: relative;
    min-height: auto;
    background: #EEEEE2;
    color: #59463c;
    margin: 0;
    padding: 1% 0 3% 0; 
}

.header {
    display: flex;
    align-items: start;
    justify-content: center;
    text-align: center;
    position: relative;
    z-index: 2;
}

h1 {
    margin: 0;
    font-family: 'Kudry', serif;
    font-weight: 400;
    font-size: 64px;
    line-height: 99%;
    color: #47352B;
}

.branch img {
    margin: 0;
    width: 50%;
}

.left {
    margin-top: 0.8%;
    margin-right: -2%;
    transform: scaleX(-1) rotate(-5deg);
}

.right {
    margin-top: 1%;
    margin-left: -2%;
    transform: scaleX(1) rotate(-5deg);
}

.content {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    align-items: center;
    margin: 2% auto 0;
    padding: 0 2%; 
    position: relative;
    z-index: 2;
    gap: 40px;
}

.text-section {
    width: 100%;
    margin: 0;
}

.text-section h2 {
    font-family: 'Montserrat';
    font-style: normal;
    font-weight: 600;
    font-size: 36px;
    line-height: 48px;
    letter-spacing: -0.04em;
    color: #797A6E;
    text-align: left;
    margin-bottom: 20px;
}

.text-section p {
    font-family: 'Montserrat';
    font-style: normal;
    font-weight: 400;
    font-size: clamp(15px, 2.5vw, 20px);
    line-height: 30px;
    text-align: left;
    letter-spacing: -0.04em;
    color: #47352B;
    margin: 0;
}

.carousel-section {
    width: 100%;
    display: flex;
    justify-content: center;
    padding: 0;
}

.empty-section {
    width: 100%;
}

.carousel {
    position: relative;
    width: 100%; 
    border-radius: 20px;
    background: #fff;
    padding: 10px;
    box-shadow: 1px 1px 20px 1px #797A6E;
}

.viewport {
    overflow: hidden;
    border-radius: 15px;
}

.track {
    display: flex;
    transition: transform 0.45s ease;
}

figure {
    flex: 0 0 100%;
    margin: 0;
}

figure img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit:contain;
    border-radius: 10px;
}

.arrow {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    width: 40px;
    height: 40px;
    background-color: #797A6E;
    border: none;
    border-radius: 50%;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: background-color 0.3s ease, transform 0.2s ease;
    z-index: 5;
}

.arrow:hover {
    transform: translateY(-50%) scale(1.1);
}

.previous { left: -50px; }
.next { right: -50px; }

.dots {
    position: absolute;
    bottom: -30px; 
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 20px;
    margin: 0;
}

.dots button {
    width: 10px;
    height: 10px;
    padding: 0;
    border: 0;
    border-radius: 50%;
    background: #bbbcb0;
    cursor: pointer;
    transition: 0.3s;
}

.dots .selected {
    background: #858a7c;
}

.apples-branch {
    position: absolute;
    right: 0%;
    top: -100%;
    width: 25%;
    z-index: 1;
    pointer-events: none;
    transform: rotateY(-180deg);
}

.leaves-top-left {
    position: absolute;
    left: -5%;
    top: -150%;
    width: 20%;
    z-index: -1;
    pointer-events: none;
    transform: rotate(10deg);
}

.wave-top {
    display: block;
    width: 100%;
    height: auto;
    margin-top: -50px;
    margin-bottom: -2px;
    position: relative;
    z-index: 0;
}

.wave-bottom {
    display: block;
    width: 100%;
    height: auto;
    margin-top: -2px;
}

@media (max-width: 1024px) {
    .header {
        margin-top: 2%;
        margin-bottom: -50px;
    }

    .branch {
        display: none;
    }

    .content {
        display: flex;
        flex-direction: column; 
        align-items: center;
        gap: 30px; 
        margin-top: 8%;
    }
    
    .empty-section {
        display: none;
    }
    
    .text-section, .carousel-section {
        display: contents; 
    }

    .text-section h2 {
        order: 1;
        font-size: 32px;
        text-align: center;
        margin: 0;
    }

    .carousel {
        order: 2;
        width: 55%;
        margin: 0;
    }

    .text-section p {
        display: block; 
        order: 3;
        text-align: center; 
        padding: 2%;
    }
    
    .apples-branch {
        width: 30%;
        z-index: -1;
        top: -40%;
        right: 70%;
        transform: rotateX(180deg);
    }

    .leaves-top-left {
        width: 25%;
        left: 80%;
        top: 15%;
        z-index: -1;
        transform: rotate(-60deg);
    }
}
@media (max-width: 480px) {
    h1 {
        font-size: 40px;
    }

    .header {
        margin-top: 5%;
    }

    .text-section{
        margin:0;
    }
    
    .text-section h2 {
        font-size: 20px;
        margin-top:5%;
        margin-bottom:0;
    }

    .text-section p {
        margin-top:2%;
        line-height: 25px;
    }
    
    .carousel {
        width: 70%;
    }

    .arrow {
        width: 30px;
        height: 30px;
    }
    
    .apples-branch, .leaves-top-left{
        display: none; 
    }
}
</style>