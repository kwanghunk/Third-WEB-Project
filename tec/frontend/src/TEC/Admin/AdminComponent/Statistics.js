import React, { useEffect, useState } from "react";
import { Line } from "react-chartjs-2";
import axios from "axios";
import { Chart as ChartJS, CategoryScale, LinearScale, PointElement, LineElement, Title, Tooltip, Legend, Filler } from "chart.js";
import "../AdminStyles/Statistics.css";

ChartJS.register( CategoryScale, LinearScale, PointElement, LineElement, Title, Tooltip, Legend, Filler );

function Statistics() {
  const [chartData, setChartData] = useState(null);

  // 데이터 가져오기
  useEffect(() => {
    const fetchStatistics = async () => {
      try {
        const response = await axios.get("/statistics/all"); // 날짜별 데이터 API 호출
        const data = response.data;

        // 데이터 처리
        const dailyLabels = Object.keys(data.dailyStatistics);
        const dailyValues = Object.values(data.dailyStatistics);

        // 차트 데이터 설정
        setChartData({
          labels: dailyLabels, // 날짜 라벨 사용
          datasets: [
            {
              label: "방문자",
              data: dailyValues, // 날짜별 방문자 수
              borderColor: "rgba(255, 99, 132, 1)", // 선 색상
              backgroundColor: "rgba(255, 99, 132, 0.2)", // 영역 채우기 색상
              fill: true, // 그래프 아래 영역 채우기
              tension: 0.4, // 선의 곡률 (부드러운 선형 그래프)
              pointBackgroundColor: "rgba(255, 99, 132, 1)", // 점 색상
              pointBorderColor: "rgba(255, 99, 132, 1)", // 점 테두리 색상
              pointHoverRadius: 6, // 점 호버 크기
            },
          ],
        });
      } catch (error) {
        console.error("통계 데이터를 가져오는 중 오류 발생:", error);
      }
    };
    fetchStatistics();
  }, []);

  // 로딩 상태
  if (!chartData) {
    return <p>통계 데이터를 불러오는 중...</p>;
  }

  return (
    <div className="statistics-container">
      <h2 className="statistics-title">방문자 현황</h2>
      <Line
        data={chartData}
        options={{
          responsive: true,
          plugins: {
            legend: {
              display: false, // 범례 숨김
            },
            title: {
              display: false, // 제목 숨김
            },
          },
          scales: {
            x: {
              grid: {
                display: false, // x축 그리드 숨김
              },
            },
            y: {
              ticks: {
                stepSize: 2, // y축 간격 설정
              },
              grid: {
                color: "rgba(200, 200, 200, 0.2)", // y축 그리드 색상
              },
            },
          },
        }}
      />
    </div>
  );
}

export default Statistics;