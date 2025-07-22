# Roteiro de Aula – Universo da Programação Mobile

## 1. Introdução ao conceito de mobile moderno

- O que é "mobile" hoje?
  - Smartphones, tablets, smartwatches, dispositivos veiculares (carros), óculos inteligentes (ex: Apple Vision Pro), IoT
  - Expansão do mobile para além de apps de celular
  - [Fonte: Ericsson Mobility Report 2024](https://www.ericsson.com/en/reports-and-papers/mobility-report)

## 2. Principais plataformas e sistemas operacionais

- **Android**
  - Kernel baseado em Linux
  - Linguagens padrão: Java, Kotlin
  - Usado por mais de 70% dos dispositivos móveis no mundo
  - [Fonte: StatCounter Global Stats - Mobile OS Market Share](https://gs.statcounter.com/os-market-share/mobile)

- **iOS**
  - Exclusivo da Apple
  - Linguagens padrão: Objective-C, Swift
  - Foco em segurança, performance e integração com hardware Apple

- **Outros sistemas relevantes**
  - HarmonyOS (Huawei)
  - Wear OS, tvOS, CarPlay, Android Automotive OS

## 3. Tipos de desenvolvimento mobile

### a. Desenvolvimento Nativo

- Escrito diretamente para um sistema operacional
- Ex: Kotlin/Java para Android, Swift para iOS
- Melhor desempenho e acesso total a APIs da plataforma
- Desvantagem: dois códigos separados para Android e iOS

### b. Desenvolvimento Híbrido

- Baseado em tecnologias web: HTML, CSS, JavaScript
- Frameworks: Ionic, Cordova, PhoneGap (obsoleto)
- Aplicação roda em um WebView dentro de um container nativo
- Performance inferior e limitações de acesso a APIs nativas
- [Fonte: Ionic Framework Documentation](https://ionicframework.com/docs)

### c. Desenvolvimento Cross-platform

- Uma única base de código para múltiplos sistemas
- Frameworks: Flutter (Dart), React Native (JS), Xamarin (.NET)
- Compilação intermediária ou nativa (Flutter → código nativo via Dart AOT)
- Bom equilíbrio entre performance e produtividade

## 4. Flutter em diferentes plataformas

- Compila código Dart diretamente para ARM ou x64 nativo
- Suporte para Android, iOS, Web, desktop (Windows, macOS, Linux), e embedded
- Usa Skia para renderização personalizada da UI
- [Fonte: Flutter Architecture Overview](https://flutter.dev/docs/resources/architectural-overview)

## 5. Considerações sobre performance e build

- Nativo: melhor performance e menor overhead  
  <sub><em>*Overhead* refere-se ao custo adicional de processamento que uma tecnologia impõe ao sistema — menor overhead significa menor uso de recursos e maior eficiência.</em></sub>
- Flutter: próxima do nativo (benchmark: 60–120 FPS na maioria dos casos)
- React Native: usa bridge entre JS e código nativo → pode causar gargalos
- Híbrido (Ionic): maior latência, menos adequado para apps com alto desempenho gráfico
- [Fonte comparativa: Performance of Mobile Frameworks – Infinum](https://infinum.com/handbook/mobile/flutter-vs-react-native-vs-native/)

## 6. Comparação entre Flutter e React Native

Ambas são soluções cross-platform muito populares, mas diferem significativamente em arquitetura, desempenho e experiência de desenvolvimento.

- **Linguagem:**
  - Flutter utiliza Dart.
  - React Native utiliza JavaScript (ou TypeScript).

- **Renderização:**
  - Flutter não depende dos componentes nativos da plataforma. Ele desenha sua própria interface com o motor gráfico Skia, oferecendo controle total da UI.
  - React Native utiliza componentes nativos da plataforma e uma ponte (bridge) para se comunicar com o código JavaScript.

- **Build:**
  - **Flutter** realiza a compilação AOT (Ahead-of-Time) para código nativo ARM/x64, resultando em apps com melhor desempenho e startup mais rápida.
  - **React Native** depende de uma ponte (bridge) entre o código JavaScript e os elementos nativos, o que pode causar maior latência em operações mais complexas.
  - [Fonte: Flutter Docs - Build Modes](https://docs.flutter.dev/testing/build-modes)  
  - [Fonte: Meta React Native Architecture](https://reactnative.dev/docs/architecture-overview)

- **Performance:**
  - Flutter tende a ter desempenho mais consistente e próximo do nativo.
  - React Native pode apresentar gargalos em apps com muitas interações em tempo real.

- **Comunidade e ecossistema:**
  - React Native possui uma comunidade maior e plugins mais variados.
  - Flutter, embora mais recente, tem crescido rapidamente com suporte robusto da Google.

✅ **Nesta disciplina, adotaremos o Flutter** por seu desempenho superior e melhor integração com o ecossistema moderno de desenvolvimento mobile.

## 6. Conclusão

- A escolha da abordagem depende de:
  - Orçamento e equipe disponível
  - Nível de controle exigido sobre hardware e performance
  - Tempo de entrega
- Tendência crescente para uso de Flutter e outras soluções cross-platform pela versatilidade

## Recomendação de leitura adicional

- [Flutter vs React Native: A 2024 Comparison – Medium](https://medium.com/flutter-community/flutter-vs-react-native-a-2024-comparison-6c4c2d85fc9e)
- [Apple Vision Pro Developer Overview](https://developer.apple.com/visionos/)
- [Android Developers - Automotive](https://developer.android.com/automotive)