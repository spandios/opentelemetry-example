# Opentelemetry Spring Example

Opentelemetry는 분산된 환경에서 더 강력하고 편하게 관찰 하기(Traces, Metrics, Logs)을 위해 만들어진 오픈소스이다.

OpenTelemtry는 기존의 모니터링과 다르게 데이터를 수집하고 전처리하는 책임만 가지고 실제 데이터를 저장하거나 표현은 다른 벤더에게 위임한다.

이런 중간에서 인터페이스 역할 덕에 우리는 다양한 모니터링 서비스를 사이드 이펙트 없이 교체하고 사용할 수 있다.

# 실행

1. ./gradlew build
2. ./gradlew bootBuildImage
3. docker-compose up

curl localhost:8080으로 요청을 보내본다.

# Jaeger

localhost:16686

# Prometheus

localhost:9090









