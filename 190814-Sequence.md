# About Sequence

### 이 글은 애플 도큐먼테이션을 보고 작성한 글 임을 미리 밝힙니다

#### A type that provides sequential, iterated access to its elements.
    요소에 순차적으로 반복 엑세스 할 수 있는 유형

#### Protocol
    Sequence 는 Protocol 이다
    
#### 개요
    시퀀스는 한 번에 하나씩 단계별로 수행 할 수 있는 값 목록이다
    시퀀스의 요소를 반복하는 가장 일반적인 방법은 for - in 루프를 사용하는 것이다
    
#### 예시를 통한 시퀀스 설명
    시퀀스에 특정 값이 포함되어 있는지 확인하기 위해 일치하는 것을 찾거나 
    시퀀스의 끝에 도달 할 때까지 각 값을 순차적으로 테스트 할 수 있다
    
<img width="605" alt="sequenceForInLoop" src="https://user-images.githubusercontent.com/42841888/62957710-49f4d300-be30-11e9-870a-b62c86cf3147.png">

    시퀀스 프로토콜은 시퀀스 값에 순차적으로 엑세스하는 많은 일반적인 작업에 기본 구현을 제공한다
    보다 명확하고 간결한 코드를 위해 위의 그림에 나오는 예시에서는 모든 시퀀스가 수동으로 반복
    
<img width="605" alt="sequenceContain" src="https://user-images.githubusercontent.com/42841888/62958510-d227a800-be31-11e9-93bf-0639fd03a109.png">

    위의 그림에 나오는 예시는 시퀀스에서 상속되는 배열의 contains 메소드를 사용
    
<img width="701" alt="sequenceContain2" src="https://user-images.githubusercontent.com/42841888/62959074-eae48d80-be32-11e9-9182-2f8dffb6930c.png">


    