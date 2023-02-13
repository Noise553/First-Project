#include <stdio.h>
#include <math.h>

int main() {
    float p1, p2, rho, g, h, v;

    // 고정 값 정의
    p1 = 10.0; // 상승에서의 초기 압력 (N/m^2)
    p2 = 5.0; // 상승에서의 최종 압력 (N/m^2)
    rho = 1000.0; // 액체의 밀도 (kg/m^3)
    g = 9.8; // 중력 가속도 (m/s^2)
    h = 10.0; // 상승의 높이 (m)

    // 압력의 차이를 계산
    v = sqrt((2.0 * g * h * (p1 - p2)) / (rho * (p1 + p2)));

    printf("액체의 속도: %f m/s\n", v);
    return 0;
}

