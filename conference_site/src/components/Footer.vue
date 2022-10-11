<template>
<footer>
  <div class="socials">
    <a class="twitterLogo" href="#">
      <IconTwitter/>
    </a>
    <a class="instagramLogo" href="">
      <IconInstagram/>
    </a>
    <a class="facebookLogo" href="">
      <IconFacebook/>
    </a>
  </div>

  <div class="copyright">
    © 2022 Namibia University of Science and Technology. All Rights Reserved
  </div>
</footer>
</template>

<script>

import IconTwitter from "./icons/IconTwitter.vue";
import IconInstagram from "./icons/IconInstagram.vue";
import IconFacebook from "./icons/IconFacebook.vue";

export default {
  name: "Footer",
  components: {
    IconFacebook,
    IconTwitter,
    IconInstagram
  }
}
</script>

<style scoped>
footer {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 40px 106px;
  gap: 28px;

  position: absolute;
  width: 100%;
  height: 9rem;
  left: 0px;
  top: auto;

  background: #8D99AE;
}

.socials{
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  padding: 0px;
  gap: 1.5rem;

  width: 190px;
  height: 44px;


  /* Inside auto layout */

  flex: none;
  order: 0;
  flex-grow: 0;
}

.copyright{
  width: 533px;
  height: 18px;

  font-family: 'Inter';
  font-style: normal;
  font-weight: 400;
  font-size: 15px;
  line-height: 18px;
  text-align: center;

  color: #FFFFFF;


  /* Inside auto layout */

  flex: none;
  order: 1;
  flex-grow: 0;
}
</style>