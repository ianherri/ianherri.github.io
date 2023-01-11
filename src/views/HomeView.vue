<script setup>
import QuoteComp from "../components/QuoteComp.vue";
import PrimaryHeading from "../components/PrimaryHeading.vue";
import TheSpacer from "../components/TheSpacer.vue";
import ExperienceComp from "../components/ExperienceComp.vue";
// import SkillsComp from "../components/SkillsComp.vue";
import SecondaryHeading from "../components/SecondaryHeading.vue";
import SkillsComp from "../components/SkillsComp.vue";

import FooterComp from "../components/FooterComp.vue";
</script>

<template>
  <PrimaryHeading
    heading="Ian Herrington"
    subHeading="Software engineer and bibliophile"
    content="Austin, TX"
  />
  <TheSpacer />
  <QuoteComp />
  <TheSpacer />
  <SecondaryHeading text="Experience" />
  <ExperienceComp />
  <TheSpacer />
  <SecondaryHeading text="Skills" />
  <SkillsComp />
  <TheSpacer />
  <FooterComp />

</template>
