# iOS에서 뷰의 역할 및 그리는 방법

# 💡 iOS 앱에서 뷰의 역할

- 앱에서 가지고 있는 데이터를 사용자에게 보여준다
- 사용자의 인터랙션을 받아서 앱에 알려주는 역할

<br>

# 💡 iOS 앱에서 뷰의 역할

<br>

### UI 의 역사

![evolution_view_ios.png](https://opposite-foundation-5b5.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F6a294697-de5c-4a64-a9af-cfcc5f816990%2Fevolution_view_ios.png?table=block&id=861f30d2-d512-4c48-a799-5989502b1db2&spaceId=218f86ea-dd70-4255-addc-49c3437db872&width=1920&userId=&cache=v2)

### UIKit (Storyboard)

- 장점
  - 뷰를 위한 코드를 적게 작성 가능
  - 뷰를 직관적으로 이해하기 쉬움
  - 뷰작업 속도가 빠름
- 단점
  - 작업내용을 보기가 어려움 → 컨플릭트 났을때, xml 보고 수정하는게 빡셈
  - 재사용성이 낮음
  - 뷰의 동적 변화에 있어서 제약

### UIKit (Code)

- 장점
  - 작업 내용을 보기가 쉬움
  - 재사용성 높음
  - 동적 변화에 제약이 덜함
- 단점
  - 뷰를 위한 코드가 많이 들어감
  - 뷰를 직관적으로 바로 이해하기 어려움
  - 뷰작업 속도가 느림 (재사용성 높아짐에 따라, 속도는 향상 가능)

### SwiftUI

- 장점
  - 작업 내용을 보기가 쉬움
  - 재사용성 높음
  - 뷰를 위한 코드를 적게 작성 가능
  - 뷰를 직관적으로 이해하기 쉬움
  - 뷰작업 속도가 빠름
- 단점
  - 현재 대부분 프로젝트는 UIKit 기반이 많음
  - iOS 버젼 별로, 되는 UI가 있어서, 분기를 태워서 버젼별로 관리해주어야함

<br>

# 💡 결론

- UIKit 에서 스토리보드 vs Code 간 장단점 알기
- 현재 많은 회사에서 UIKit 기반 프로젝트 사용하고 있어서, UIKit을 꼭 알아야함
- 그리고, 애플에서 앞으로 미래의 UI로 생각하는 기술인 SwiftUI도 꼭 알아야함
- 결국, UIKit / SwiftUI 둘다 알아야함
