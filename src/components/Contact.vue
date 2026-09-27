<template>
  <section class="contact-section" id="contact">

    <h2>Зв'язок зі мною</h2>
    
    <div class="social-links">

      <a href="https://www.instagram.com/leraa_kohut?stkn=MXJxc2wyaHQxemJncA==" target="_blank" class="icon-link">
        <img class="icon-normal" src="../assets/image/icons/inst.png" alt="Instagram" />
        <img class="icon-hover" src="../assets/image/icons/inst_2.png" alt="Instagram" />
      </a>
      <a href="https://t.me/lerakohut" target="_blank" class="icon-link">
        <img class="icon-normal" src="../assets/image/icons/tg.png" alt="Telegram" />
        <img class="icon-hover" src="../assets/image/icons/tg_2.png" alt="Telegram" />
      </a>
    </div>
  </section>
</template>

<style scoped>
.contact-section {
  position: relative;
  height: 500px;
  background-color: #fbf8f1;
  background-image: url('../assets/image/contact_back.png');

  background-position: bottom center;
  background-repeat: no-repeat;
  

  background-size: 100% auto;
  padding: 50px 0;
  text-align: center;
  overflow: hidden;
}

h2 {
  font-family: 'Kudry', serif;
  font-weight: 400;
  font-size: clamp(40px, 5vw, 72px);
  color: #47352B;
  margin-bottom: 40px;
  margin-top:-40px;
  position: relative;
  z-index: 2;
}

.social-links {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 30px;
  position: relative;
  z-index: 2;
}

.icon-link {
  display: inline-block;
  position: relative;
  width: 120px;
  height: 120px; 
  transition: transform 0.3s ease;
}

.icon-normal,
.icon-hover {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: contain;
  transition: opacity 0.3s ease;
}

.icon-hover {
  opacity: 0;
}

.icon-link:hover {
  transform: translateY(-8px);
}

.icon-link:hover .icon-normal {
  opacity: 0; 
}

.icon-link:hover .icon-hover {
  opacity: 1;
}


@media (max-width: 1440px) {
  .contact-section {
    height: 400px;
  }
}

@media (max-width: 1024px) {
  .contact-section {
    height: 250px;
  }


  .icon-link {
    width: 60px;
    height: 60px;
  }
  .social-links {
    gap: 15px;
  }
  .leaf-left, .leaf-right {
    opacity: 0.3;
  }
}

@media (max-width: 768px) {
  .contact-section {
    height: 200px;
  }
}

@media (max-width: 480px) {
  .contact-section {
    background-image: none;
    height: 100px;
  }

  h2 {
    margin-bottom: 10px;
  }

}
</style>