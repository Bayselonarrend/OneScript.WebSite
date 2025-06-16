// https://vitepress.dev/guide/custom-theme
import type { Theme } from 'vitepress'
import DefaultTheme from 'vitepress/theme'

// Yandex-Metrika
import { yandexMetrika } from '@hywax/vitepress-yandex-metrika'

import Layout from "./Layout.vue";
import './style.css'

export default {
  extends: DefaultTheme,
  Layout: Layout,
  enhanceApp(ctx) {
    yandexMetrika(ctx, {
      counter: {
        id: 31993926,
      },
    })
  }
} satisfies Theme
