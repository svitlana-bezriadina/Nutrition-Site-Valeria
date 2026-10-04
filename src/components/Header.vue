<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue'

const isMenuOpen = ref(false)

const toggleMenu = () => {
  isMenuOpen.value = !isMenuOpen.value
}

const isHeaderHidden = ref(false) 
let lastScrollPosition = 0 

const handleScroll = () => {
  const currentScrollPosition = window.scrollY

  if (currentScrollPosition > lastScrollPosition && currentScrollPosition > 50) {
    isHeaderHidden.value = true
    isMenuOpen.value = false 
  } 
  else if (currentScrollPosition < lastScrollPosition) {
    isHeaderHidden.value = false
  }

  lastScrollPosition = currentScrollPosition
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})

</script>

<template>
  <header :class="{ 'hidden': isHeaderHidden }">
    <div class="logo">
        <h3>ВАЛЕРІЯ КОГУТ</h3>
        <p>НУТРИЦІОЛОГ</p>
    </div>

    <button class="burger-menu" @click="toggleMenu">
      <span :class="{ 'open': isMenuOpen }"></span>
      <span :class="{ 'open': isMenuOpen }"></span>
      <span :class="{ 'open': isMenuOpen }"></span>
    </button>

    <nav :class="{ 'is-open': isMenuOpen }">
        <a href="#about" @click="toggleMenu">ПРО МЕНЕ</a>
        <a href="#services" @click="toggleMenu">ПОСЛУГИ</a>
        <a href="#reviews" @click="toggleMenu">ВІДГУКИ</a>
        <a href="#contact" @click="toggleMenu">КОНТАКТИ</a>
    </nav>
    <a href="#contact" class="btn-book">ЗАПИСАТИСЬ</a>
  </header>
</template>

<style scoped>
header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background-color: #FFFBF3;
  
  position: fixed;
  top: 0; 
  left: 0;
  width: 100%;
  box-sizing: border-box;
  
  z-index: 999;
  padding: 1% 0;
  gap: 20px;
  transition: transform 0.3s ease-in-out;
  border: none;
}

header.hidden {
  transform: translateY(-100%); 
}

.logo {
    display: flex;
    flex-direction: column;
    flex-grow: 1;
    color: #47352B;
    margin-right: 4%;
    margin-left: 5%;
    white-space: nowrap;
}

.logo h3{
    font-family: 'Kudry', sans-serif;
    font-weight: 400;
    font-size: clamp(28px, 3.5vw, 42px);
    line-height: 100%;
    letter-spacing: 0;
    margin: 0;
}

.logo p {
    font-family: 'Montserrat', sans-serif;
    font-weight: 400;
    font-style: normal;
    font-size: clamp(14px, 2.5vw, 24px);
    line-height: 1;
    letter-spacing: 0.06em;
    margin: 0;
}

nav {
    display: flex;
    gap: 20px;
    align-items: center;
    justify-content: center;
    color: #47352B;
}

nav a {
    text-decoration: none;
    color: #47352B;
    font-family: 'Montserrat', sans-serif;
    font-weight: 400;
    font-style: normal;
    font-size: clamp(28px, 1.8vw, 40px);
    line-height: 1;
    letter-spacing: 0.06em;
    margin: 0 1%;
    white-space: nowrap;
}

.btn-book {
    display: inline-flex; 
    align-items: center;
    justify-content: center;

    text-decoration: none;
    color: #797A6E;
    font-family: 'Montserrat', sans-serif;
    font-weight: 500;
    font-style: normal;
    font-size:clamp(20px, 1.5vw, 32px);
    
    line-height: normal; 
    margin: 0 2% 0 2%;
    letter-spacing: 0.06em;
    padding: 10px 15px;
    white-space: nowrap;

    border: 3px solid #797A6E;
    border-radius: 50px;
    cursor: pointer;
    flex-shrink: 0;

    background-color: transparent; 
    position: relative; 
    overflow: hidden;
    z-index: 1; 
    transition: color 0.4s ease; 
}

.btn-book::before {
    content: "";
    position: absolute;
    bottom: 0;
    left: 50%;
    
    width: 400px; 
    height: 400px;
    background-color: #8B9175;
    border-radius: 50%; 
    
    z-index: -1;
    
    transform: translate(-50%, 50%) scale(0);
    transition: transform 0.5s ease-out; 
}

.btn-book:hover {
    color: #FFFBF3; 
}

.btn-book:hover::before {
    transform: translate(-50%, 50%) scale(1);
}


.burger-menu {
    display: none;
    flex-direction: column;
    gap: 7px;
    background: none;
    border: none;
    cursor: pointer;
    padding: 0;
    z-index: 100;
}

.burger-menu span {
    width: 40px;
    height: 3px;
    background-color: #797A6E;
    transition: all 0.3s ease;
}

@media (max-width: 1420px) {
  .burger-menu {
    display: flex;
    margin-right:2%;
    order:2;
  }
  .btn-book{
    order:1;
  }

  nav {
    position: absolute;
    top: 100%;
    left: 0;
    width: 100%;
    background-color: #f5f5f5;
    flex-direction: column;
    padding: 20px 0;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    
    visibility: hidden;
    opacity: 0;
    transform: translateY(-10px);
    transition: all 0.3s ease;
  }

  nav.is-open {
    visibility: visible;
    opacity: 1;
    transform: translateY(0);
    background-color:#FFFBF3 ;
  }

  .burger-menu span.open:nth-child(1) {
    transform: translateY(8px) rotate(45deg);
  }
  .burger-menu span.open:nth-child(2) {
    opacity: 0;
  }
  .burger-menu span.open:nth-child(3) {
    transform: translateY(-12px) rotate(-45deg);
  }
}

@media(max-width:780px){
  header{
    padding-top:5%;
  }

  .burger-menu {
    display: flex;
    margin-right:6%;
  }

  .burger-menu span {
    width: 35px;
    height: 3px;
    background-color: #797A6E;
    transition: all 0.3s ease;
  }

  .btn-book{
    display: none;
  }
}
</style>