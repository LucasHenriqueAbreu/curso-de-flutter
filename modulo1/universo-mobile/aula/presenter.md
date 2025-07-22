---
theme: gaia
_class: lead
paginate: true
backgroundColor: #fff
backgroundImage: url('../../../assets/background.svg')
marp: true
---

![bg left:40% 80%](../../../assets/logo.png)

# **Programação Mobile**
### Módulo 1
#### Universo da Programação Mobile
##### Prof. Lucas Henrique de Abreu

---

## O que é mobile hoje?

- Smartphones e tablets
- Smartwatches, óculos inteligentes (ex: Apple Vision Pro)
- Sistemas embarcados em carros
- Dispositivos de IoT
- Apps não se limitam a celulares

[Fonte: Ericsson Mobility Report 2024](https://www.ericsson.com/en/reports-and-papers/mobility-report)

---

## Principais sistemas operacionais

- **Android** (Linux + Java/Kotlin)  
- **iOS** (Apple, Swift/Obj-C)  
- Outros: HarmonyOS, Wear OS, CarPlay, Android Automotive

[Fonte: StatCounter](https://gs.statcounter.com/os-market-share/mobile)

---

## Tipos de aplicações

- **Nativas**
  - Código separado para cada plataforma
  - Melhor performance
- **Híbridas**
  - WebView em container nativo (Ionic, Cordova)
- **Cross-platform**
  - Um código para todas as plataformas (Flutter, React Native)

---

## Flutter como plataforma

- Usa Dart
- Compila para ARM/x64 nativo
- Renderiza UI com Skia (independe da plataforma)
- Compatível com Android, iOS, Web, Desktop e Embedded

[Fonte: Flutter Architecture Overview](https://flutter.dev/docs/resources/architectural-overview)

---

## Performance e Build

- Nativo: desempenho ideal, maior custo de desenvolvimento  
  <sub>*Overhead*: custo adicional de recursos para manter o app funcionando</sub>
- Flutter: próxima do nativo, build AOT
- React Native: usa bridge (JS ↔ nativo), pode gerar gargalos
- Híbrido: maior latência, ideal apenas para apps simples

[Fonte: Infinum Handbook](https://infinum.com/handbook/mobile/flutter-vs-react-native-vs-native/)

---

## Flutter vs React Native

- **Linguagem:** Dart vs JavaScript
- **UI:** Skia (Flutter) vs Componentes nativos (React Native)
- **Compilação:** AOT nativa vs bridge
- **Performance:** Flutter tende a ser mais consistente
- **Ecossistema:** React Native tem mais plugins, Flutter tem suporte oficial do Google

✅ Na disciplina, adotaremos Flutter

[Fontes: Flutter Docs, React Native Docs]

---

## Conclusão

- Mobile está além do celular
- Entender o ecossistema ajuda na escolha da tecnologia
- Flutter é uma escolha moderna, eficiente e em crescimento
- Próxima aula: conhecendo Dart!