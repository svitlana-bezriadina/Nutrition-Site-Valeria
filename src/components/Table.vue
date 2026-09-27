<script setup>
</script>

<template>
    <div class="grid-container">
        <div class="grid-item">
            <div class="item-number">01</div>
            <h3 class="item-title">Постійні дієти <br> та обмеження</h3>
            <p class="item-text">Ви постійно починаєте <br> нову дієту, але результат <br> не тримається</p>
        </div>

        <div class="grid-item">
            <div class="item-number">02</div>
            <h3 class="item-title">Складні стосунки <br> з їжею</h3>
            <p class="item-text">Їжа викликає тривогу, <br> провину або страх <br> «з'їсти зайве»</p>
        </div>

        <div class="grid-item">
            <div class="item-number">03</div>
            <h3 class="item-title">Не розумієте, <br> що їсти</h3>
            <p class="item-text">Складно самостійно <br> скласти повноцінний <br> та збалансований раціон</p>
        </div>

        <div class="grid-item">
            <div class="item-number">04</div>
            <h3 class="item-title">Переїдання та <br> емоційне харчування</h3>
            <p class="item-text">Важко відчути момент, коли <br> вже ситі, або їжа допомагає <br> впоратися з емоціями</p>
        </div>

        <div class="grid-item">
            <div class="item-number">05</div>
            <h3 class="item-title">Немає результату, <br> хоч стараєтесь</h3>
            <p class="item-text">Ви стараєтесь харчуватися <br> правильно, але не бачите <br> бажаних змін</p>
        </div>

        <div class="grid-item">
            <div class="item-number">06</div>
            <h3 class="item-title">Бракує енергії <br> та легкості</h3>
            <p class="item-text">Харчування не дає <br> відчуття легкості, ситості<br> та  достатньої енергії</p>
        </div>
    </div>
</template>

<style scoped>
.grid-container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  row-gap: 60px; 
  column-gap: 40px; 
  width: 100%s;
  margin: 0 auto;
  text-align: left;
}

.grid-item {
  position: relative;
  color: #333;
}

.grid-item:nth-child(3n+1)::before {
  content: "";
  position: absolute;
  right: -20px;
  top: 15px;
  height: 85%;
  width: 2px;
  background-color: #8B9175E3;
}

.grid-item:nth-child(3n)::before {
  content: "";
  position: absolute;
  left: -20px;
  top: 15px;
  height: 85%;
  width: 1.5px;
  background-color: #8B9175E3;
}

.grid-item:nth-child(-n+3)::after {
  content: "";
  position: absolute;
  bottom: -30px;
  left: 0;
  width: 100%;
  height: 1.5px;
  background-color: #8B9175E3;
}

.item-number {
  font-family: 'Kudry-Weird', serif; 
  font-weight: 400;
  font-style: normal;
  font-size: 32px;
  color: #8B9175;
  margin-bottom: 5px;
  line-height: 1;
  padding-left:7%;
}

.item-title {
  font-family: 'Kudry', sans-serif;
  font-weight: 400;
  font-style: normal;
  font-size: 32px;
  color: #47352B;
  margin: 0 0 15px 0;
  line-height: 1.15;
  padding-left:7%;
}

.item-text {
  font-family: 'Montserrat', sans-serif;
  font-weight: 400;
  font-style: normal;
  font-size: 20px;
  color: #47352B;
  margin: 0;
  line-height: 1.4;
  padding-left:7%;
}

@media (max-width: 1024px) {
  .grid-container {
    grid-template-columns: repeat(2, 1fr);
    row-gap: 50px;
    column-gap: 30px;
  }

  .grid-item::before {
    display: none; 
  }

  .grid-item:nth-child(odd)::before {
    display: block;
    content: "";
    position: absolute;
    right: 0;
    left: auto;
    top: 5px;
    height: 90%;
    width: 2px;
    background-color: #8B9175E3;
  }

  .grid-item::after {
    display: none;
  }

  .grid-item:nth-child(-n+4)::after {
    display: block;
    content: "";
    position: absolute;
    bottom: -25px;
    left: 0;
    width: 90%;
    height: 2px;
    background-color: #8B9175E3;
  }

  .grid-item {
    display: grid;
    grid-template-columns: 40px 1fr 40px; 
    align-items: start;
    text-align: center;
  }

  .item-number {
    grid-column: 1;
    grid-row: 1;
    padding-left: 0;
    margin-bottom: 0;
    text-align: left;
  }

  .item-title {
    grid-column: 2;
    grid-row: 1;
    padding-left: 0;
    margin-bottom: 12px;
    font-size: 26px;
  }

  .item-text {
    grid-column: 1 / -1;
    grid-row: 2;
    padding-left: 0;
    font-size: 16px;
  }
}

@media (max-width: 480px) {
  .grid-container {
    row-gap: 30px;
    column-gap: 16px; 
  }
  
  .grid-item {
    grid-template-columns: 22px 1fr 22px; 
  }

  .item-number {
    font-size: 20px;
  }

  .item-title {
    font-size: 16px;
    margin-bottom: 6px;
  }

  .item-text {
    font-size: 13px;
    padding-right: 5px;
    line-height: 1.3;
  }

  .grid-item:nth-child(odd)::before {
    right: 0; 
  }

  .grid-item:nth-child(-n+4)::after {
    bottom: -15px; 
  }
}
</style>