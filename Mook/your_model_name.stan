data {
  int<lower=0> N;       // 데이터 수
  vector[N] x;          // 독립 변수
  vector[N] y;          // 종속 변수
}

parameters {
  real alpha;           // 절편
  real beta;            // 기울기
  real<lower=0> sigma;  // 오차
}

model {
  y ~ normal(alpha + beta * x, sigma);  // 선형 모델
}
