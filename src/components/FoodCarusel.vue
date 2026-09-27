<template>
  <section class="food-carousel-section">
    <div class="carousel-container">
      
      <div 
        v-for="(img, index) in images" 
        :key="index"
        class="slide"
        :class="getSlideClass(index)"
      >
        <img class="slide-frame" src="../assets/image/border.png" alt="Frame" />
        
        <img class="slide-img" :src="img" alt="Food plate" />
      </div>

      <button class="nav-btn prev" @click="prev" aria-label="Попередній">
        <svg width="29" height="23" viewBox="0 0 29 23" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M0.439365 9.98524C-0.146421 10.571 -0.146421 11.5208 0.439365 12.1066L9.98531 21.6525C10.5711 22.2383 11.5208 22.2383 12.1066 21.6525C12.6924 21.0667 12.6924 20.117 12.1066 19.5312L3.62135 11.0459L12.1066 2.56062C12.6924 1.97483 12.6924 1.02508 12.1066 0.439297C11.5208 -0.14649 10.5711 -0.14649 9.98531 0.439297L0.439365 9.98524ZM28.1934 11.0459V9.5459L1.50002 9.5459V11.0459V12.5459L28.1934 12.5459V11.0459Z" fill="#8B9175"/>
        </svg>
      </button>
      <button class="nav-btn next" @click="next" aria-label="Наступний">
        <svg width="29" height="23" viewBox="0 0 29 23" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M27.754 12.1066C28.3398 11.5208 28.3398 10.571 27.754 9.98524L18.2081 0.439297C17.6223 -0.14649 16.6725 -0.14649 16.0867 0.439297C15.5009 1.02508 15.5009 1.97483 16.0867 2.56062L24.572 11.0459L16.0867 19.5312C15.5009 20.117 15.5009 21.0667 16.0867 21.6525C16.6725 22.2383 17.6223 22.2383 18.2081 21.6525L27.754 12.1066ZM0 11.0459L0 12.5459L26.6933 12.5459V11.0459V9.5459L0 9.5459L0 11.0459Z" fill="#8B9175"/>
        </svg>
      </button>
    </div>


    <div class="dots">
      <button 
        v-for="(_, index) in images" 
        :key="index"
        :class="{ active: currentIndex === index }"
        @click="goTo(index)"
      ></button>
    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue'
import food1 from '@/assets/image/dishes/food1.jpg'
import food2 from '@/assets/image/dishes/food2.jpg'
import food3 from '@/assets/image/dishes/food3.jpg'
import food4 from '@/assets/image/dishes/food4.jpg'
import food5 from '@/assets/image/dishes/food5.jpg'


const images = [food1, food2, food3, food4, food5]
const currentIndex = ref(0)
const direction = ref('next')
const isAnimating = ref(false)
const transitionDuration = 600

const changeSlide = (step) => {
  if (isAnimating.value) return

  direction.value = step > 0 ? 'next' : 'prev'
  currentIndex.value = (currentIndex.value + step + images.length) % images.length
  isAnimating.value = true

  window.setTimeout(() => {
    isAnimating.value = false
  }, transitionDuration)
}

const next = () => changeSlide(1)

const prev = () => changeSlide(-1)

const goTo = (index) => {
  if (isAnimating.value || index === currentIndex.value) return

  const forwardDistance = (index - currentIndex.value + images.length) % images.length
  const backwardDistance = (currentIndex.value - index + images.length) % images.length
  direction.value = forwardDistance <= backwardDistance ? 'next' : 'prev'
  currentIndex.value = index
  isAnimating.value = true

  window.setTimeout(() => {
    isAnimating.value = false
  }, transitionDuration)
}

const getSlideClass = (index) => {
  const len = images.length
  
  if (index === currentIndex.value) return 'slide-active'
  if (index === (currentIndex.value - 1 + len) % len) return 'slide-prev'
  if (index === (currentIndex.value + 1) % len) return 'slide-next'
  
  const hiddenIndex = direction.value === 'next'
    ? (currentIndex.value - 2 + len) % len
    : (currentIndex.value + 2) % len

  return index === hiddenIndex
    ? `slide-hidden-${direction.value === 'next' ? 'left' : 'right'}`
    : `slide-hidden-${direction.value === 'next' ? 'right' : 'left'}`
}
</script>

<style scoped>
.food-carousel-section {
  position: relative;
  width: 100%;
  height: auto;
  padding: 50px 0;
  background-color: #FFFBF3; 
  overflow: hidden;
}

.carousel-container {
  position: relative;
  width: 100%;
  height: 700px; 
  margin: 0 auto;
}

.slide {
  position: absolute;
  top: 50%;
  width: 400px;
  height: 400px;
  transform-origin: center center; 
  transition: all 0.6s ease-in-out;
  box-sizing: border-box;
}

.slide-img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 50%;
  box-shadow: 0 10px 25px rgba(0,0,0,0.05);
  transition: border-radius 0.6s ease-in-out;
}

.slide::after {
  content: "";
  position: absolute;
  top: -15px; bottom: -15px; left: -15px; right: -15px; 
  border-radius: 50%;
  border: 1.5px solid transparent; 
  transition: border-radius 0.6s ease-in-out;
  pointer-events: none; 
}

.slide-frame {
  position: absolute;
  top: 50%;
  left: 51%;
  width: 100%; 
  height: 100%;
  transform: translate(-50%, -50%) scale(1.4);
  object-fit: contain;
  pointer-events: none;
  opacity: 0; 
  transition: opacity 0.4s ease;
}

.slide-active {
  left: 50%;
  z-index: 3;
  transform: translate(-50%, -50%) scale(1.4);
}
.slide-active .slide-frame {
  opacity: 1;
  transition-delay: 0.2s; 
}
.slide-active .slide-img {
  border-radius: 50%; 
}

.slide-prev {
  left: 11%;
  z-index: 2;
  transform: translate(-50%, -50%) scale(1.1) ; 
  opacity: 0.9;
}
.slide-prev .slide-img {
  border-radius:0 50% 50% 0;
}
.slide-prev::after {
  border-color: #8B9175;
  border-radius:0 50% 50% 0;
  right: -4%; 
}

.slide-next {
  left: 88%;
  z-index: 2;
  transform: translate(-50%, -50%) scale(1.1); 
  opacity: 0.9;
}
.slide-next .slide-img {
  border-radius: 50% 0 0 50%;
}
.slide-next::after {
  border-color: #8B9175;
  border-radius: 50% 0 0 50%;
  left: -4%;
}

.slide-hidden-left {
  left: -20%;
  z-index: 1;
  transform: translate(-50%, -50%) scale(0.6);
  opacity: 0;
}
.slide-hidden-right {
  left: 120%;
  z-index: 1;
  transform: translate(-50%, -50%) scale(0.6);
  opacity: 0;
}

.nav-btn {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  width: 100px;
  height: 100px;
  background-color: #EEEBE2;
  border: 1px solid #8B9175;
  border-radius: 50%;
  color: #8B9175;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  z-index: 4;
  transition: all 0.3s ease;
}

.nav-btn:hover {
  background-color: #e5e2d6;
  color: #47352B;
}

.nav-btn svg {
  
  color: #8B9175;
  width: 24px;
  height: 24px;
}

.prev { left: 22%; }
.next { right: 23%; }

.dots {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 40px;
  margin-top: 90px;
}

.dots button {
  width: 15px;
  height: 15px;
  padding: 0;
  border: none;
  border-radius: 50%;
  background-color: #bbbcb0;
  cursor: pointer;
  transition: all 0.3s ease;
}

.dots .active {
  background-color: #8B9175;
}


@media (max-width: 1440px) {
  .carousel-container {
    height: 500px;
  }
  .slide {
    width: 300px;
    height: 300px;
  }
  .slide-prev { left: 5%; }
  .slide-next { right: -5%; }
  .slide-next { left: 95%; } 

  .nav-btn { width:80px; height: 80px;}
  .prev { left: 18%; }
  .next { right: 18%; }

  .dots {
    gap: 30px;
    margin-top: 50px;
  }

  .dots button {
    width: 12px;
    height: 12px;
  }
}

@media (max-width: 1024px) {
  .carousel-container {
    height: 500px;
  }
  .slide {
    width: 250px;
    height: 250px;
  }
  .slide-prev { left: 5%; }
  .slide-next { right: -5%; }
  .slide-next { left: 95%; } 

  .nav-btn { width:80px; height: 80px;}
  .prev { left: 18%; }
  .next { right: 18%; }

  .dots {
    gap: 30px;
    margin-top: 20px;
  }

  .dots button {
    width: 12px;
    height: 12px;
  }
}

@media (max-width: 768px) {
  .carousel-container {
    height: 400px;
  }
  .slide {
    width: 200px;
    height: 200px;
  }
  .slide-prev { left: 5%; }
  .slide-next { left: 95%; }
  
  .nav-btn { width:60px; height: 60px;}
  .prev { left: 17%; }
  .next { right: 17%; }

  .dots {
    gap: 20px;
  }

}

@media (max-width:480px){
  .slide-active .slide-img {
    box-shadow: 1px 1px 50px 50px #eeebe265;
    box-sizing: border-box;
  }

  .prev { left: 10%; }
  .next { right: 10%; }
}
</style>