<script setup lang="ts">
import Table from './Table.vue'
</script>

<template>
  <section class="hero">
    <div class="container">
        <div class="image">
            <img src="@/assets/image/valeria2.jpg" alt="Hero Image" />
        </div>
        <div class="content">
            <h2>Здорові стосунки з їжею 
            — без дієт та крайнощів</h2>
            <p>
            Я пройшла власний шлях від розладів харчової
            поведінки до відновлення і тепер допомагаю  іншим
            знайти баланс з їжею.</p>
            <p class="hidden">Навчаю будувати здорові стосунки з харчуванням  та
            досягати результатів без виснажливих обмежень</p>
            
        </div>
    </div>
    <img  class="line-image" src="@/assets/image/hero_flower.png" alt="Line Image" />
  </section>    

  <svg class="wave-top" viewBox="0 0 1773 109" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M0 79.2182C34.8373 52.1793 132.502 -1.51243 244.463 0.0326412C384.414 1.96399 512.07 79.2181 644.065 79.2182C776.061 79.2182 807.885 38.1764 930.84 42.5219C1029.2 45.9984 1078.39 85.4946 1131.18 85.4946C1212.74 85.4945 1249.21 44.8842 1328.41 44.8842C1407.61 44.8842 1494.79 85.4946 1591.03 85.4946C1659.89 85.4946 1704.9 83.399 1773 68.8266V109.001H0V79.2182Z" fill="#EEEEE2"/>
  </svg>

  <section class="hero2">
    <div class="container2">
        <h2>Коли потрібна <br>допомога нутриціолога?</h2>
        <div class="content2">  
            <Table/>
            <p>Впізнали себе? Давайте знайдемо причину разом</p>
            <div class="button-wrapper">
                <a href="#contact" class="btn-consultation">
                ЗАПИСАТИСЬ НА КОНСУЛЬТАЦІЮ
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M4 12H20M20 12L14 6M20 12L14 18" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </a>
            </div>
        </div>
        <img  class="line-image-left" src="@/assets/image/hero_flower2.png" alt="Line Image Left" aria-hidden="true"/>
    </div>
  </section>

  <svg class="wave-bottom" viewBox="0 0 1773 57" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M1773 48.5117C1606.39 74.5541 1458.82 32.3389 1458.82 32.3389C1458.56 32.3011 1325.67 12.8469 1113.87 43.4805C901.863 74.1438 775.582 11.9932 683.822 11.9932C489.82 11.9932 452.336 56.0752 266.944 56.0752C81.5524 56.0752 0 32.3389 0 32.3389V0H1773V48.5117Z" fill="#EEEEE2"/>
  </svg>

</template>

<style scoped>
.hero {
    position: relative; 
    display: flex;
    flex-direction: row;
    justify-content:space-between;
    align-items: center;
    overflow: hidden;
    width: auto;
    padding-left: 5%;
    margin-top:5%;
    text-align: center;
}

.container {
    display: flex;
    height: auto;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    z-index: 5;
    position: relative;
    margin-top:3%;
    background-color: #eeeee200;
}

.content {
    display: flex;
    flex-direction: column;
    align-items: start;
    justify-content:flex-start;
    width: 100%;
    padding-right: 30%;
    margin-top:0;
    margin-left: 8%;
}

h2{
    font-family: 'Kudry', sans-serif;
    font-style: normal;
    font-weight: 400;
    font-size: clamp(32px, 5vw, 60px);
    text-align: left;
    color: #47352B;
    margin: 0;
    line-height: 1.2;
    margin: 0 0 3% 0;
}

.content p {
    font-family: 'Montserrat', sans-serif;
    font-style: normal;
    font-weight: 400;
    font-size: clamp(20px, 2.5vw, 24px);
    line-height: 1.5;
    text-align: left;
    color: #47352B;
    margin: 0;
}

.image {
    width:55%;
    height:auto;
}

.image img {
    max-width: 100%;
    border: 4px solid #8B8F7D;
    border-radius: 250px 250px 0 0 ;
}

.line-image {
    position: absolute;
    top: 75%;
    transform: translateY(-50%);
    right: -2%;
    width: 35%;
    height: auto;
    
    z-index: 1; 
    
    pointer-events: none;
}

.hero2 {
    position: relative; 
    overflow: hidden;
    width: auto;
    margin-top:0;
    z-index: 1;
    text-align: center;
    background-color: #EEEEE2;
}

.line-image-left {
  position: absolute;
  bottom: -10%;
    opacity: 55%;
  left: -50%;
    width: 47%;
    max-width: 1200px;
    z-index: 2;
    pointer-events: none;
  transform: translate(-10%, 15%) rotate(10deg); 
}

.container2 {
    width:70%;
    margin-left:25%; 
    padding: 20px 5px;
    position: relative;
}

.container2 h2 {
    font-family: 'Kudry', sans-serif;
    font-style: normal;
    font-weight: 400;
    font-size: 55px;
    text-align: center;
    color: #47352B;
    margin-bottom: 40px;
    line-height: 1.2;
}

.content2 p {
    font-family: 'Kudry', sans-serif;
    font-style: normal;
    font-weight: 400;
    font-size: 26px;
    line-height: 1.5;
    text-align: center;
    color: #47352B;
    margin-bottom:1%;
}

.button-wrapper {
  display: flex;
  justify-content: center;
}

.btn-consultation {
  display: inline-flex;
  align-items: center;
  gap: 15px;
  padding: 16px 45px;
  
  background-color: transparent;
  border: 3px solid #8B9175;
  color: #8B9175;
  border-radius: 50px;
  cursor: pointer;
  
  font-family: 'Montserrat', sans-serif;
  font-size: 20px;
  font-weight: 500;
  font-style: normal;
  letter-spacing: 0.05em;
  text-decoration: none;
  
  position: relative; 
  overflow: hidden; 
  z-index: 1; 
  transition: color 0.4s ease, border-color 0.4s ease;
}

.btn-consultation::before {
  content: "";
  position: absolute;
  bottom: 0;
  left: 50%;
  
  width: 700px; 
  height: 700px;
  background-color: #8B9175;
    border-radius: 50%;
  
  z-index: -1; 
  
  transform: translate(-50%, 50%) scale(0);
  
  transition: transform 0.5s ease-out; 
}

.btn-consultation:hover {
  color: #FFFBF3;
}

.btn-consultation:hover::before {
  transform: translate(-50%, 50%) scale(1);
}

.btn-consultation svg {
  position: relative;
  z-index: 2;
  transition: transform 0.3s ease;
}

.btn-consultation:hover svg {
  transform: translateX(5px);
}

.wave-top {
    display: block;
    width: 100%;
    height: auto;
    
    margin-top: -90px; 
    
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

@media(max-width:1420px) {
    .hero {
        margin-top: 10%;
    }

    .container {
        display: flex;
        flex-direction: row;
        align-items: start;
        justify-content: center;
        z-index: 5;
        position: relative;
        margin-top:3%;
        background-color: #eeeee200;
    }
    .content{
        display: flex;
        flex-direction: column;
        align-items: start;
        justify-content:flex-start;
        width: 70%;
        margin-top:2%;
        margin-bottom: 2%;
        margin-left: 4%;
    }

    .image {
        width:45%;
        aspect-ratio: 2.5 / 4; 
    }

    .image img {
        width:100%;
        height: 100%;
        border: 4px solid #8B8F7D;
        border-radius: 250px 250px 0 0 ;
    }

    .line-image {
        position: absolute;
        top: 0; 
        transform: rotate(-50deg);
        right: -20%;
        width: 40%;
        opacity: 60%;
        height: auto;
        z-index: 1;
        pointer-events: none;
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

    .line-image-left {
        display: none;
    }

    .container2 {
        display: flex;
        flex-direction:column;
        align-items: center;
        justify-content: center;
        width:100%;
        margin:5% 0 0 0;
        position: relative;
    }

    .container2 h2 {
        font-family: 'Kudry', sans-serif;
        font-style: normal;
        font-weight: 400;
        font-size: 48px;
        text-align: center;
        color: #47352B;
        margin-bottom: 40px;
        line-height: 1.2;
    }

    .hidden{
        display: none;
    }

    
}

@media(max-width: 480px) {
    .hero {
        margin-top: 15%;
        padding-left: 0;
    }

    .container {
        flex-wrap: wrap;
        justify-content: space-between;
        align-items: center;
        padding: 0 5% 10% 5%;
    }

    .content {
        display: contents;
    }

    .image {
        width: 35%;
        margin-left: 3%;
    }

    .image img {
        width:100%;
        height: 95%;
        border: 4px solid #8B8F7D;
        border-radius: 250px 250px 0 0 ;
    }

    h2 {
        width: 53%;
        font-size: 32px;
        text-align: left;
        margin: 0;
    }

    .content p {
        width: 100%;
        text-align: center;
        font-size: 20px;
        line-height: 1.5;
        padding: 20px 20px;
    }

    .line-image{
        width:120%;
        opacity: 20%;
        transform: rotate(-20deg);
        left:40%;
        top:-5%;
    }

    .container2 {
        width: 100%;
        padding: 0 10px;
        margin: 5% 0 0 0;
        box-sizing: border-box;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .container2 h2 {
        width: 100%;
        font-size: 32px;
        text-align: center;
        line-height: 1.2;
        margin-bottom: 30px;
    }

    .content2 p {
        font-size: 20px;
        margin: 25px 0 20px 0;
    }

    .btn-consultation {
        padding: 5px 20px;
        font-size: 12px;
        width:50%;
        justify-content: center;
        margin-bottom: 5%;
    }
}
</style>
