


///SingleChildScrollView 와 ListView의 차이
//SingleChildScrollView에는 child -> Column, ListView에는 children

//차이점 : 렌더링(화면을 그리는 것) 방식에 큰 차이가 있음
//- SingleChildScrollView : 한 번에 전부 다 그림(화면에 안 보이는 것들도) -> 메모리/성능 문제 발생
//- ListView : 일정 영역만 그림 -> 메모리 관리 가능