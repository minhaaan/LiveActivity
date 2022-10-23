# LiveActivity

wwdc 2022에서 나온 LiveActivity를 써보자

![gif](https://user-images.githubusercontent.com/87178301/184742220-7ce95590-3087-4632-832a-b82b59353287.gif)

---

정리
- LiveActivity는 WidgetKit과 SwiftUI를 사용.
- LiveActivity는 사용자가 앱을 종료하지 않는한 **최대 8시간까지 활성화 가능**
- LiveActivity가 종료되면 즉시 Dynamic Island에서도 제거
- LiveActivity는 사용자가 제거할 때까지 또는 시스템에서 제거하기 전에 최대 4시간 동안 잠금 화면에 남아 있습니다. 결론은 LiveActivity는 최대 12시간 동안 잠금 화면에 남아 있다.
- 위젯과 달리 네트워크에 액세스하거나 위치 업데이트를 받을 수 없다.
- 