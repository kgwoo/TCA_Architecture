# TCA_Architecture

## 1. TCA(The Composable Architecture) 개요
### a.  TCA의 등장배경
* '선언형UI **[SwiftUI]** 에서 MVVM패턴은 필요하지 않다' 는 관점에서 등장
  * 선언형UI에서는 데이터 바인딩이 필요 없어짐
  * view-model은 data binding이 목적이므로, view-model이라고 표현하는것은 어색함
* 오랫동안 MVVM 패턴을 사용하고 있어, 관성적으로 쓰고 있는 경향 있음
* [선언형UI]와 어울리는 단방향 데이터 플로우 아키텍처가 적합하여 **MVI, Flux** 등장


