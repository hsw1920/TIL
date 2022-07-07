# 앱의 라이프 사이클

### 기존의 앱 라이프 사이클은 아래와 같았음

![생명주기1](https://opposite-foundation-5b5.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F196c1f3a-f87e-4dc3-b3ad-91a09ed79381%2Fapp-statedark2x.png?table=block&id=f098a587-faff-462f-920d-1efcab731cb0&spaceId=218f86ea-dd70-4255-addc-49c3437db872&width=1520&userId=&cache=v2)

### iOS 13 부터 멀티 윈도우 제공됨

![2](https://opposite-foundation-5b5.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Feea51dcb-3515-417b-9a68-0cd78ae3c9fa%2FUntitled.png?table=block&id=64aceec0-66f8-4d27-99e4-7296582ad8ad&spaceId=218f86ea-dd70-4255-addc-49c3437db872&width=1920&userId=&cache=v2)

### UI 생명주기는 Scene Delegate가 담당하고

### Scene의 상태는 아래와 같이 변경됨

![3](https://opposite-foundation-5b5.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F231bf598-5795-439d-aaa3-f374c64f9291%2Fscene-state_dark2x.png?table=block&id=44ce557a-2214-40b4-b04e-314577b5d07f&spaceId=218f86ea-dd70-4255-addc-49c3437db872&width=1660&userId=&cache=v2)

<br>

# 개발자의 책임

- 앱이 포그라운드 들어갈때
  - 이니셜 UI 준비
  - 사용자와의 인터랙션 준비
- 포그라운드를 떠날때
  - 데이터 저장
  - 앱의 작업을 최소화할 준비
- 백그라운드 들어갔을때
  - 앱의 작업을 중단함
  - 메모리 비우기
  - 현재 상태를 저장해놓고 다음을 준비

### 참고 자료

- [https://developer.apple.com/documentation/uikit/app_and_environment/managing_your_app_s_life_cycle](https://developer.apple.com/documentation/uikit/app_and_environment/managing_your_app_s_life_cycle)
- [https://developer.apple.com/videos/play/wwdc2019/258/](https://developer.apple.com/videos/play/wwdc2019/258/)
