# Seeksick
## CNN 모델 전이학습을 활용한 반려식물 종합 관리 서비스
***
### 1. 서비스 개요
 * 코로나19의 확산과 홈 인테리어 열풍이 맞물려 가드닝 시장은 급격하게 성장하고 있다. 가드닝 시장에서 서비스 할 수 있는 반려식물 식별 서비스와 질병진단 서비스를 제공하고자 한다.
***
### 2. 개발 일정
<p align="center"><img src="https://user-images.githubusercontent.com/80523580/116256732-6b395680-a7ae-11eb-826a-4d3578062128.png" ></p>

***
### 3. 서비스 흐름도
<p align="center"><img src="https://user-images.githubusercontent.com/80523580/114855740-3ed22180-9e21-11eb-949d-81a61c19dcc5.png" width="900" height="300"></p>

***
### 4. 시스템 구성도
<p align="center"><img src="https://user-images.githubusercontent.com/80523580/114855844-57dad280-9e21-11eb-9767-2e67c56b7171.png" width="900" height="300"></p>
<br>

> - 데이터베이스로는 무료로 배포할 수 있는 mysql을 이용했다.
> - 백엔드는 자바 기반의 스프링 프레임 워크를 이용했으며, 프론트엔드는 자바스크립트를 이용해 구현했다. 
> - 딥러닝 모델 구축은 파이썬의 텐서플로우 라이브러리를 이용해서 CNN기반의 모델을 구축을 했다. 
> - 플라스크 프레임 워크를 이용해 딥러닝 모델과 웹 서비스를 연동했다. 
> - 깃과 깃허브를 버전관리 및 협업 도구로 사용했다.
<br>

***

### 5. DeepLearning 모델 설명
> 화초 식별과 질병진단에 사용된 모델은 이미지 처리에 특화된 CNN 기반의 여러 모델을 사용해 봤으나, 가장 높은 정확도를 보였던 InceptionV3 모델을 선정했다. 반려식물 식별 모델은 총 14,000개의 데이터셋을 학습한 결과 관엽식물 20개 클래스에 대해서 약 90%의 정확도로 분류할 수 있었다. 질병진단 모델은 약 1,500개의 질병 데이터 셋을 학습한 결과 3개의 클래스에 대해서 약 94%확률로 진단할 수 있었다.
하지만, 질병진단 모델은 입력받은 이미지에 질병에 걸린 잎사귀 이외의 잡음(noise)이 섞여있을 때 모델의 정확도가 급격하게 떨어지는 과적합 문제가 있었다. 추후 이미지 디텍션이나 메타러닝 등의 방법을 통해 보완할 필요가 있다.
***
### 6. 웹 서비스

<p align = "center"><img src="https://user-images.githubusercontent.com/80523580/114859096-41367a80-9e25-11eb-8ec2-ffbbfc8e39d1.png" width="900" height="300"></p>

<br>

>- 웹 서비스는 OPEN API를 활용하여 개발의 효율을 높이고, 유저에게 보다 전문적이고 신뢰성 있는 정보를 제공하기 위해 노력했다.  
    <small> (식별된 식물과 관련된 가드닝 정보의 제공은 농업기술포털 농사로에서 제공하는 OPEN API를 활용했다.)</small>
>- 많은 양의 데이터를 수신할 때, 비동기 통신을 이용해 가급적 페이지 전환이나 끊김 없이 구현하여, 유저의 사용성을 높이기 위해 노력했다.

<br>

***

### 7. 시연
<p align="center"><img src="https://user-images.githubusercontent.com/80523580/114862927-14389680-9e2a-11eb-9d2a-8d06cfe9132a.gif"></p>