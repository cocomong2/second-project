# **날씨 요인에 따른 농산물 가격 예측**

## **프로젝트 개요**
본 프로젝트는 날씨 데이터를 활용하여 농산물의 1kg 평균 가격을 예측하는 머신러닝 모델을 개발했습니다. 이를 통해 농업 생산 및 유통 전략을 지원하고, 소비자와 유통업자의 의사결정을 도울 수 있도록 설계되었습니다.

---

## **프로젝트 배경**
- **소비자 보호**: 가격 변동성을 예측하여 소비자가 더 나은 구매 계획을 세울 수 있도록 지원.
- **농업인 지원**: 작물 생산 및 판매 전략 수립에 활용.
- **정책적 활용**: 정부의 농산물 수급 조절 및 긴급 구호 계획 수립에 기여.

---

## **데이터 구성**
- **데이터 출처**:
  - **농산물 데이터**: KAMIS(농산물유통정보), 통계청, 농촌진흥청.
  - **기상 데이터**: 기상청 기상자료개방포털.
- **데이터 내용**:
  - 농산물: 품종, 도매/소매 가격, 생산지, 거래량 등.
  - 기상 데이터: 강수량, 온도, 풍속 등.

---

## **사용한 기술 및 도구**
- **프로그래밍 언어**: Python
- **머신러닝 라이브러리**: scikit-learn, XGBoost
- **데이터 처리 및 시각화**: pandas, numpy, matplotlib, seaborn

---

## **모델 및 접근법**
### **1. 회귀 모델**
- **랜덤 포레스트(Random Forest)**
- **Gradient Boosting**
- **특징**: 
  - 입력 피처: 평균 기온, 강수량, 도매시장, 산지 정보 등.
  - 타겟 변수: 1kg 평균 가격.

### **2. 시계열 모델**
- **SARIMAX**
- **ETS**
- 외생 변수: 도매시장, 산지-광역시도, 기후 데이터.

### **3. 분류 모델**
- Logistic Regression, Decision Tree, Random Forest
- 타겟 변수: 가격 수준(비싸다/싸다)로 분류.

---

## **결과 및 한계**
- **결과**:
  - 랜덤 포레스트 모델에서 가장 높은 성능 확인.
  - 분류 모델은 이상치 민감도가 높아 성능 저하.
  - 시계열 모델의 경우 외생 변수를 추가했을 때 성능 저하 관찰.
- **한계**:
  - 데이터 중복 및 이상치로 인해 일부 모델 성능이 저하됨.
  - 하이퍼파라미터 튜닝 과정에서 시간 부족으로 최적화 미완료.

---

## **프로젝트 구조**
```
├── data/                # 데이터셋 폴더
├── notebooks/           # 분석 및 모델링 코드
├── results/             # 시각화 결과 및 모델 평가 자료
├── README.md            # 프로젝트 설명 문서
```

---

## **실행 방법**
1. 저장소 클론:
   ```bash
   git clone https://github.com/your-repo-url.git
   ```
2. 필요한 라이브러리 설치:
   ```bash
   pip install -r requirements.txt
   ```
3. Jupyter Notebook 실행:
   ```bash
   jupyter notebook
   ```

---

## **팀 구성**
- 최현묵: 데이터 수집 및 전처리, 회귀 모델 개발, 시계열 및 분류 모델 개발, 결과 시각화
- 임병남: 데이터 수집 및 전처리, 회귀 모델 개발, 시계열 및 분류 모델 개발, 결과 시각화
---

## **라이센스**
MIT License를 따릅니다. 자세한 내용은 LICENSE 파일을 참조하세요.
