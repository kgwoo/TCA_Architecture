# TCA_Architecture

## 1. TCA(The Composable Architecture) 개요
### a.  TCA의 등장배경
* '선언형UI **[SwiftUI]** 에서 MVVM패턴은 필요하지 않다' 는 관점에서 등장
  * 선언형UI에서는 데이터 바인딩이 필요 없어짐
  * view-model은 data binding이 목적이므로, view-model이라고 표현하는것은 어색함
* 오랫동안 MVVM 패턴을 사용하고 있어, 관성적으로 쓰고 있는 경향 있음
* [선언형UI]와 어울리는 단방향 데이터 플로우 아키텍처가 적합하여 **MVI, Flux** 등장

  
## 2. SCA(swift-composable-architecture)

### a. 기본 구성
* state(상태)
  * 비즈니스 로직을 수행, 또는 UI를 그릴 때 필요한 데이터에 대한 설명
  
* action(행동)
  * 사용자가 하는 행동이나 notification 등 앱에 발생할 수 있는 모든 행동들

* environment(환경)
  * API Client / Analytics Client 등 application이 필요로 하는 의존성

* reducer(리듀서)
  * 어떤 행동이 주어졌을 때 상태를 다음 생태로 변화시키는 방법을 가진 함수
  * ComposableArchitecture 라이브러리에서 reducer는 **Effect** 값을 반환
  

![스크린샷 2022-08-23 오후 3 33 37](https://user-images.githubusercontent.com/47517621/186087272-9c84d740-9fdf-4c9e-8abc-5a2595df5188.png)

##### 참고 및 적용 
https://github.com/pointfreeco/swift-composable-architecture
