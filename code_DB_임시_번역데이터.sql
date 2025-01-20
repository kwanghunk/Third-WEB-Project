INSERT INTO code (origin_code, translate_code)
VALUES
	('do', '{"Java": "실행", "Python": "실행", "JavaScript": "실행", "CSharp": "실행", "CPlusPlus": "실행", "C": "실행", "TypeScript": "실행", "Kotlin": "실행", "Ruby": "실행", "PHP": "실행"}'),
    ('goto', '{"Java": "이동", "Python": "이동", "JavaScript": "이동", "CSharp": "이동", "CPlusPlus": "이동", "C": "이동", "TypeScript": "이동", "Kotlin": "이동", "Ruby": "이동", "PHP": "이동"}'),
    ('native', '{"Java": "네이티브", "Python": "네이티브", "JavaScript": "네이티브", "CSharp": "네이티브", "CPlusPlus": "네이티브", "C": "네이티브", "TypeScript": "네이티브", "Kotlin": "네이티브", "Ruby": "네이티브", "PHP": "네이티브"}'),
	('transient', '{"Java": "일시적", "Python": "일시적", "JavaScript": "일시적", "CSharp": "일시적", "CPlusPlus": "일시적", "C": "일시적", "TypeScript": "일시적", "Kotlin": "일시적", "Ruby": "일시적", "PHP": "일시적"}'),
    ('length', '{"Java": "문자열 길이", "Python": "문자열 길이", "JavaScript": "문자열 길이", "CSharp": "문자열 길이", "CPlusPlus": "문자열 길이", "C": "문자열 길이", "TypeScript": "문자열 길이", "Kotlin": "문자열 길이", "Ruby": "문자열 길이", "PHP": "문자열 길이"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('async', '{"Java": "비동기", "Python": "비동기", "JavaScript": "비동기", "CSharp": "비동기", "CPlusPlus": "비동기", "C": "비동기", "TypeScript": "비동기", "Kotlin": "비동기", "Ruby": "비동기", "PHP": "비동기"}'),
    ('defer', '{"Java": "지연", "Python": "지연", "JavaScript": "지연", "CSharp": "지연", "CPlusPlus": "지연", "C": "지연", "TypeScript": "지연", "Kotlin": "지연", "Ruby": "지연", "PHP": "지연"}'),
    ('await', '{"Java": "대기", "Python": "대기", "JavaScript": "대기", "CSharp": "대기", "CPlusPlus": "대기", "C": "대기", "TypeScript": "대기", "Kotlin": "대기", "Ruby": "대기", "PHP": "대기"}'),
    ('yield', '{"Java": "양보", "Python": "양보", "JavaScript": "양보", "CSharp": "양보", "CPlusPlus": "양보", "C": "양보", "TypeScript": "양보", "Kotlin": "양보", "Ruby": "양보", "PHP": "양보"}'),
    ('lambda', '{"Java": "람다식", "Python": "람다식", "JavaScript": "람다식", "CSharp": "람다식", "CPlusPlus": "람다식", "C": "람다식", "TypeScript": "람다식", "Kotlin": "람다식", "Ruby": "람다식", "PHP": "람다식"}'),
    ('fetch', '{"Java": "가져오기", "Python": "가져오기", "JavaScript": "가져오기", "CSharp": "가져오기", "CPlusPlus": "가져오기", "C": "가져오기", "TypeScript": "가져오기", "Kotlin": "가져오기", "Ruby": "가져오기", "PHP": "가져오기"}'),
    ('sync', '{"Java": "동기화", "Python": "동기화", "JavaScript": "동기화", "CSharp": "동기화", "CPlusPlus": "동기화", "C": "동기화", "TypeScript": "동기화", "Kotlin": "동기화", "Ruby": "동기화", "PHP": "동기화"}'),
    ('iterator', '{"Java": "반복자", "Python": "반복자", "JavaScript": "반복자", "CSharp": "반복자", "CPlusPlus": "반복자", "C": "반복자", "TypeScript": "반복자", "Kotlin": "반복자", "Ruby": "반복자", "PHP": "반복자"}'),
    ('serializer', '{"Java": "직렬화", "Python": "직렬화", "JavaScript": "직렬화", "CSharp": "직렬화", "CPlusPlus": "직렬화", "C": "직렬화", "TypeScript": "직렬화", "Kotlin": "직렬화", "Ruby": "직렬화", "PHP": "직렬화"}'),
    ('deserializer', '{"Java": "역직렬화", "Python": "역직렬화", "JavaScript": "역직렬화", "CSharp": "역직렬화", "CPlusPlus": "역직렬화", "C": "역직렬화", "TypeScript": "역직렬화", "Kotlin": "역직렬화", "Ruby": "역직렬화", "PHP": "역직렬화"}'),
    ('nullable', '{"Java": "널 허용", "Python": "널 허용", "JavaScript": "널 허용", "CSharp": "널 허용", "CPlusPlus": "널 허용", "C": "널 허용", "TypeScript": "널 허용", "Kotlin": "널 허용", "Ruby": "널 허용", "PHP": "널 허용"}'),
    ('map', '{"Java": "매핑", "Python": "매핑", "JavaScript": "매핑", "CSharp": "매핑", "CPlusPlus": "매핑", "C": "매핑", "TypeScript": "매핑", "Kotlin": "매핑", "Ruby": "매핑", "PHP": "매핑"}'),
    ('reduce', '{"Java": "축소", "Python": "축소", "JavaScript": "축소", "CSharp": "축소", "CPlusPlus": "축소", "C": "축소", "TypeScript": "축소", "Kotlin": "축소", "Ruby": "축소", "PHP": "축소"}'),
    ('filter', '{"Java": "필터링", "Python": "필터링", "JavaScript": "필터링", "CSharp": "필터링", "CPlusPlus": "필터링", "C": "필터링", "TypeScript": "필터링", "Kotlin": "필터링", "Ruby": "필터링", "PHP": "필터링"}'),
    ('promise', '{"Java": "약속", "Python": "약속", "JavaScript": "약속", "CSharp": "약속", "CPlusPlus": "약속", "C": "약속", "TypeScript": "약속", "Kotlin": "약속", "Ruby": "약속", "PHP": "약속"}'),
    ('resolve', '{"Java": "해결", "Python": "해결", "JavaScript": "해결", "CSharp": "해결", "CPlusPlus": "해결", "C": "해결", "TypeScript": "해결", "Kotlin": "해결", "Ruby": "해결", "PHP": "해결"}'),
    ('reject', '{"Java": "거절", "Python": "거절", "JavaScript": "거절", "CSharp": "거절", "CPlusPlus": "거절", "C": "거절", "TypeScript": "거절", "Kotlin": "거절", "Ruby": "거절", "PHP": "거절"}'),
    ('chunk', '{"Java": "청크", "Python": "청크", "JavaScript": "청크", "CSharp": "청크", "CPlusPlus": "청크", "C": "청크", "TypeScript": "청크", "Kotlin": "청크", "Ruby": "청크", "PHP": "청크"}'),
    ('debounce', '{"Java": "디바운스", "Python": "디바운스", "JavaScript": "디바운스", "CSharp": "디바운스", "CPlusPlus": "디바운스", "C": "디바운스", "TypeScript": "디바운스", "Kotlin": "디바운스", "Ruby": "디바운스", "PHP": "디바운스"}'),
    ('throttle', '{"Java": "스로틀", "Python": "스로틀", "JavaScript": "스로틀", "CSharp": "스로틀", "CPlusPlus": "스로틀", "C": "스로틀", "TypeScript": "스로틀", "Kotlin": "스로틀", "Ruby": "스로틀", "PHP": "스로틀"}'),
    ('memoize', '{"Java": "메모이제이션", "Python": "메모이제이션", "JavaScript": "메모이제이션", "CSharp": "메모이제이션", "CPlusPlus": "메모이제이션", "C": "메모이제이션", "TypeScript": "메모이제이션", "Kotlin": "메모이제이션", "Ruby": "메모이제이션", "PHP": "메모이제이션"}'),
    ('spread', '{"Java": "스프레드", "Python": "스프레드", "JavaScript": "스프레드", "CSharp": "스프레드", "CPlusPlus": "스프레드", "C": "스프레드", "TypeScript": "스프레드", "Kotlin": "스프레드", "Ruby": "스프레드", "PHP": "스프레드"}'),
    ('rest', '{"Java": "레스트", "Python": "레스트", "JavaScript": "레스트", "CSharp": "레스트", "CPlusPlus": "레스트", "C": "레스트", "TypeScript": "레스트", "Kotlin": "레스트", "Ruby": "레스트", "PHP": "레스트"}'),
    ('flatten', '{"Java": "평탄화", "Python": "평탄화", "JavaScript": "평탄화", "CSharp": "평탄화", "CPlusPlus": "평탄화", "C": "평탄화", "TypeScript": "평탄화", "Kotlin": "평탄화", "Ruby": "평탄화", "PHP": "평탄화"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('clone', '{"Java": "복제", "Python": "복제", "JavaScript": "복제", "CSharp": "복제", "CPlusPlus": "복제", "C": "복제", "TypeScript": "복제", "Kotlin": "복제", "Ruby": "복제", "PHP": "복제"}'),
    ('isEmpty', '{"Java": "비어 있음", "Python": "비어 있음", "JavaScript": "비어 있음", "CSharp": "비어 있음", "CPlusPlus": "비어 있음", "C": "비어 있음", "TypeScript": "비어 있음", "Kotlin": "비어 있음", "Ruby": "비어 있음", "PHP": "비어 있음"}'),
    ('insert', '{"Java": "삽입", "Python": "삽입", "JavaScript": "삽입", "CSharp": "삽입", "CPlusPlus": "삽입", "C": "삽입", "TypeScript": "삽입", "Kotlin": "삽입", "Ruby": "삽입", "PHP": "삽입"}'),
    ('contains', '{"Java": "포함", "Python": "포함", "JavaScript": "포함", "CSharp": "포함", "CPlusPlus": "포함", "C": "포함", "TypeScript": "포함", "Kotlin": "포함", "Ruby": "포함", "PHP": "포함"}'),
    ('remove', '{"Java": "제거", "Python": "제거", "JavaScript": "제거", "CSharp": "제거", "CPlusPlus": "제거", "C": "제거", "TypeScript": "제거", "Kotlin": "제거", "Ruby": "제거", "PHP": "제거"}'),
    ('values', '{"Java": "값", "Python": "값", "JavaScript": "값", "CSharp": "값", "CPlusPlus": "값", "C": "값", "TypeScript": "값", "Kotlin": "값", "Ruby": "값", "PHP": "값"}'),
    ('size', '{"Java": "크기", "Python": "크기", "JavaScript": "크기", "CSharp": "크기", "CPlusPlus": "크기", "C": "크기", "TypeScript": "크기", "Kotlin": "크기", "Ruby": "크기", "PHP": "크기"}'),
    ('clear', '{"Java": "초기화", "Python": "초기화", "JavaScript": "초기화", "CSharp": "초기화", "CPlusPlus": "초기화", "C": "초기화", "TypeScript": "초기화", "Kotlin": "초기화", "Ruby": "초기화", "PHP": "초기화"}'),
    ('lastIndexOf', '{"Java": "마지막 인덱스", "Python": "마지막 인덱스", "JavaScript": "마지막 인덱스", "CSharp": "마지막 인덱스", "CPlusPlus": "마지막 인덱스", "C": "마지막 인덱스", "TypeScript": "마지막 인덱스", "Kotlin": "마지막 인덱스", "Ruby": "마지막 인덱스", "PHP": "마지막 인덱스"}'),
    ('toString', '{"Java": "문자열 변환", "Python": "문자열 변환", "JavaScript": "문자열 변환", "CSharp": "문자열 변환", "CPlusPlus": "문자열 변환", "C": "문자열 변환", "TypeScript": "문자열 변환", "Kotlin": "문자열 변환", "Ruby": "문자열 변환", "PHP": "문자열 변환"}'),
    ('equals', '{"Java": "동등성 비교", "Python": "동등성 비교", "JavaScript": "동등성 비교", "CSharp": "동등성 비교", "CPlusPlus": "동등성 비교", "C": "동등성 비교", "TypeScript": "동등성 비교", "Kotlin": "동등성 비교", "Ruby": "동등성 비교", "PHP": "동등성 비교"}'),
    ('hashCode', '{"Java": "해시 코드", "Python": "해시 코드", "JavaScript": "해시 코드", "CSharp": "해시 코드", "CPlusPlus": "해시 코드", "C": "해시 코드", "TypeScript": "해시 코드", "Kotlin": "해시 코드", "Ruby": "해시 코드", "PHP": "해시 코드"}'),
    ('toArray', '{"Java": "배열로 변환", "Python": "배열로 변환", "JavaScript": "배열로 변환", "CSharp": "배열로 변환", "CPlusPlus": "배열로 변환", "C": "배열로 변환", "TypeScript": "배열로 변환", "Kotlin": "배열로 변환", "Ruby": "배열로 변환", "PHP": "배열로 변환"}'),
    ('addAll', '{"Java": "모두 추가", "Python": "모두 추가", "JavaScript": "모두 추가", "CSharp": "모두 추가", "CPlusPlus": "모두 추가", "C": "모두 추가", "TypeScript": "모두 추가", "Kotlin": "모두 추가", "Ruby": "모두 추가", "PHP": "모두 추가"}'),
    ('containsKey', '{"Java": "키 포함", "Python": "키 포함", "JavaScript": "키 포함", "CSharp": "키 포함", "CPlusPlus": "키 포함", "C": "키 포함", "TypeScript": "키 포함", "Kotlin": "키 포함", "Ruby": "키 포함", "PHP": "키 포함"}'),
    ('containsValue', '{"Java": "값 포함", "Python": "값 포함", "JavaScript": "값 포함", "CSharp": "값 포함", "CPlusPlus": "값 포함", "C": "값 포함", "TypeScript": "값 포함", "Kotlin": "값 포함", "Ruby": "값 포함", "PHP": "값 포함"}'),
    ('keySet', '{"Java": "키 집합", "Python": "키 집합", "JavaScript": "키 집합", "CSharp": "키 집합", "CPlusPlus": "키 집합", "C": "키 집합", "TypeScript": "키 집합", "Kotlin": "키 집합", "Ruby": "키 집합", "PHP": "키 집합"}'),
    ('entrySet', '{"Java": "엔트리 집합", "Python": "엔트리 집합", "JavaScript": "엔트리 집합", "CSharp": "엔트리 집합", "CPlusPlus": "엔트리 집합", "C": "엔트리 집합", "TypeScript": "엔트리 집합", "Kotlin": "엔트리 집합", "Ruby": "엔트리 집합", "PHP": "엔트리 집합"}'),
    ('putIfAbsent', '{"Java": "없으면 넣기", "Python": "없으면 넣기", "JavaScript": "없으면 넣기", "CSharp": "없으면 넣기", "CPlusPlus": "없으면 넣기", "C": "없으면 넣기", "TypeScript": "없으면 넣기", "Kotlin": "없으면 넣기", "Ruby": "없으면 넣기", "PHP": "없으면 넣기"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('getOrDefault', '{"Java": "기본값 가져오기", "Python": "기본값 가져오기", "JavaScript": "기본값 가져오기", "CSharp": "기본값 가져오기", "CPlusPlus": "기본값 가져오기", "C": "기본값 가져오기", "TypeScript": "기본값 가져오기", "Kotlin": "기본값 가져오기", "Ruby": "기본값 가져오기", "PHP": "기본값 가져오기"}'),
    ('compute', '{"Java": "계산", "Python": "계산", "JavaScript": "계산", "CSharp": "계산", "CPlusPlus": "계산", "C": "계산", "TypeScript": "계산", "Kotlin": "계산", "Ruby": "계산", "PHP": "계산"}'),
    ('merge', '{"Java": "병합", "Python": "병합", "JavaScript": "병합", "CSharp": "병합", "CPlusPlus": "병합", "C": "병합", "TypeScript": "병합", "Kotlin": "병합", "Ruby": "병합", "PHP": "병합"}'),
    ('split', '{"Java": "분할", "Python": "분할", "JavaScript": "분할", "CSharp": "분할", "CPlusPlus": "분할", "C": "분할", "TypeScript": "분할", "Kotlin": "분할", "Ruby": "분할", "PHP": "분할"}'),
    ('trim', '{"Java": "공백 제거", "Python": "공백 제거", "JavaScript": "공백 제거", "CSharp": "공백 제거", "CPlusPlus": "공백 제거", "C": "공백 제거", "TypeScript": "공백 제거", "Kotlin": "공백 제거", "Ruby": "공백 제거", "PHP": "공백 제거"}'),
    ('reverse', '{"Java": "역순", "Python": "역순", "JavaScript": "역순", "CSharp": "역순", "CPlusPlus": "역순", "C": "역순", "TypeScript": "역순", "Kotlin": "역순", "Ruby": "역순", "PHP": "역순"}'),
    ('sort', '{"Java": "정렬", "Python": "정렬", "JavaScript": "정렬", "CSharp": "정렬", "CPlusPlus": "정렬", "C": "정렬", "TypeScript": "정렬", "Kotlin": "정렬", "Ruby": "정렬", "PHP": "정렬"}'),
    ('shuffle', '{"Java": "섞기", "Python": "섞기", "JavaScript": "섞기", "CSharp": "섞기", "CPlusPlus": "섞기", "C": "섞기", "TypeScript": "섞기", "Kotlin": "섞기", "Ruby": "섞기", "PHP": "섞기"}'),
    ('binarySearch', '{"Java": "이진 검색", "Python": "이진 검색", "JavaScript": "이진 검색", "CSharp": "이진 검색", "CPlusPlus": "이진 검색", "C": "이진 검색", "TypeScript": "이진 검색", "Kotlin": "이진 검색", "Ruby": "이진 검색", "PHP": "이진 검색"}'),
    ('maxElement', '{"Java": "최댓값 요소", "Python": "최댓값 요소", "JavaScript": "최댓값 요소", "CSharp": "최댓값 요소", "CPlusPlus": "최댓값 요소", "C": "최댓값 요소", "TypeScript": "최댓값 요소", "Kotlin": "최댓값 요소", "Ruby": "최댓값 요소", "PHP": "최댓값 요소"}'),
    ('minElement', '{"Java": "최솟값 요소", "Python": "최솟값 요소", "JavaScript": "최솟값 요소", "CSharp": "최솟값 요소", "CPlusPlus": "최솟값 요소", "C": "최솟값 요소", "TypeScript": "최솟값 요소", "Kotlin": "최솟값 요소", "Ruby": "최솟값 요소", "PHP": "최솟값 요소"}'),
    ('rotate', '{"Java": "회전", "Python": "회전", "JavaScript": "회전", "CSharp": "회전", "CPlusPlus": "회전", "C": "회전", "TypeScript": "회전", "Kotlin": "회전", "Ruby": "회전", "PHP": "회전"}'),
    ('fill', '{"Java": "채우기", "Python": "채우기", "JavaScript": "채우기", "CSharp": "채우기", "CPlusPlus": "채우기", "C": "채우기", "TypeScript": "채우기", "Kotlin": "채우기", "Ruby": "채우기", "PHP": "채우기"}'),
    ('compare', '{"Java": "비교", "Python": "비교", "JavaScript": "비교", "CSharp": "비교", "CPlusPlus": "비교", "C": "비교", "TypeScript": "비교", "Kotlin": "비교", "Ruby": "비교", "PHP": "비교"}'),
    ('swap', '{"Java": "교환", "Python": "교환", "JavaScript": "교환", "CSharp": "교환", "CPlusPlus": "교환", "C": "교환", "TypeScript": "교환", "Kotlin": "교환", "Ruby": "교환", "PHP": "교환"}'),
    ('hex', '{"Java": "16진수", "Python": "16진수", "JavaScript": "16진수", "CSharp": "16진수", "CPlusPlus": "16진수", "C": "16진수", "TypeScript": "16진수", "Kotlin": "16진수", "Ruby": "16진수", "PHP": "16진수"}'),
    ('oct', '{"Java": "8진수", "Python": "8진수", "JavaScript": "8진수", "CSharp": "8진수", "CPlusPlus": "8진수", "C": "8진수", "TypeScript": "8진수", "Kotlin": "8진수", "Ruby": "8진수", "PHP": "8진수"}'),
    ('bin', '{"Java": "2진수", "Python": "2진수", "JavaScript": "2진수", "CSharp": "2진수", "CPlusPlus": "2진수", "C": "2진수", "TypeScript": "2진수", "Kotlin": "2진수", "Ruby": "2진수", "PHP": "2진수"}'),
    ('parseInt', '{"Java": "정수 변환", "Python": "정수 변환", "JavaScript": "정수 변환", "CSharp": "정수 변환", "CPlusPlus": "정수 변환", "C": "정수 변환", "TypeScript": "정수 변환", "Kotlin": "정수 변환", "Ruby": "정수 변환", "PHP": "정수 변환"}'),
    ('parseFloat', '{"Java": "실수 변환", "Python": "실수 변환", "JavaScript": "실수 변환", "CSharp": "실수 변환", "CPlusPlus": "실수 변환", "C": "실수 변환", "TypeScript": "실수 변환", "Kotlin": "실수 변환", "Ruby": "실수 변환", "PHP": "실수 변환"}'),
    ('pow', '{"Java": "제곱", "Python": "제곱", "JavaScript": "제곱", "CSharp": "제곱", "CPlusPlus": "제곱", "C": "제곱", "TypeScript": "제곱", "Kotlin": "제곱", "Ruby": "제곱", "PHP": "제곱"}'),
    ('sqrt', '{"Java": "제곱근", "Python": "제곱근", "JavaScript": "제곱근", "CSharp": "제곱근", "CPlusPlus": "제곱근", "C": "제곱근", "TypeScript": "제곱근", "Kotlin": "제곱근", "Ruby": "제곱근", "PHP": "제곱근"}'),
    ('abs', '{"Java": "절댓값", "Python": "절댓값", "JavaScript": "절댓값", "CSharp": "절댓값", "CPlusPlus": "절댓값", "C": "절댓값", "TypeScript": "절댓값", "Kotlin": "절댓값", "Ruby": "절댓값", "PHP": "절댓값"}'),
    ('floor', '{"Java": "내림", "Python": "내림", "JavaScript": "내림", "CSharp": "내림", "CPlusPlus": "내림", "C": "내림", "TypeScript": "내림", "Kotlin": "내림", "Ruby": "내림", "PHP": "내림"}'),
    ('ceil', '{"Java": "올림", "Python": "올림", "JavaScript": "올림", "CSharp": "올림", "CPlusPlus": "올림", "C": "올림", "TypeScript": "올림", "Kotlin": "올림", "Ruby": "올림", "PHP": "올림"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('round', '{"Java": "반올림", "Python": "반올림", "JavaScript": "반올림", "CSharp": "반올림", "CPlusPlus": "반올림", "C": "반올림", "TypeScript": "반올림", "Kotlin": "반올림", "Ruby": "반올림", "PHP": "반올림"}'),
    ('random', '{"Java": "랜덤값", "Python": "랜덤값", "JavaScript": "랜덤값", "CSharp": "랜덤값", "CPlusPlus": "랜덤값", "C": "랜덤값", "TypeScript": "랜덤값", "Kotlin": "랜덤값", "Ruby": "랜덤값", "PHP": "랜덤값"}'),
    ('log', '{"Java": "로그", "Python": "로그", "JavaScript": "로그", "CSharp": "로그", "CPlusPlus": "로그", "C": "로그", "TypeScript": "로그", "Kotlin": "로그", "Ruby": "로그", "PHP": "로그"}'),
    ('exp', '{"Java": "지수", "Python": "지수", "JavaScript": "지수", "CSharp": "지수", "CPlusPlus": "지수", "C": "지수", "TypeScript": "지수", "Kotlin": "지수", "Ruby": "지수", "PHP": "지수"}'),
    ('sin', '{"Java": "사인", "Python": "사인", "JavaScript": "사인", "CSharp": "사인", "CPlusPlus": "사인", "C": "사인", "TypeScript": "사인", "Kotlin": "사인", "Ruby": "사인", "PHP": "사인"}'),
    ('cos', '{"Java": "코사인", "Python": "코사인", "JavaScript": "코사인", "CSharp": "코사인", "CPlusPlus": "코사인", "C": "코사인", "TypeScript": "코사인", "Kotlin": "코사인", "Ruby": "코사인", "PHP": "코사인"}'),
    ('tan', '{"Java": "탄젠트", "Python": "탄젠트", "JavaScript": "탄젠트", "CSharp": "탄젠트", "CPlusPlus": "탄젠트", "C": "탄젠트", "TypeScript": "탄젠트", "Kotlin": "탄젠트", "Ruby": "탄젠트", "PHP": "탄젠트"}'),
    ('asin', '{"Java": "아크사인", "Python": "아크사인", "JavaScript": "아크사인", "CSharp": "아크사인", "CPlusPlus": "아크사인", "C": "아크사인", "TypeScript": "아크사인", "Kotlin": "아크사인", "Ruby": "아크사인", "PHP": "아크사인"}'),
    ('acos', '{"Java": "아크코사인", "Python": "아크코사인", "JavaScript": "아크코사인", "CSharp": "아크코사인", "CPlusPlus": "아크코사인", "C": "아크코사인", "TypeScript": "아크코사인", "Kotlin": "아크코사인", "Ruby": "아크코사인", "PHP": "아크코사인"}'),
    ('atan', '{"Java": "아크탄젠트", "Python": "아크탄젠트", "JavaScript": "아크탄젠트", "CSharp": "아크탄젠트", "CPlusPlus": "아크탄젠트", "C": "아크탄젠트", "TypeScript": "아크탄젠트", "Kotlin": "아크탄젠트", "Ruby": "아크탄젠트", "PHP": "아크탄젠트"}'),
    ('atan2', '{"Java": "아크탄젠트2", "Python": "아크탄젠트2", "JavaScript": "아크탄젠트2", "CSharp": "아크탄젠트2", "CPlusPlus": "아크탄젠트2", "C": "아크탄젠트2", "TypeScript": "아크탄젠트2", "Kotlin": "아크탄젠트2", "Ruby": "아크탄젠트2", "PHP": "아크탄젠트2"}'),
    ('hypot', '{"Java": "빗변", "Python": "빗변", "JavaScript": "빗변", "CSharp": "빗변", "CPlusPlus": "빗변", "C": "빗변", "TypeScript": "빗변", "Kotlin": "빗변", "Ruby": "빗변", "PHP": "빗변"}'),
    ('toDegrees', '{"Java": "도 변환", "Python": "도 변환", "JavaScript": "도 변환", "CSharp": "도 변환", "CPlusPlus": "도 변환", "C": "도 변환", "TypeScript": "도 변환", "Kotlin": "도 변환", "Ruby": "도 변환", "PHP": "도 변환"}'),
    ('toRadians', '{"Java": "라디안 변환", "Python": "라디안 변환", "JavaScript": "라디안 변환", "CSharp": "라디안 변환", "CPlusPlus": "라디안 변환", "C": "라디안 변환", "TypeScript": "라디안 변환", "Kotlin": "라디안 변환", "Ruby": "라디안 변환", "PHP": "라디안 변환"}'),
    ('signum', '{"Java": "부호", "Python": "부호", "JavaScript": "부호", "CSharp": "부호", "CPlusPlus": "부호", "C": "부호", "TypeScript": "부호", "Kotlin": "부호", "Ruby": "부호", "PHP": "부호"}'),
    ('getExponent', '{"Java": "지수 가져오기", "Python": "지수 가져오기", "JavaScript": "지수 가져오기", "CSharp": "지수 가져오기", "CPlusPlus": "지수 가져오기", "C": "지수 가져오기", "TypeScript": "지수 가져오기", "Kotlin": "지수 가져오기", "Ruby": "지수 가져오기", "PHP": "지수 가져오기"}'),
    ('nextUp', '{"Java": "다음 큰 값", "Python": "다음 큰 값", "JavaScript": "다음 큰 값", "CSharp": "다음 큰 값", "CPlusPlus": "다음 큰 값", "C": "다음 큰 값", "TypeScript": "다음 큰 값", "Kotlin": "다음 큰 값", "Ruby": "다음 큰 값", "PHP": "다음 큰 값"}'),
    ('nextDown', '{"Java": "다음 작은 값", "Python": "다음 작은 값", "JavaScript": "다음 작은 값", "CSharp": "다음 작은 값", "CPlusPlus": "다음 작은 값", "C": "다음 작은 값", "TypeScript": "다음 작은 값", "Kotlin": "다음 작은 값", "Ruby": "다음 작은 값", "PHP": "다음 작은 값"}'),
    ('ulp', '{"Java": "단위 증분", "Python": "단위 증분", "JavaScript": "단위 증분", "CSharp": "단위 증분", "CPlusPlus": "단위 증분", "C": "단위 증분", "TypeScript": "단위 증분", "Kotlin": "단위 증분", "Ruby": "단위 증분", "PHP": "단위 증분"}'),
    ('getRandom', '{"Java": "랜덤 값 가져오기", "Python": "랜덤 값 가져오기", "JavaScript": "랜덤 값 가져오기", "CSharp": "랜덤 값 가져오기", "CPlusPlus": "랜덤 값 가져오기", "C": "랜덤 값 가져오기", "TypeScript": "랜덤 값 가져오기", "Kotlin": "랜덤 값 가져오기", "Ruby": "랜덤 값 가져오기", "PHP": "랜덤 값 가져오기"}'),
    ('isFinite', '{"Java": "유한 여부 확인", "Python": "유한 여부 확인", "JavaScript": "유한 여부 확인", "CSharp": "유한 여부 확인", "CPlusPlus": "유한 여부 확인", "C": "유한 여부 확인", "TypeScript": "유한 여부 확인", "Kotlin": "유한 여부 확인", "Ruby": "유한 여부 확인", "PHP": "유한 여부 확인"}'),
    ('isNaN', '{"Java": "NaN 여부 확인", "Python": "NaN 여부 확인", "JavaScript": "NaN 여부 확인", "CSharp": "NaN 여부 확인", "CPlusPlus": "NaN 여부 확인", "C": "NaN 여부 확인", "TypeScript": "NaN 여부 확인", "Kotlin": "NaN 여부 확인", "Ruby": "NaN 여부 확인", "PHP": "NaN 여부 확인"}'),
    ('compareTo', '{"Java": "비교하기", "Python": "비교하기", "JavaScript": "비교하기", "CSharp": "비교하기", "CPlusPlus": "비교하기", "C": "비교하기", "TypeScript": "비교하기", "Kotlin": "비교하기", "Ruby": "비교하기", "PHP": "비교하기"}'),
    ('equalsIgnoreCase', '{"Java": "대소문자 무시 비교", "Python": "대소문자 무시 비교", "JavaScript": "대소문자 무시 비교", "CSharp": "대소문자 무시 비교", "CPlusPlus": "대소문자 무시 비교", "C": "대소문자 무시 비교", "TypeScript": "대소문자 무시 비교", "Kotlin": "대소문자 무시 비교", "Ruby": "대소문자 무시 비교", "PHP": "대소문자 무시 비교"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('substringBefore', '{"Java": "문자열 앞부분 자르기", "Python": "문자열 앞부분 자르기", "JavaScript": "문자열 앞부분 자르기", "CSharp": "문자열 앞부분 자르기", "CPlusPlus": "문자열 앞부분 자르기", "C": "문자열 앞부분 자르기", "TypeScript": "문자열 앞부분 자르기", "Kotlin": "문자열 앞부분 자르기", "Ruby": "문자열 앞부분 자르기", "PHP": "문자열 앞부분 자르기"}'),
    ('substringAfter', '{"Java": "문자열 뒷부분 자르기", "Python": "문자열 뒷부분 자르기", "JavaScript": "문자열 뒷부분 자르기", "CSharp": "문자열 뒷부분 자르기", "CPlusPlus": "문자열 뒷부분 자르기", "C": "문자열 뒷부분 자르기", "TypeScript": "문자열 뒷부분 자르기", "Kotlin": "문자열 뒷부분 자르기", "Ruby": "문자열 뒷부분 자르기", "PHP": "문자열 뒷부분 자르기"}'),
    ('join', '{"Java": "문자열 결합", "Python": "문자열 결합", "JavaScript": "문자열 결합", "CSharp": "문자열 결합", "CPlusPlus": "문자열 결합", "C": "문자열 결합", "TypeScript": "문자열 결합", "Kotlin": "문자열 결합", "Ruby": "문자열 결합", "PHP": "문자열 결합"}'),
    ('splitByCharacter', '{"Java": "문자 기준 분할", "Python": "문자 기준 분할", "JavaScript": "문자 기준 분할", "CSharp": "문자 기준 분할", "CPlusPlus": "문자 기준 분할", "C": "문자 기준 분할", "TypeScript": "문자 기준 분할", "Kotlin": "문자 기준 분할", "Ruby": "문자 기준 분할", "PHP": "문자 기준 분할"}'),
    ('toCharArray', '{"Java": "문자 배열로 변환", "Python": "문자 배열로 변환", "JavaScript": "문자 배열로 변환", "CSharp": "문자 배열로 변환", "CPlusPlus": "문자 배열로 변환", "C": "문자 배열로 변환", "TypeScript": "문자 배열로 변환", "Kotlin": "문자 배열로 변환", "Ruby": "문자 배열로 변환", "PHP": "문자 배열로 변환"}'),
    ('toList', '{"Java": "리스트로 변환", "Python": "리스트로 변환", "JavaScript": "리스트로 변환", "CSharp": "리스트로 변환", "CPlusPlus": "리스트로 변환", "C": "리스트로 변환", "TypeScript": "리스트로 변환", "Kotlin": "리스트로 변환", "Ruby": "리스트로 변환", "PHP": "리스트로 변환"}'),
    ('getBytes', '{"Java": "바이트 배열로 변환", "Python": "바이트 배열로 변환", "JavaScript": "바이트 배열로 변환", "CSharp": "바이트 배열로 변환", "CPlusPlus": "바이트 배열로 변환", "C": "바이트 배열로 변환", "TypeScript": "바이트 배열로 변환", "Kotlin": "바이트 배열로 변환", "Ruby": "바이트 배열로 변환", "PHP": "바이트 배열로 변환"}'),
    ('encodeBase64', '{"Java": "Base64 인코딩", "Python": "Base64 인코딩", "JavaScript": "Base64 인코딩", "CSharp": "Base64 인코딩", "CPlusPlus": "Base64 인코딩", "C": "Base64 인코딩", "TypeScript": "Base64 인코딩", "Kotlin": "Base64 인코딩", "Ruby": "Base64 인코딩", "PHP": "Base64 인코딩"}'),
    ('decodeBase64', '{"Java": "Base64 디코딩", "Python": "Base64 디코딩", "JavaScript": "Base64 디코딩", "CSharp": "Base64 디코딩", "CPlusPlus": "Base64 디코딩", "C": "Base64 디코딩", "TypeScript": "Base64 디코딩", "Kotlin": "Base64 디코딩", "Ruby": "Base64 디코딩", "PHP": "Base64 디코딩"}'),
    ('encrypt', '{"Java": "암호화", "Python": "암호화", "JavaScript": "암호화", "CSharp": "암호화", "CPlusPlus": "암호화", "C": "암호화", "TypeScript": "암호화", "Kotlin": "암호화", "Ruby": "암호화", "PHP": "암호화"}'),
    ('decrypt', '{"Java": "복호화", "Python": "복호화", "JavaScript": "복호화", "CSharp": "복호화", "CPlusPlus": "복호화", "C": "복호화", "TypeScript": "복호화", "Kotlin": "복호화", "Ruby": "복호화", "PHP": "복호화"}'),
    ('generateHash', '{"Java": "해시 생성", "Python": "해시 생성", "JavaScript": "해시 생성", "CSharp": "해시 생성", "CPlusPlus": "해시 생성", "C": "해시 생성", "TypeScript": "해시 생성", "Kotlin": "해시 생성", "Ruby": "해시 생성", "PHP": "해시 생성"}'),
    ('verifyHash', '{"Java": "해시 검증", "Python": "해시 검증", "JavaScript": "해시 검증", "CSharp": "해시 검증", "CPlusPlus": "해시 검증", "C": "해시 검증", "TypeScript": "해시 검증", "Kotlin": "해시 검증", "Ruby": "해시 검증", "PHP": "해시 검증"}'),
    ('serialize', '{"Java": "객체 직렬화", "Python": "객체 직렬화", "JavaScript": "객체 직렬화", "CSharp": "객체 직렬화", "CPlusPlus": "객체 직렬화", "C": "객체 직렬화", "TypeScript": "객체 직렬화", "Kotlin": "객체 직렬화", "Ruby": "객체 직렬화", "PHP": "객체 직렬화"}'),
    ('deserialize', '{"Java": "객체 역직렬화", "Python": "객체 역직렬화", "JavaScript": "객체 역직렬화", "CSharp": "객체 역직렬화", "CPlusPlus": "객체 역직렬화", "C": "객체 역직렬화", "TypeScript": "객체 역직렬화", "Kotlin": "객체 역직렬화", "Ruby": "객체 역직렬화", "PHP": "객체 역직렬화"}'),
    ('formatDate', '{"Java": "날짜 포맷", "Python": "날짜 포맷", "JavaScript": "날짜 포맷", "CSharp": "날짜 포맷", "CPlusPlus": "날짜 포맷", "C": "날짜 포맷", "TypeScript": "날짜 포맷", "Kotlin": "날짜 포맷", "Ruby": "날짜 포맷", "PHP": "날짜 포맷"}'),
    ('parseDate', '{"Java": "날짜 파싱", "Python": "날짜 파싱", "JavaScript": "날짜 파싱", "CSharp": "날짜 파싱", "CPlusPlus": "날짜 파싱", "C": "날짜 파싱", "TypeScript": "날짜 파싱", "Kotlin": "날짜 파싱", "Ruby": "날짜 파싱", "PHP": "날짜 파싱"}'),
    ('calculateAge', '{"Java": "나이 계산", "Python": "나이 계산", "JavaScript": "나이 계산", "CSharp": "나이 계산", "CPlusPlus": "나이 계산", "C": "나이 계산", "TypeScript": "나이 계산", "Kotlin": "나이 계산", "Ruby": "나이 계산", "PHP": "나이 계산"}'),
    ('compareDates', '{"Java": "날짜 비교", "Python": "날짜 비교", "JavaScript": "날짜 비교", "CSharp": "날짜 비교", "CPlusPlus": "날짜 비교", "C": "날짜 비교", "TypeScript": "날짜 비교", "Kotlin": "날짜 비교", "Ruby": "날짜 비교", "PHP": "날짜 비교"}'),
    ('getCurrentDate', '{"Java": "현재 날짜 가져오기", "Python": "현재 날짜 가져오기", "JavaScript": "현재 날짜 가져오기", "CSharp": "현재 날짜 가져오기", "CPlusPlus": "현재 날짜 가져오기", "C": "현재 날짜 가져오기", "TypeScript": "현재 날짜 가져오기", "Kotlin": "현재 날짜 가져오기", "Ruby": "현재 날짜 가져오기", "PHP": "현재 날짜 가져오기"}'),
    ('addDays', '{"Java": "날짜 더하기", "Python": "날짜 더하기", "JavaScript": "날짜 더하기", "CSharp": "날짜 더하기", "CPlusPlus": "날짜 더하기", "C": "날짜 더하기", "TypeScript": "날짜 더하기", "Kotlin": "날짜 더하기", "Ruby": "날짜 더하기", "PHP": "날짜 더하기"}'),
    ('subtractDays', '{"Java": "날짜 빼기", "Python": "날짜 빼기", "JavaScript": "날짜 빼기", "CSharp": "날짜 빼기", "CPlusPlus": "날짜 빼기", "C": "날짜 빼기", "TypeScript": "날짜 빼기", "Kotlin": "날짜 빼기", "Ruby": "날짜 빼기", "PHP": "날짜 빼기"}'),
    ('getDayOfWeek', '{"Java": "요일 가져오기", "Python": "요일 가져오기", "JavaScript": "요일 가져오기", "CSharp": "요일 가져오기", "CPlusPlus": "요일 가져오기", "C": "요일 가져오기", "TypeScript": "요일 가져오기", "Kotlin": "요일 가져오기", "Ruby": "요일 가져오기", "PHP": "요일 가져오기"}'),
    ('getMonth', '{"Java": "월 가져오기", "Python": "월 가져오기", "JavaScript": "월 가져오기", "CSharp": "월 가져오기", "CPlusPlus": "월 가져오기", "C": "월 가져오기", "TypeScript": "월 가져오기", "Kotlin": "월 가져오기", "Ruby": "월 가져오기", "PHP": "월 가져오기"}'),
    ('getYear', '{"Java": "년 가져오기", "Python": "년 가져오기", "JavaScript": "년 가져오기", "CSharp": "년 가져오기", "CPlusPlus": "년 가져오기", "C": "년 가져오기", "TypeScript": "년 가져오기", "Kotlin": "년 가져오기", "Ruby": "년 가져오기", "PHP": "년 가져오기"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('isLeapYear', '{"Java": "윤년 여부 확인", "Python": "윤년 여부 확인", "JavaScript": "윤년 여부 확인", "CSharp": "윤년 여부 확인", "CPlusPlus": "윤년 여부 확인", "C": "윤년 여부 확인", "TypeScript": "윤년 여부 확인", "Kotlin": "윤년 여부 확인", "Ruby": "윤년 여부 확인", "PHP": "윤년 여부 확인"}'),
    ('formatCurrency', '{"Java": "통화 포맷", "Python": "통화 포맷", "JavaScript": "통화 포맷", "CSharp": "통화 포맷", "CPlusPlus": "통화 포맷", "C": "통화 포맷", "TypeScript": "통화 포맷", "Kotlin": "통화 포맷", "Ruby": "통화 포맷", "PHP": "통화 포맷"}'),
    ('parseCurrency', '{"Java": "통화 파싱", "Python": "통화 파싱", "JavaScript": "통화 파싱", "CSharp": "통화 파싱", "CPlusPlus": "통화 파싱", "C": "통화 파싱", "TypeScript": "통화 파싱", "Kotlin": "통화 파싱", "Ruby": "통화 파싱", "PHP": "통화 파싱"}'),
    ('convertCurrency', '{"Java": "통화 변환", "Python": "통화 변환", "JavaScript": "통화 변환", "CSharp": "통화 변환", "CPlusPlus": "통화 변환", "C": "통화 변환", "TypeScript": "통화 변환", "Kotlin": "통화 변환", "Ruby": "통화 변환", "PHP": "통화 변환"}'),
    ('roundToDecimal', '{"Java": "소수점 반올림", "Python": "소수점 반올림", "JavaScript": "소수점 반올림", "CSharp": "소수점 반올림", "CPlusPlus": "소수점 반올림", "C": "소수점 반올림", "TypeScript": "소수점 반올림", "Kotlin": "소수점 반올림", "Ruby": "소수점 반올림", "PHP": "소수점 반올림"}'),
    ('formatNumber', '{"Java": "숫자 포맷", "Python": "숫자 포맷", "JavaScript": "숫자 포맷", "CSharp": "숫자 포맷", "CPlusPlus": "숫자 포맷", "C": "숫자 포맷", "TypeScript": "숫자 포맷", "Kotlin": "숫자 포맷", "Ruby": "숫자 포맷", "PHP": "숫자 포맷"}'),
    ('parseNumber', '{"Java": "숫자 파싱", "Python": "숫자 파싱", "JavaScript": "숫자 파싱", "CSharp": "숫자 파싱", "CPlusPlus": "숫자 파싱", "C": "숫자 파싱", "TypeScript": "숫자 파싱", "Kotlin": "숫자 파싱", "Ruby": "숫자 파싱", "PHP": "숫자 파싱"}'),
    ('generateUUID', '{"Java": "UUID 생성", "Python": "UUID 생성", "JavaScript": "UUID 생성", "CSharp": "UUID 생성", "CPlusPlus": "UUID 생성", "C": "UUID 생성", "TypeScript": "UUID 생성", "Kotlin": "UUID 생성", "Ruby": "UUID 생성", "PHP": "UUID 생성"}'),
    ('validateUUID', '{"Java": "UUID 유효성 검사", "Python": "UUID 유효성 검사", "JavaScript": "UUID 유효성 검사", "CSharp": "UUID 유효성 검사", "CPlusPlus": "UUID 유효성 검사", "C": "UUID 유효성 검사", "TypeScript": "UUID 유효성 검사", "Kotlin": "UUID 유효성 검사", "Ruby": "UUID 유효성 검사", "PHP": "UUID 유효성 검사"}'),
    ('generateToken', '{"Java": "토큰 생성", "Python": "토큰 생성", "JavaScript": "토큰 생성", "CSharp": "토큰 생성", "CPlusPlus": "토큰 생성", "C": "토큰 생성", "TypeScript": "토큰 생성", "Kotlin": "토큰 생성", "Ruby": "토큰 생성", "PHP": "토큰 생성"}'),
    ('validateToken', '{"Java": "토큰 유효성 검사", "Python": "토큰 유효성 검사", "JavaScript": "토큰 유효성 검사", "CSharp": "토큰 유효성 검사", "CPlusPlus": "토큰 유효성 검사", "C": "토큰 유효성 검사", "TypeScript": "토큰 유효성 검사", "Kotlin": "토큰 유효성 검사", "Ruby": "토큰 유효성 검사", "PHP": "토큰 유효성 검사"}'),
    ('hashPassword', '{"Java": "비밀번호 해시", "Python": "비밀번호 해시", "JavaScript": "비밀번호 해시", "CSharp": "비밀번호 해시", "CPlusPlus": "비밀번호 해시", "C": "비밀번호 해시", "TypeScript": "비밀번호 해시", "Kotlin": "비밀번호 해시", "Ruby": "비밀번호 해시", "PHP": "비밀번호 해시"}'),
    ('verifyPassword', '{"Java": "비밀번호 검증", "Python": "비밀번호 검증", "JavaScript": "비밀번호 검증", "CSharp": "비밀번호 검증", "CPlusPlus": "비밀번호 검증", "C": "비밀번호 검증", "TypeScript": "비밀번호 검증", "Kotlin": "비밀번호 검증", "Ruby": "비밀번호 검증", "PHP": "비밀번호 검증"}'),
    ('encryptData', '{"Java": "데이터 암호화", "Python": "데이터 암호화", "JavaScript": "데이터 암호화", "CSharp": "데이터 암호화", "CPlusPlus": "데이터 암호화", "C": "데이터 암호화", "TypeScript": "데이터 암호화", "Kotlin": "데이터 암호화", "Ruby": "데이터 암호화", "PHP": "데이터 암호화"}'),
    ('decryptData', '{"Java": "데이터 복호화", "Python": "데이터 복호화", "JavaScript": "데이터 복호화", "CSharp": "데이터 복호화", "CPlusPlus": "데이터 복호화", "C": "데이터 복호화", "TypeScript": "데이터 복호화", "Kotlin": "데이터 복호화", "Ruby": "데이터 복호화", "PHP": "데이터 복호화"}'),
    ('generateRandomString', '{"Java": "랜덤 문자열 생성", "Python": "랜덤 문자열 생성", "JavaScript": "랜덤 문자열 생성", "CSharp": "랜덤 문자열 생성", "CPlusPlus": "랜덤 문자열 생성", "C": "랜덤 문자열 생성", "TypeScript": "랜덤 문자열 생성", "Kotlin": "랜덤 문자열 생성", "Ruby": "랜덤 문자열 생성", "PHP": "랜덤 문자열 생성"}'),
    ('validateEmail', '{"Java": "이메일 유효성 검사", "Python": "이메일 유효성 검사", "JavaScript": "이메일 유효성 검사", "CSharp": "이메일 유효성 검사", "CPlusPlus": "이메일 유효성 검사", "C": "이메일 유효성 검사", "TypeScript": "이메일 유효성 검사", "Kotlin": "이메일 유효성 검사", "Ruby": "이메일 유효성 검사", "PHP": "이메일 유효성 검사"}'),
    ('sendEmail', '{"Java": "이메일 전송", "Python": "이메일 전송", "JavaScript": "이메일 전송", "CSharp": "이메일 전송", "CPlusPlus": "이메일 전송", "C": "이메일 전송", "TypeScript": "이메일 전송", "Kotlin": "이메일 전송", "Ruby": "이메일 전송", "PHP": "이메일 전송"}'),
    ('readFile', '{"Java": "파일 읽기", "Python": "파일 읽기", "JavaScript": "파일 읽기", "CSharp": "파일 읽기", "CPlusPlus": "파일 읽기", "C": "파일 읽기", "TypeScript": "파일 읽기", "Kotlin": "파일 읽기", "Ruby": "파일 읽기", "PHP": "파일 읽기"}'),
    ('writeFile', '{"Java": "파일 쓰기", "Python": "파일 쓰기", "JavaScript": "파일 쓰기", "CSharp": "파일 쓰기", "CPlusPlus": "파일 쓰기", "C": "파일 쓰기", "TypeScript": "파일 쓰기", "Kotlin": "파일 쓰기", "Ruby": "파일 쓰기", "PHP": "파일 쓰기"}'),
    ('deleteFile', '{"Java": "파일 삭제", "Python": "파일 삭제", "JavaScript": "파일 삭제", "CSharp": "파일 삭제", "CPlusPlus": "파일 삭제", "C": "파일 삭제", "TypeScript": "파일 삭제", "Kotlin": "파일 삭제", "Ruby": "파일 삭제", "PHP": "파일 삭제"}'),
    ('copyFile', '{"Java": "파일 복사", "Python": "파일 복사", "JavaScript": "파일 복사", "CSharp": "파일 복사", "CPlusPlus": "파일 복사", "C": "파일 복사", "TypeScript": "파일 복사", "Kotlin": "파일 복사", "Ruby": "파일 복사", "PHP": "파일 복사"}'),
    ('moveFile', '{"Java": "파일 이동", "Python": "파일 이동", "JavaScript": "파일 이동", "CSharp": "파일 이동", "CPlusPlus": "파일 이동", "C": "파일 이동", "TypeScript": "파일 이동", "Kotlin": "파일 이동", "Ruby": "파일 이동", "PHP": "파일 이동"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('renameFile', '{"Java": "파일 이름 변경", "Python": "파일 이름 변경", "JavaScript": "파일 이름 변경", "CSharp": "파일 이름 변경", "CPlusPlus": "파일 이름 변경", "C": "파일 이름 변경", "TypeScript": "파일 이름 변경", "Kotlin": "파일 이름 변경", "Ruby": "파일 이름 변경", "PHP": "파일 이름 변경"}'),
    ('readDirectory', '{"Java": "디렉터리 읽기", "Python": "디렉터리 읽기", "JavaScript": "디렉터리 읽기", "CSharp": "디렉터리 읽기", "CPlusPlus": "디렉터리 읽기", "C": "디렉터리 읽기", "TypeScript": "디렉터리 읽기", "Kotlin": "디렉터리 읽기", "Ruby": "디렉터리 읽기", "PHP": "디렉터리 읽기"}'),
    ('createDirectory', '{"Java": "디렉터리 생성", "Python": "디렉터리 생성", "JavaScript": "디렉터리 생성", "CSharp": "디렉터리 생성", "CPlusPlus": "디렉터리 생성", "C": "디렉터리 생성", "TypeScript": "디렉터리 생성", "Kotlin": "디렉터리 생성", "Ruby": "디렉터리 생성", "PHP": "디렉터리 생성"}'),
    ('deleteDirectory', '{"Java": "디렉터리 삭제", "Python": "디렉터리 삭제", "JavaScript": "디렉터리 삭제", "CSharp": "디렉터리 삭제", "CPlusPlus": "디렉터리 삭제", "C": "디렉터리 삭제", "TypeScript": "디렉터리 삭제", "Kotlin": "디렉터리 삭제", "Ruby": "디렉터리 삭제", "PHP": "디렉터리 삭제"}'),
    ('watchFile', '{"Java": "파일 변경 감시", "Python": "파일 변경 감시", "JavaScript": "파일 변경 감시", "CSharp": "파일 변경 감시", "CPlusPlus": "파일 변경 감시", "C": "파일 변경 감시", "TypeScript": "파일 변경 감시", "Kotlin": "파일 변경 감시", "Ruby": "파일 변경 감시", "PHP": "파일 변경 감시"}'),
    ('watchDirectory', '{"Java": "디렉터리 변경 감시", "Python": "디렉터리 변경 감시", "JavaScript": "디렉터리 변경 감시", "CSharp": "디렉터리 변경 감시", "CPlusPlus": "디렉터리 변경 감시", "C": "디렉터리 변경 감시", "TypeScript": "디렉터리 변경 감시", "Kotlin": "디렉터리 변경 감시", "Ruby": "디렉터리 변경 감시", "PHP": "디렉터리 변경 감시"}'),
    ('compressFile', '{"Java": "파일 압축", "Python": "파일 압축", "JavaScript": "파일 압축", "CSharp": "파일 압축", "CPlusPlus": "파일 압축", "C": "파일 압축", "TypeScript": "파일 압축", "Kotlin": "파일 압축", "Ruby": "파일 압축", "PHP": "파일 압축"}'),
    ('decompressFile', '{"Java": "파일 압축 해제", "Python": "파일 압축 해제", "JavaScript": "파일 압축 해제", "CSharp": "파일 압축 해제", "CPlusPlus": "파일 압축 해제", "C": "파일 압축 해제", "TypeScript": "파일 압축 해제", "Kotlin": "파일 압축 해제", "Ruby": "파일 압축 해제", "PHP": "파일 압축 해제"}'),
    ('compressDirectory', '{"Java": "디렉터리 압축", "Python": "디렉터리 압축", "JavaScript": "디렉터리 압축", "CSharp": "디렉터리 압축", "CPlusPlus": "디렉터리 압축", "C": "디렉터리 압축", "TypeScript": "디렉터리 압축", "Kotlin": "디렉터리 압축", "Ruby": "디렉터리 압축", "PHP": "디렉터리 압축"}'),
    ('decompressDirectory', '{"Java": "디렉터리 압축 해제", "Python": "디렉터리 압축 해제", "JavaScript": "디렉터리 압축 해제", "CSharp": "디렉터리 압축 해제", "CPlusPlus": "디렉터리 압축 해제", "C": "디렉터리 압축 해제", "TypeScript": "디렉터리 압축 해제", "Kotlin": "디렉터리 압축 해제", "Ruby": "디렉터리 압축 해제", "PHP": "디렉터리 압축 해제"}'),
    ('listFiles', '{"Java": "파일 목록 출력", "Python": "파일 목록 출력", "JavaScript": "파일 목록 출력", "CSharp": "파일 목록 출력", "CPlusPlus": "파일 목록 출력", "C": "파일 목록 출력", "TypeScript": "파일 목록 출력", "Kotlin": "파일 목록 출력", "Ruby": "파일 목록 출력", "PHP": "파일 목록 출력"}'),
    ('listDirectories', '{"Java": "디렉터리 목록 출력", "Python": "디렉터리 목록 출력", "JavaScript": "디렉터리 목록 출력", "CSharp": "디렉터리 목록 출력", "CPlusPlus": "디렉터리 목록 출력", "C": "디렉터리 목록 출력", "TypeScript": "디렉터리 목록 출력", "Kotlin": "디렉터리 목록 출력", "Ruby": "디렉터리 목록 출력", "PHP": "디렉터리 목록 출력"}'),
    ('filterFiles', '{"Java": "파일 필터링", "Python": "파일 필터링", "JavaScript": "파일 필터링", "CSharp": "파일 필터링", "CPlusPlus": "파일 필터링", "C": "파일 필터링", "TypeScript": "파일 필터링", "Kotlin": "파일 필터링", "Ruby": "파일 필터링", "PHP": "파일 필터링"}'),
    ('filterDirectories', '{"Java": "디렉터리 필터링", "Python": "디렉터리 필터링", "JavaScript": "디렉터리 필터링", "CSharp": "디렉터리 필터링", "CPlusPlus": "디렉터리 필터링", "C": "디렉터리 필터링", "TypeScript": "디렉터리 필터링", "Kotlin": "디렉터리 필터링", "Ruby": "디렉터리 필터링", "PHP": "디렉터리 필터링"}'),
    ('calculateChecksum', '{"Java": "체크섬 계산", "Python": "체크섬 계산", "JavaScript": "체크섬 계산", "CSharp": "체크섬 계산", "CPlusPlus": "체크섬 계산", "C": "체크섬 계산", "TypeScript": "체크섬 계산", "Kotlin": "체크섬 계산", "Ruby": "체크섬 계산", "PHP": "체크섬 계산"}'),
    ('verifyChecksum', '{"Java": "체크섬 검증", "Python": "체크섬 검증", "JavaScript": "체크섬 검증", "CSharp": "체크섬 검증", "CPlusPlus": "체크섬 검증", "C": "체크섬 검증", "TypeScript": "체크섬 검증", "Kotlin": "체크섬 검증", "Ruby": "체크섬 검증", "PHP": "체크섬 검증"}'),
    ('downloadFile', '{"Java": "파일 다운로드", "Python": "파일 다운로드", "JavaScript": "파일 다운로드", "CSharp": "파일 다운로드", "CPlusPlus": "파일 다운로드", "C": "파일 다운로드", "TypeScript": "파일 다운로드", "Kotlin": "파일 다운로드", "Ruby": "파일 다운로드", "PHP": "파일 다운로드"}'),
    ('uploadFile', '{"Java": "파일 업로드", "Python": "파일 업로드", "JavaScript": "파일 업로드", "CSharp": "파일 업로드", "CPlusPlus": "파일 업로드", "C": "파일 업로드", "TypeScript": "파일 업로드", "Kotlin": "파일 업로드", "Ruby": "파일 업로드", "PHP": "파일 업로드"}'),
    ('readProperties', '{"Java": "속성 읽기", "Python": "속성 읽기", "JavaScript": "속성 읽기", "CSharp": "속성 읽기", "CPlusPlus": "속성 읽기", "C": "속성 읽기", "TypeScript": "속성 읽기", "Kotlin": "속성 읽기", "Ruby": "속성 읽기", "PHP": "속성 읽기"}'),
    ('writeProperties', '{"Java": "속성 쓰기", "Python": "속성 쓰기", "JavaScript": "속성 쓰기", "CSharp": "속성 쓰기", "CPlusPlus": "속성 쓰기", "C": "속성 쓰기", "TypeScript": "속성 쓰기", "Kotlin": "속성 쓰기", "Ruby": "속성 쓰기", "PHP": "속성 쓰기"}'),
    ('loadConfig', '{"Java": "구성 로드", "Python": "구성 로드", "JavaScript": "구성 로드", "CSharp": "구성 로드", "CPlusPlus": "구성 로드", "C": "구성 로드", "TypeScript": "구성 로드", "Kotlin": "구성 로드", "Ruby": "구성 로드", "PHP": "구성 로드"}'),
    ('saveConfig', '{"Java": "구성 저장", "Python": "구성 저장", "JavaScript": "구성 저장", "CSharp": "구성 저장", "CPlusPlus": "구성 저장", "C": "구성 저장", "TypeScript": "구성 저장", "Kotlin": "구성 저장", "Ruby": "구성 저장", "PHP": "구성 저장"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('connectDatabase', '{"Java": "데이터베이스 연결", "Python": "데이터베이스 연결", "JavaScript": "데이터베이스 연결", "CSharp": "데이터베이스 연결", "CPlusPlus": "데이터베이스 연결", "C": "데이터베이스 연결", "TypeScript": "데이터베이스 연결", "Kotlin": "데이터베이스 연결", "Ruby": "데이터베이스 연결", "PHP": "데이터베이스 연결"}'),
    ('disconnectDatabase', '{"Java": "데이터베이스 연결 해제", "Python": "데이터베이스 연결 해제", "JavaScript": "데이터베이스 연결 해제", "CSharp": "데이터베이스 연결 해제", "CPlusPlus": "데이터베이스 연결 해제", "C": "데이터베이스 연결 해제", "TypeScript": "데이터베이스 연결 해제", "Kotlin": "데이터베이스 연결 해제", "Ruby": "데이터베이스 연결 해제", "PHP": "데이터베이스 연결 해제"}'),
    ('executeQuery', '{"Java": "쿼리 실행", "Python": "쿼리 실행", "JavaScript": "쿼리 실행", "CSharp": "쿼리 실행", "CPlusPlus": "쿼리 실행", "C": "쿼리 실행", "TypeScript": "쿼리 실행", "Kotlin": "쿼리 실행", "Ruby": "쿼리 실행", "PHP": "쿼리 실행"}'),
    ('executeUpdate', '{"Java": "업데이트 실행", "Python": "업데이트 실행", "JavaScript": "업데이트 실행", "CSharp": "업데이트 실행", "CPlusPlus": "업데이트 실행", "C": "업데이트 실행", "TypeScript": "업데이트 실행", "Kotlin": "업데이트 실행", "Ruby": "업데이트 실행", "PHP": "업데이트 실행"}'),
    ('beginTransaction', '{"Java": "트랜잭션 시작", "Python": "트랜잭션 시작", "JavaScript": "트랜잭션 시작", "CSharp": "트랜잭션 시작", "CPlusPlus": "트랜잭션 시작", "C": "트랜잭션 시작", "TypeScript": "트랜잭션 시작", "Kotlin": "트랜잭션 시작", "Ruby": "트랜잭션 시작", "PHP": "트랜잭션 시작"}'),
    ('commitTransaction', '{"Java": "트랜잭션 커밋", "Python": "트랜잭션 커밋", "JavaScript": "트랜잭션 커밋", "CSharp": "트랜잭션 커밋", "CPlusPlus": "트랜잭션 커밋", "C": "트랜잭션 커밋", "TypeScript": "트랜잭션 커밋", "Kotlin": "트랜잭션 커밋", "Ruby": "트랜잭션 커밋", "PHP": "트랜잭션 커밋"}'),
    ('rollbackTransaction', '{"Java": "트랜잭션 롤백", "Python": "트랜잭션 롤백", "JavaScript": "트랜잭션 롤백", "CSharp": "트랜잭션 롤백", "CPlusPlus": "트랜잭션 롤백", "C": "트랜잭션 롤백", "TypeScript": "트랜잭션 롤백", "Kotlin": "트랜잭션 롤백", "Ruby": "트랜잭션 롤백", "PHP": "트랜잭션 롤백"}'),
    ('prepareStatement', '{"Java": "프리페어드 스테이트먼트 준비", "Python": "프리페어드 스테이트먼트 준비", "JavaScript": "프리페어드 스테이트먼트 준비", "CSharp": "프리페어드 스테이트먼트 준비", "CPlusPlus": "프리페어드 스테이트먼트 준비", "C": "프리페어드 스테이트먼트 준비", "TypeScript": "프리페어드 스테이트먼트 준비", "Kotlin": "프리페어드 스테이트먼트 준비", "Ruby": "프리페어드 스테이트먼트 준비", "PHP": "프리페어드 스테이트먼트 준비"}'),
    ('closeStatement', '{"Java": "스테이트먼트 닫기", "Python": "스테이트먼트 닫기", "JavaScript": "스테이트먼트 닫기", "CSharp": "스테이트먼트 닫기", "CPlusPlus": "스테이트먼트 닫기", "C": "스테이트먼트 닫기", "TypeScript": "스테이트먼트 닫기", "Kotlin": "스테이트먼트 닫기", "Ruby": "스테이트먼트 닫기", "PHP": "스테이트먼트 닫기"}'),
    ('executeBatch', '{"Java": "배치 실행", "Python": "배치 실행", "JavaScript": "배치 실행", "CSharp": "배치 실행", "CPlusPlus": "배치 실행", "C": "배치 실행", "TypeScript": "배치 실행", "Kotlin": "배치 실행", "Ruby": "배치 실행", "PHP": "배치 실행"}'),
    ('addBatch', '{"Java": "배치 추가", "Python": "배치 추가", "JavaScript": "배치 추가", "CSharp": "배치 추가", "CPlusPlus": "배치 추가", "C": "배치 추가", "TypeScript": "배치 추가", "Kotlin": "배치 추가", "Ruby": "배치 추가", "PHP": "배치 추가"}'),
    ('clearBatch', '{"Java": "배치 초기화", "Python": "배치 초기화", "JavaScript": "배치 초기화", "CSharp": "배치 초기화", "CPlusPlus": "배치 초기화", "C": "배치 초기화", "TypeScript": "배치 초기화", "Kotlin": "배치 초기화", "Ruby": "배치 초기화", "PHP": "배치 초기화"}'),
    ('setAutoCommit', '{"Java": "자동 커밋 설정", "Python": "자동 커밋 설정", "JavaScript": "자동 커밋 설정", "CSharp": "자동 커밋 설정", "CPlusPlus": "자동 커밋 설정", "C": "자동 커밋 설정", "TypeScript": "자동 커밋 설정", "Kotlin": "자동 커밋 설정", "Ruby": "자동 커밋 설정", "PHP": "자동 커밋 설정"}'),
    ('isClosed', '{"Java": "닫힘 여부 확인", "Python": "닫힘 여부 확인", "JavaScript": "닫힘 여부 확인", "CSharp": "닫힘 여부 확인", "CPlusPlus": "닫힘 여부 확인", "C": "닫힘 여부 확인", "TypeScript": "닫힘 여부 확인", "Kotlin": "닫힘 여부 확인", "Ruby": "닫힘 여부 확인", "PHP": "닫힘 여부 확인"}'),
    ('isValid', '{"Java": "유효성 확인", "Python": "유효성 확인", "JavaScript": "유효성 확인", "CSharp": "유효성 확인", "CPlusPlus": "유효성 확인", "C": "유효성 확인", "TypeScript": "유효성 확인", "Kotlin": "유효성 확인", "Ruby": "유효성 확인", "PHP": "유효성 확인"}'),
    ('getMetaData', '{"Java": "메타데이터 가져오기", "Python": "메타데이터 가져오기", "JavaScript": "메타데이터 가져오기", "CSharp": "메타데이터 가져오기", "CPlusPlus": "메타데이터 가져오기", "C": "메타데이터 가져오기", "TypeScript": "메타데이터 가져오기", "Kotlin": "메타데이터 가져오기", "Ruby": "메타데이터 가져오기", "PHP": "메타데이터 가져오기"}'),
    ('getResultSet', '{"Java": "결과 집합 가져오기", "Python": "결과 집합 가져오기", "JavaScript": "결과 집합 가져오기", "CSharp": "결과 집합 가져오기", "CPlusPlus": "결과 집합 가져오기", "C": "결과 집합 가져오기", "TypeScript": "결과 집합 가져오기", "Kotlin": "결과 집합 가져오기", "Ruby": "결과 집합 가져오기", "PHP": "결과 집합 가져오기"}'),
    ('getGeneratedKeys', '{"Java": "생성된 키 가져오기", "Python": "생성된 키 가져오기", "JavaScript": "생성된 키 가져오기", "CSharp": "생성된 키 가져오기", "CPlusPlus": "생성된 키 가져오기", "C": "생성된 키 가져오기", "TypeScript": "생성된 키 가져오기", "Kotlin": "생성된 키 가져오기", "Ruby": "생성된 키 가져오기", "PHP": "생성된 키 가져오기"}'),
    ('setQueryTimeout', '{"Java": "쿼리 타임아웃 설정", "Python": "쿼리 타임아웃 설정", "JavaScript": "쿼리 타임아웃 설정", "CSharp": "쿼리 타임아웃 설정", "CPlusPlus": "쿼리 타임아웃 설정", "C": "쿼리 타임아웃 설정", "TypeScript": "쿼리 타임아웃 설정", "Kotlin": "쿼리 타임아웃 설정", "Ruby": "쿼리 타임아웃 설정", "PHP": "쿼리 타임아웃 설정"}'),
    ('cancelQuery', '{"Java": "쿼리 취소", "Python": "쿼리 취소", "JavaScript": "쿼리 취소", "CSharp": "쿼리 취소", "CPlusPlus": "쿼리 취소", "C": "쿼리 취소", "TypeScript": "쿼리 취소", "Kotlin": "쿼리 취소", "Ruby": "쿼리 취소", "PHP": "쿼리 취소"}'),
    ('getWarnings', '{"Java": "경고 가져오기", "Python": "경고 가져오기", "JavaScript": "경고 가져오기", "CSharp": "경고 가져오기", "CPlusPlus": "경고 가져오기", "C": "경고 가져오기", "TypeScript": "경고 가져오기", "Kotlin": "경고 가져오기", "Ruby": "경고 가져오기", "PHP": "경고 가져오기"}'),
    ('clearWarnings', '{"Java": "경고 초기화", "Python": "경고 초기화", "JavaScript": "경고 초기화", "CSharp": "경고 초기화", "CPlusPlus": "경고 초기화", "C": "경고 초기화", "TypeScript": "경고 초기화", "Kotlin": "경고 초기화", "Ruby": "경고 초기화", "PHP": "경고 초기화"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('getConnection', '{"Java": "연결 가져오기", "Python": "연결 가져오기", "JavaScript": "연결 가져오기", "CSharp": "연결 가져오기", "CPlusPlus": "연결 가져오기", "C": "연결 가져오기", "TypeScript": "연결 가져오기", "Kotlin": "연결 가져오기", "Ruby": "연결 가져오기", "PHP": "연결 가져오기"}'),
    ('closeConnection', '{"Java": "연결 닫기", "Python": "연결 닫기", "JavaScript": "연결 닫기", "CSharp": "연결 닫기", "CPlusPlus": "연결 닫기", "C": "연결 닫기", "TypeScript": "연결 닫기", "Kotlin": "연결 닫기", "Ruby": "연결 닫기", "PHP": "연결 닫기"}'),
    ('pingDatabase', '{"Java": "데이터베이스 핑", "Python": "데이터베이스 핑", "JavaScript": "데이터베이스 핑", "CSharp": "데이터베이스 핑", "CPlusPlus": "데이터베이스 핑", "C": "데이터베이스 핑", "TypeScript": "데이터베이스 핑", "Kotlin": "데이터베이스 핑", "Ruby": "데이터베이스 핑", "PHP": "데이터베이스 핑"}'),
    ('setSavepoint', '{"Java": "세이브포인트 설정", "Python": "세이브포인트 설정", "JavaScript": "세이브포인트 설정", "CSharp": "세이브포인트 설정", "CPlusPlus": "세이브포인트 설정", "C": "세이브포인트 설정", "TypeScript": "세이브포인트 설정", "Kotlin": "세이브포인트 설정", "Ruby": "세이브포인트 설정", "PHP": "세이브포인트 설정"}'),
    ('releaseSavepoint', '{"Java": "세이브포인트 해제", "Python": "세이브포인트 해제", "JavaScript": "세이브포인트 해제", "CSharp": "세이브포인트 해제", "CPlusPlus": "세이브포인트 해제", "C": "세이브포인트 해제", "TypeScript": "세이브포인트 해제", "Kotlin": "세이브포인트 해제", "Ruby": "세이브포인트 해제", "PHP": "세이브포인트 해제"}'),
    ('setCatalog', '{"Java": "카탈로그 설정", "Python": "카탈로그 설정", "JavaScript": "카탈로그 설정", "CSharp": "카탈로그 설정", "CPlusPlus": "카탈로그 설정", "C": "카탈로그 설정", "TypeScript": "카탈로그 설정", "Kotlin": "카탈로그 설정", "Ruby": "카탈로그 설정", "PHP": "카탈로그 설정"}'),
    ('getCatalog', '{"Java": "카탈로그 가져오기", "Python": "카탈로그 가져오기", "JavaScript": "카탈로그 가져오기", "CSharp": "카탈로그 가져오기", "CPlusPlus": "카탈로그 가져오기", "C": "카탈로그 가져오기", "TypeScript": "카탈로그 가져오기", "Kotlin": "카탈로그 가져오기", "Ruby": "카탈로그 가져오기", "PHP": "카탈로그 가져오기"}'),
    ('setSchema', '{"Java": "스키마 설정", "Python": "스키마 설정", "JavaScript": "스키마 설정", "CSharp": "스키마 설정", "CPlusPlus": "스키마 설정", "C": "스키마 설정", "TypeScript": "스키마 설정", "Kotlin": "스키마 설정", "Ruby": "스키마 설정", "PHP": "스키마 설정"}'),
    ('getSchema', '{"Java": "스키마 가져오기", "Python": "스키마 가져오기", "JavaScript": "스키마 가져오기", "CSharp": "스키마 가져오기", "CPlusPlus": "스키마 가져오기", "C": "스키마 가져오기", "TypeScript": "스키마 가져오기", "Kotlin": "스키마 가져오기", "Ruby": "스키마 가져오기", "PHP": "스키마 가져오기"}'),
    ('setReadOnly', '{"Java": "읽기 전용 설정", "Python": "읽기 전용 설정", "JavaScript": "읽기 전용 설정", "CSharp": "읽기 전용 설정", "CPlusPlus": "읽기 전용 설정", "C": "읽기 전용 설정", "TypeScript": "읽기 전용 설정", "Kotlin": "읽기 전용 설정", "Ruby": "읽기 전용 설정", "PHP": "읽기 전용 설정"}'),
    ('isReadOnly', '{"Java": "읽기 전용 여부 확인", "Python": "읽기 전용 여부 확인", "JavaScript": "읽기 전용 여부 확인", "CSharp": "읽기 전용 여부 확인", "CPlusPlus": "읽기 전용 여부 확인", "C": "읽기 전용 여부 확인", "TypeScript": "읽기 전용 여부 확인", "Kotlin": "읽기 전용 여부 확인", "Ruby": "읽기 전용 여부 확인", "PHP": "읽기 전용 여부 확인"}'),
    ('setTransactionIsolation', '{"Java": "트랜잭션 격리 수준 설정", "Python": "트랜잭션 격리 수준 설정", "JavaScript": "트랜잭션 격리 수준 설정", "CSharp": "트랜잭션 격리 수준 설정", "CPlusPlus": "트랜잭션 격리 수준 설정", "C": "트랜잭션 격리 수준 설정", "TypeScript": "트랜잭션 격리 수준 설정", "Kotlin": "트랜잭션 격리 수준 설정", "Ruby": "트랜잭션 격리 수준 설정", "PHP": "트랜잭션 격리 수준 설정"}'),
    ('getTransactionIsolation', '{"Java": "트랜잭션 격리 수준 가져오기", "Python": "트랜잭션 격리 수준 가져오기", "JavaScript": "트랜잭션 격리 수준 가져오기", "CSharp": "트랜잭션 격리 수준 가져오기", "CPlusPlus": "트랜잭션 격리 수준 가져오기", "C": "트랜잭션 격리 수준 가져오기", "TypeScript": "트랜잭션 격리 수준 가져오기", "Kotlin": "트랜잭션 격리 수준 가져오기", "Ruby": "트랜잭션 격리 수준 가져오기", "PHP": "트랜잭션 격리 수준 가져오기"}'),
    ('clearParameters', '{"Java": "매개변수 초기화", "Python": "매개변수 초기화", "JavaScript": "매개변수 초기화", "CSharp": "매개변수 초기화", "CPlusPlus": "매개변수 초기화", "C": "매개변수 초기화", "TypeScript": "매개변수 초기화", "Kotlin": "매개변수 초기화", "Ruby": "매개변수 초기화", "PHP": "매개변수 초기화"}'),
    ('getParameterMetaData', '{"Java": "매개변수 메타데이터 가져오기", "Python": "매개변수 메타데이터 가져오기", "JavaScript": "매개변수 메타데이터 가져오기", "CSharp": "매개변수 메타데이터 가져오기", "CPlusPlus": "매개변수 메타데이터 가져오기", "C": "매개변수 메타데이터 가져오기", "TypeScript": "매개변수 메타데이터 가져오기", "Kotlin": "매개변수 메타데이터 가져오기", "Ruby": "매개변수 메타데이터 가져오기", "PHP": "매개변수 메타데이터 가져오기"}'),
    ('getFetchSize', '{"Java": "페치 크기 가져오기", "Python": "페치 크기 가져오기", "JavaScript": "페치 크기 가져오기", "CSharp": "페치 크기 가져오기", "CPlusPlus": "페치 크기 가져오기", "C": "페치 크기 가져오기", "TypeScript": "페치 크기 가져오기", "Kotlin": "페치 크기 가져오기", "Ruby": "페치 크기 가져오기", "PHP": "페치 크기 가져오기"}'),
    ('setFetchSize', '{"Java": "페치 크기 설정", "Python": "페치 크기 설정", "JavaScript": "페치 크기 설정", "CSharp": "페치 크기 설정", "CPlusPlus": "페치 크기 설정", "C": "페치 크기 설정", "TypeScript": "페치 크기 설정", "Kotlin": "페치 크기 설정", "Ruby": "페치 크기 설정", "PHP": "페치 크기 설정"}'),
    ('getMaxRows', '{"Java": "최대 행 수 가져오기", "Python": "최대 행 수 가져오기", "JavaScript": "최대 행 수 가져오기", "CSharp": "최대 행 수 가져오기", "CPlusPlus": "최대 행 수 가져오기", "C": "최대 행 수 가져오기", "TypeScript": "최대 행 수 가져오기", "Kotlin": "최대 행 수 가져오기", "Ruby": "최대 행 수 가져오기", "PHP": "최대 행 수 가져오기"}'),
    ('setMaxRows', '{"Java": "최대 행 수 설정", "Python": "최대 행 수 설정", "JavaScript": "최대 행 수 설정", "CSharp": "최대 행 수 설정", "CPlusPlus": "최대 행 수 설정", "C": "최대 행 수 설정", "TypeScript": "최대 행 수 설정", "Kotlin": "최대 행 수 설정", "Ruby": "최대 행 수 설정", "PHP": "최대 행 수 설정"}'),
    ('getMaxFieldSize', '{"Java": "최대 필드 크기 가져오기", "Python": "최대 필드 크기 가져오기", "JavaScript": "최대 필드 크기 가져오기", "CSharp": "최대 필드 크기 가져오기", "CPlusPlus": "최대 필드 크기 가져오기", "C": "최대 필드 크기 가져오기", "TypeScript": "최대 필드 크기 가져오기", "Kotlin": "최대 필드 크기 가져오기", "Ruby": "최대 필드 크기 가져오기", "PHP": "최대 필드 크기 가져오기"}'),
    ('setMaxFieldSize', '{"Java": "최대 필드 크기 설정", "Python": "최대 필드 크기 설정", "JavaScript": "최대 필드 크기 설정", "CSharp": "최대 필드 크기 설정", "CPlusPlus": "최대 필드 크기 설정", "C": "최대 필드 크기 설정", "TypeScript": "최대 필드 크기 설정", "Kotlin": "최대 필드 크기 설정", "Ruby": "최대 필드 크기 설정", "PHP": "최대 필드 크기 설정"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('setPoolSize', '{"Java": "풀 크기 설정", "Python": "풀 크기 설정", "JavaScript": "풀 크기 설정", "CSharp": "풀 크기 설정", "CPlusPlus": "풀 크기 설정", "C": "풀 크기 설정", "TypeScript": "풀 크기 설정", "Kotlin": "풀 크기 설정", "Ruby": "풀 크기 설정", "PHP": "풀 크기 설정"}'),
    ('getPoolSize', '{"Java": "풀 크기 가져오기", "Python": "풀 크기 가져오기", "JavaScript": "풀 크기 가져오기", "CSharp": "풀 크기 가져오기", "CPlusPlus": "풀 크기 가져오기", "C": "풀 크기 가져오기", "TypeScript": "풀 크기 가져오기", "Kotlin": "풀 크기 가져오기", "Ruby": "풀 크기 가져오기", "PHP": "풀 크기 가져오기"}'),
    ('setTimeout', '{"Java": "타임아웃 설정", "Python": "타임아웃 설정", "JavaScript": "타임아웃 설정", "CSharp": "타임아웃 설정", "CPlusPlus": "타임아웃 설정", "C": "타임아웃 설정", "TypeScript": "타임아웃 설정", "Kotlin": "타임아웃 설정", "Ruby": "타임아웃 설정", "PHP": "타임아웃 설정"}'),
    ('getTimeout', '{"Java": "타임아웃 가져오기", "Python": "타임아웃 가져오기", "JavaScript": "타임아웃 가져오기", "CSharp": "타임아웃 가져오기", "CPlusPlus": "타임아웃 가져오기", "C": "타임아웃 가져오기", "TypeScript": "타임아웃 가져오기", "Kotlin": "타임아웃 가져오기", "Ruby": "타임아웃 가져오기", "PHP": "타임아웃 가져오기"}'),
    ('setFetchDirection', '{"Java": "페치 방향 설정", "Python": "페치 방향 설정", "JavaScript": "페치 방향 설정", "CSharp": "페치 방향 설정", "CPlusPlus": "페치 방향 설정", "C": "페치 방향 설정", "TypeScript": "페치 방향 설정", "Kotlin": "페치 방향 설정", "Ruby": "페치 방향 설정", "PHP": "페치 방향 설정"}'),
    ('getFetchDirection', '{"Java": "페치 방향 가져오기", "Python": "페치 방향 가져오기", "JavaScript": "페치 방향 가져오기", "CSharp": "페치 방향 가져오기", "CPlusPlus": "페치 방향 가져오기", "C": "페치 방향 가져오기", "TypeScript": "페치 방향 가져오기", "Kotlin": "페치 방향 가져오기", "Ruby": "페치 방향 가져오기", "PHP": "페치 방향 가져오기"}'),
    ('isWrapperFor', '{"Java": "래퍼 여부 확인", "Python": "래퍼 여부 확인", "JavaScript": "래퍼 여부 확인", "CSharp": "래퍼 여부 확인", "CPlusPlus": "래퍼 여부 확인", "C": "래퍼 여부 확인", "TypeScript": "래퍼 여부 확인", "Kotlin": "래퍼 여부 확인", "Ruby": "래퍼 여부 확인", "PHP": "래퍼 여부 확인"}'),
    ('unwrap', '{"Java": "래퍼 해제", "Python": "래퍼 해제", "JavaScript": "래퍼 해제", "CSharp": "래퍼 해제", "CPlusPlus": "래퍼 해제", "C": "래퍼 해제", "TypeScript": "래퍼 해제", "Kotlin": "래퍼 해제", "Ruby": "래퍼 해제", "PHP": "래퍼 해제"}'),
    ('addColumn', '{"Java": "열 추가", "Python": "열 추가", "JavaScript": "열 추가", "CSharp": "열 추가", "CPlusPlus": "열 추가", "C": "열 추가", "TypeScript": "열 추가", "Kotlin": "열 추가", "Ruby": "열 추가", "PHP": "열 추가"}'),
    ('dropColumn', '{"Java": "열 삭제", "Python": "열 삭제", "JavaScript": "열 삭제", "CSharp": "열 삭제", "CPlusPlus": "열 삭제", "C": "열 삭제", "TypeScript": "열 삭제", "Kotlin": "열 삭제", "Ruby": "열 삭제", "PHP": "열 삭제"}'),
    ('renameColumn', '{"Java": "열 이름 변경", "Python": "열 이름 변경", "JavaScript": "열 이름 변경", "CSharp": "열 이름 변경", "CPlusPlus": "열 이름 변경", "C": "열 이름 변경", "TypeScript": "열 이름 변경", "Kotlin": "열 이름 변경", "Ruby": "열 이름 변경", "PHP": "열 이름 변경"}'),
    ('modifyColumn', '{"Java": "열 수정", "Python": "열 수정", "JavaScript": "열 수정", "CSharp": "열 수정", "CPlusPlus": "열 수정", "C": "열 수정", "TypeScript": "열 수정", "Kotlin": "열 수정", "Ruby": "열 수정", "PHP": "열 수정"}'),
    ('createTable', '{"Java": "테이블 생성", "Python": "테이블 생성", "JavaScript": "테이블 생성", "CSharp": "테이블 생성", "CPlusPlus": "테이블 생성", "C": "테이블 생성", "TypeScript": "테이블 생성", "Kotlin": "테이블 생성", "Ruby": "테이블 생성", "PHP": "테이블 생성"}'),
    ('dropTable', '{"Java": "테이블 삭제", "Python": "테이블 삭제", "JavaScript": "테이블 삭제", "CSharp": "테이블 삭제", "CPlusPlus": "테이블 삭제", "C": "테이블 삭제", "TypeScript": "테이블 삭제", "Kotlin": "테이블 삭제", "Ruby": "테이블 삭제", "PHP": "테이블 삭제"}'),
    ('renameTable', '{"Java": "테이블 이름 변경", "Python": "테이블 이름 변경", "JavaScript": "테이블 이름 변경", "CSharp": "테이블 이름 변경", "CPlusPlus": "테이블 이름 변경", "C": "테이블 이름 변경", "TypeScript": "테이블 이름 변경", "Kotlin": "테이블 이름 변경", "Ruby": "테이블 이름 변경", "PHP": "테이블 이름 변경"}'),
    ('truncateTable', '{"Java": "테이블 비우기", "Python": "테이블 비우기", "JavaScript": "테이블 비우기", "CSharp": "테이블 비우기", "CPlusPlus": "테이블 비우기", "C": "테이블 비우기", "TypeScript": "테이블 비우기", "Kotlin": "테이블 비우기", "Ruby": "테이블 비우기", "PHP": "테이블 비우기"}'),
    ('addForeignKey', '{"Java": "외래 키 추가", "Python": "외래 키 추가", "JavaScript": "외래 키 추가", "CSharp": "외래 키 추가", "CPlusPlus": "외래 키 추가", "C": "외래 키 추가", "TypeScript": "외래 키 추가", "Kotlin": "외래 키 추가", "Ruby": "외래 키 추가", "PHP": "외래 키 추가"}'),
    ('dropForeignKey', '{"Java": "외래 키 삭제", "Python": "외래 키 삭제", "JavaScript": "외래 키 삭제", "CSharp": "외래 키 삭제", "CPlusPlus": "외래 키 삭제", "C": "외래 키 삭제", "TypeScript": "외래 키 삭제", "Kotlin": "외래 키 삭제", "Ruby": "외래 키 삭제", "PHP": "외래 키 삭제"}'),
    ('addIndex', '{"Java": "인덱스 추가", "Python": "인덱스 추가", "JavaScript": "인덱스 추가", "CSharp": "인덱스 추가", "CPlusPlus": "인덱스 추가", "C": "인덱스 추가", "TypeScript": "인덱스 추가", "Kotlin": "인덱스 추가", "Ruby": "인덱스 추가", "PHP": "인덱스 추가"}'),
    ('dropIndex', '{"Java": "인덱스 삭제", "Python": "인덱스 삭제", "JavaScript": "인덱스 삭제", "CSharp": "인덱스 삭제", "CPlusPlus": "인덱스 삭제", "C": "인덱스 삭제", "TypeScript": "인덱스 삭제", "Kotlin": "인덱스 삭제", "Ruby": "인덱스 삭제", "PHP": "인덱스 삭제"}'),
    ('addConstraint', '{"Java": "제약 조건 추가", "Python": "제약 조건 추가", "JavaScript": "제약 조건 추가", "CSharp": "제약 조건 추가", "CPlusPlus": "제약 조건 추가", "C": "제약 조건 추가", "TypeScript": "제약 조건 추가", "Kotlin": "제약 조건 추가", "Ruby": "제약 조건 추가", "PHP": "제약 조건 추가"}'),
    ('dropConstraint', '{"Java": "제약 조건 삭제", "Python": "제약 조건 삭제", "JavaScript": "제약 조건 삭제", "CSharp": "제약 조건 삭제", "CPlusPlus": "제약 조건 삭제", "C": "제약 조건 삭제", "TypeScript": "제약 조건 삭제", "Kotlin": "제약 조건 삭제", "Ruby": "제약 조건 삭제", "PHP": "제약 조건 삭제"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('alterTable', '{"Java": "테이블 변경", "Python": "테이블 변경", "JavaScript": "테이블 변경", "CSharp": "테이블 변경", "CPlusPlus": "테이블 변경", "C": "테이블 변경", "TypeScript": "테이블 변경", "Kotlin": "테이블 변경", "Ruby": "테이블 변경", "PHP": "테이블 변경"}'),
    ('createView', '{"Java": "뷰 생성", "Python": "뷰 생성", "JavaScript": "뷰 생성", "CSharp": "뷰 생성", "CPlusPlus": "뷰 생성", "C": "뷰 생성", "TypeScript": "뷰 생성", "Kotlin": "뷰 생성", "Ruby": "뷰 생성", "PHP": "뷰 생성"}'),
    ('dropView', '{"Java": "뷰 삭제", "Python": "뷰 삭제", "JavaScript": "뷰 삭제", "CSharp": "뷰 삭제", "CPlusPlus": "뷰 삭제", "C": "뷰 삭제", "TypeScript": "뷰 삭제", "Kotlin": "뷰 삭제", "Ruby": "뷰 삭제", "PHP": "뷰 삭제"}'),
    ('createTrigger', '{"Java": "트리거 생성", "Python": "트리거 생성", "JavaScript": "트리거 생성", "CSharp": "트리거 생성", "CPlusPlus": "트리거 생성", "C": "트리거 생성", "TypeScript": "트리거 생성", "Kotlin": "트리거 생성", "Ruby": "트리거 생성", "PHP": "트리거 생성"}'),
    ('dropTrigger', '{"Java": "트리거 삭제", "Python": "트리거 삭제", "JavaScript": "트리거 삭제", "CSharp": "트리거 삭제", "CPlusPlus": "트리거 삭제", "C": "트리거 삭제", "TypeScript": "트리거 삭제", "Kotlin": "트리거 삭제", "Ruby": "트리거 삭제", "PHP": "트리거 삭제"}'),
    ('createProcedure', '{"Java": "프로시저 생성", "Python": "프로시저 생성", "JavaScript": "프로시저 생성", "CSharp": "프로시저 생성", "CPlusPlus": "프로시저 생성", "C": "프로시저 생성", "TypeScript": "프로시저 생성", "Kotlin": "프로시저 생성", "Ruby": "프로시저 생성", "PHP": "프로시저 생성"}'),
    ('dropProcedure', '{"Java": "프로시저 삭제", "Python": "프로시저 삭제", "JavaScript": "프로시저 삭제", "CSharp": "프로시저 삭제", "CPlusPlus": "프로시저 삭제", "C": "프로시저 삭제", "TypeScript": "프로시저 삭제", "Kotlin": "프로시저 삭제", "Ruby": "프로시저 삭제", "PHP": "프로시저 삭제"}'),
    ('createFunction', '{"Java": "함수 생성", "Python": "함수 생성", "JavaScript": "함수 생성", "CSharp": "함수 생성", "CPlusPlus": "함수 생성", "C": "함수 생성", "TypeScript": "함수 생성", "Kotlin": "함수 생성", "Ruby": "함수 생성", "PHP": "함수 생성"}'),
    ('dropFunction', '{"Java": "함수 삭제", "Python": "함수 삭제", "JavaScript": "함수 삭제", "CSharp": "함수 삭제", "CPlusPlus": "함수 삭제", "C": "함수 삭제", "TypeScript": "함수 삭제", "Kotlin": "함수 삭제", "Ruby": "함수 삭제", "PHP": "함수 삭제"}'),
    ('callFunction', '{"Java": "함수 호출", "Python": "함수 호출", "JavaScript": "함수 호출", "CSharp": "함수 호출", "CPlusPlus": "함수 호출", "C": "함수 호출", "TypeScript": "함수 호출", "Kotlin": "함수 호출", "Ruby": "함수 호출", "PHP": "함수 호출"}'),
    ('startTransaction', '{"Java": "트랜잭션 시작", "Python": "트랜잭션 시작", "JavaScript": "트랜잭션 시작", "CSharp": "트랜잭션 시작", "CPlusPlus": "트랜잭션 시작", "C": "트랜잭션 시작", "TypeScript": "트랜잭션 시작", "Kotlin": "트랜잭션 시작", "Ruby": "트랜잭션 시작", "PHP": "트랜잭션 시작"}'),
    ('endTransaction', '{"Java": "트랜잭션 종료", "Python": "트랜잭션 종료", "JavaScript": "트랜잭션 종료", "CSharp": "트랜잭션 종료", "CPlusPlus": "트랜잭션 종료", "C": "트랜잭션 종료", "TypeScript": "트랜잭션 종료", "Kotlin": "트랜잭션 종료", "Ruby": "트랜잭션 종료", "PHP": "트랜잭션 종료"}'),
    ('savepoint', '{"Java": "세이브포인트 설정", "Python": "세이브포인트 설정", "JavaScript": "세이브포인트 설정", "CSharp": "세이브포인트 설정", "CPlusPlus": "세이브포인트 설정", "C": "세이브포인트 설정", "TypeScript": "세이브포인트 설정", "Kotlin": "세이브포인트 설정", "Ruby": "세이브포인트 설정", "PHP": "세이브포인트 설정"}'),
    ('logError', '{"Java": "오류 로그", "Python": "오류 로그", "JavaScript": "오류 로그", "CSharp": "오류 로그", "CPlusPlus": "오류 로그", "C": "오류 로그", "TypeScript": "오류 로그", "Kotlin": "오류 로그", "Ruby": "오류 로그", "PHP": "오류 로그"}'),
    ('logInfo', '{"Java": "정보 로그", "Python": "정보 로그", "JavaScript": "정보 로그", "CSharp": "정보 로그", "CPlusPlus": "정보 로그", "C": "정보 로그", "TypeScript": "정보 로그", "Kotlin": "정보 로그", "Ruby": "정보 로그", "PHP": "정보 로그"}'),
    ('logDebug', '{"Java": "디버그 로그", "Python": "디버그 로그", "JavaScript": "디버그 로그", "CSharp": "디버그 로그", "CPlusPlus": "디버그 로그", "C": "디버그 로그", "TypeScript": "디버그 로그", "Kotlin": "디버그 로그", "Ruby": "디버그 로그", "PHP": "디버그 로그"}'),
    ('logWarn', '{"Java": "경고 로그", "Python": "경고 로그", "JavaScript": "경고 로그", "CSharp": "경고 로그", "CPlusPlus": "경고 로그", "C": "경고 로그", "TypeScript": "경고 로그", "Kotlin": "경고 로그", "Ruby": "경고 로그", "PHP": "경고 로그"}'),
    ('logFatal', '{"Java": "치명적 로그", "Python": "치명적 로그", "JavaScript": "치명적 로그", "CSharp": "치명적 로그", "CPlusPlus": "치명적 로그", "C": "치명적 로그", "TypeScript": "치명적 로그", "Kotlin": "치명적 로그", "Ruby": "치명적 로그", "PHP": "치명적 로그"}'),
    ('openConnection', '{"Java": "연결 열기", "Python": "연결 열기", "JavaScript": "연결 열기", "CSharp": "연결 열기", "CPlusPlus": "연결 열기", "C": "연결 열기", "TypeScript": "연결 열기", "Kotlin": "연결 열기", "Ruby": "연결 열기", "PHP": "연결 열기"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('startSession', '{"Java": "세션 시작", "Python": "세션 시작", "JavaScript": "세션 시작", "CSharp": "세션 시작", "CPlusPlus": "세션 시작", "C": "세션 시작", "TypeScript": "세션 시작", "Kotlin": "세션 시작", "Ruby": "세션 시작", "PHP": "세션 시작"}'),
    ('endSession', '{"Java": "세션 종료", "Python": "세션 종료", "JavaScript": "세션 종료", "CSharp": "세션 종료", "CPlusPlus": "세션 종료", "C": "세션 종료", "TypeScript": "세션 종료", "Kotlin": "세션 종료", "Ruby": "세션 종료", "PHP": "세션 종료"}'),
    ('createSession', '{"Java": "세션 생성", "Python": "세션 생성", "JavaScript": "세션 생성", "CSharp": "세션 생성", "CPlusPlus": "세션 생성", "C": "세션 생성", "TypeScript": "세션 생성", "Kotlin": "세션 생성", "Ruby": "세션 생성", "PHP": "세션 생성"}'),
    ('destroySession', '{"Java": "세션 삭제", "Python": "세션 삭제", "JavaScript": "세션 삭제", "CSharp": "세션 삭제", "CPlusPlus": "세션 삭제", "C": "세션 삭제", "TypeScript": "세션 삭제", "Kotlin": "세션 삭제", "Ruby": "세션 삭제", "PHP": "세션 삭제"}'),
    ('validateSession', '{"Java": "세션 유효성 검사", "Python": "세션 유효성 검사", "JavaScript": "세션 유효성 검사", "CSharp": "세션 유효성 검사", "CPlusPlus": "세션 유효성 검사", "C": "세션 유효성 검사", "TypeScript": "세션 유효성 검사", "Kotlin": "세션 유효성 검사", "Ruby": "세션 유효성 검사", "PHP": "세션 유효성 검사"}'),
    ('addSessionAttribute', '{"Java": "세션 속성 추가", "Python": "세션 속성 추가", "JavaScript": "세션 속성 추가", "CSharp": "세션 속성 추가", "CPlusPlus": "세션 속성 추가", "C": "세션 속성 추가", "TypeScript": "세션 속성 추가", "Kotlin": "세션 속성 추가", "Ruby": "세션 속성 추가", "PHP": "세션 속성 추가"}'),
    ('removeSessionAttribute', '{"Java": "세션 속성 제거", "Python": "세션 속성 제거", "JavaScript": "세션 속성 제거", "CSharp": "세션 속성 제거", "CPlusPlus": "세션 속성 제거", "C": "세션 속성 제거", "TypeScript": "세션 속성 제거", "Kotlin": "세션 속성 제거", "Ruby": "세션 속성 제거", "PHP": "세션 속성 제거"}'),
    ('getSessionAttribute', '{"Java": "세션 속성 가져오기", "Python": "세션 속성 가져오기", "JavaScript": "세션 속성 가져오기", "CSharp": "세션 속성 가져오기", "CPlusPlus": "세션 속성 가져오기", "C": "세션 속성 가져오기", "TypeScript": "세션 속성 가져오기", "Kotlin": "세션 속성 가져오기", "Ruby": "세션 속성 가져오기", "PHP": "세션 속성 가져오기"}'),
    ('setSessionAttribute', '{"Java": "세션 속성 설정", "Python": "세션 속성 설정", "JavaScript": "세션 속성 설정", "CSharp": "세션 속성 설정", "CPlusPlus": "세션 속성 설정", "C": "세션 속성 설정", "TypeScript": "세션 속성 설정", "Kotlin": "세션 속성 설정", "Ruby": "세션 속성 설정", "PHP": "세션 속성 설정"}'),
    ('getSessionId', '{"Java": "세션 ID 가져오기", "Python": "세션 ID 가져오기", "JavaScript": "세션 ID 가져오기", "CSharp": "세션 ID 가져오기", "CPlusPlus": "세션 ID 가져오기", "C": "세션 ID 가져오기", "TypeScript": "세션 ID 가져오기", "Kotlin": "세션 ID 가져오기", "Ruby": "세션 ID 가져오기", "PHP": "세션 ID 가져오기"}'),
    ('setSessionTimeout', '{"Java": "세션 타임아웃 설정", "Python": "세션 타임아웃 설정", "JavaScript": "세션 타임아웃 설정", "CSharp": "세션 타임아웃 설정", "CPlusPlus": "세션 타임아웃 설정", "C": "세션 타임아웃 설정", "TypeScript": "세션 타임아웃 설정", "Kotlin": "세션 타임아웃 설정", "Ruby": "세션 타임아웃 설정", "PHP": "세션 타임아웃 설정"}'),
    ('getSessionTimeout', '{"Java": "세션 타임아웃 가져오기", "Python": "세션 타임아웃 가져오기", "JavaScript": "세션 타임아웃 가져오기", "CSharp": "세션 타임아웃 가져오기", "CPlusPlus": "세션 타임아웃 가져오기", "C": "세션 타임아웃 가져오기", "TypeScript": "세션 타임아웃 가져오기", "Kotlin": "세션 타임아웃 가져오기", "Ruby": "세션 타임아웃 가져오기", "PHP": "세션 타임아웃 가져오기"}'),
    ('getSessionCreationTime', '{"Java": "세션 생성 시간 가져오기", "Python": "세션 생성 시간 가져오기", "JavaScript": "세션 생성 시간 가져오기", "CSharp": "세션 생성 시간 가져오기", "CPlusPlus": "세션 생성 시간 가져오기", "C": "세션 생성 시간 가져오기", "TypeScript": "세션 생성 시간 가져오기", "Kotlin": "세션 생성 시간 가져오기", "Ruby": "세션 생성 시간 가져오기", "PHP": "세션 생성 시간 가져오기"}'),
    ('getLastAccessTime', '{"Java": "마지막 접근 시간 가져오기", "Python": "마지막 접근 시간 가져오기", "JavaScript": "마지막 접근 시간 가져오기", "CSharp": "마지막 접근 시간 가져오기", "CPlusPlus": "마지막 접근 시간 가져오기", "C": "마지막 접근 시간 가져오기", "TypeScript": "마지막 접근 시간 가져오기", "Kotlin": "마지막 접근 시간 가져오기", "Ruby": "마지막 접근 시간 가져오기", "PHP": "마지막 접근 시간 가져오기"}'),
    ('renewSession', '{"Java": "세션 갱신", "Python": "세션 갱신", "JavaScript": "세션 갱신", "CSharp": "세션 갱신", "CPlusPlus": "세션 갱신", "C": "세션 갱신", "TypeScript": "세션 갱신", "Kotlin": "세션 갱신", "Ruby": "세션 갱신", "PHP": "세션 갱신"}'),
    ('invalidateSession', '{"Java": "세션 무효화", "Python": "세션 무효화", "JavaScript": "세션 무효화", "CSharp": "세션 무효화", "CPlusPlus": "세션 무효화", "C": "세션 무효화", "TypeScript": "세션 무효화", "Kotlin": "세션 무효화", "Ruby": "세션 무효화", "PHP": "세션 무효화"}'),
    ('flushSession', '{"Java": "세션 플러시", "Python": "세션 플러시", "JavaScript": "세션 플러시", "CSharp": "세션 플러시", "CPlusPlus": "세션 플러시", "C": "세션 플러시", "TypeScript": "세션 플러시", "Kotlin": "세션 플러시", "Ruby": "세션 플러시", "PHP": "세션 플러시"}'),
    ('sessionExists', '{"Java": "세션 존재 여부 확인", "Python": "세션 존재 여부 확인", "JavaScript": "세션 존재 여부 확인", "CSharp": "세션 존재 여부 확인", "CPlusPlus": "세션 존재 여부 확인", "C": "세션 존재 여부 확인", "TypeScript": "세션 존재 여부 확인", "Kotlin": "세션 존재 여부 확인", "Ruby": "세션 존재 여부 확인", "PHP": "세션 존재 여부 확인"}'),
    ('trackSession', '{"Java": "세션 추적", "Python": "세션 추적", "JavaScript": "세션 추적", "CSharp": "세션 추적", "CPlusPlus": "세션 추적", "C": "세션 추적", "TypeScript": "세션 추적", "Kotlin": "세션 추적", "Ruby": "세션 추적", "PHP": "세션 추적"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('manageSession', '{"Java": "세션 관리", "Python": "세션 관리", "JavaScript": "세션 관리", "CSharp": "세션 관리", "CPlusPlus": "세션 관리", "C": "세션 관리", "TypeScript": "세션 관리", "Kotlin": "세션 관리", "Ruby": "세션 관리", "PHP": "세션 관리"}'),
    ('isSessionValid', '{"Java": "세션 유효성 여부 확인", "Python": "세션 유효성 여부 확인", "JavaScript": "세션 유효성 여부 확인", "CSharp": "세션 유효성 여부 확인", "CPlusPlus": "세션 유효성 여부 확인", "C": "세션 유효성 여부 확인", "TypeScript": "세션 유효성 여부 확인", "Kotlin": "세션 유효성 여부 확인", "Ruby": "세션 유효성 여부 확인", "PHP": "세션 유효성 여부 확인"}'),
    ('generateSessionToken', '{"Java": "세션 토큰 생성", "Python": "세션 토큰 생성", "JavaScript": "세션 토큰 생성", "CSharp": "세션 토큰 생성", "CPlusPlus": "세션 토큰 생성", "C": "세션 토큰 생성", "TypeScript": "세션 토큰 생성", "Kotlin": "세션 토큰 생성", "Ruby": "세션 토큰 생성", "PHP": "세션 토큰 생성"}'),
    ('getSessionToken', '{"Java": "세션 토큰 가져오기", "Python": "세션 토큰 가져오기", "JavaScript": "세션 토큰 가져오기", "CSharp": "세션 토큰 가져오기", "CPlusPlus": "세션 토큰 가져오기", "C": "세션 토큰 가져오기", "TypeScript": "세션 토큰 가져오기", "Kotlin": "세션 토큰 가져오기", "Ruby": "세션 토큰 가져오기", "PHP": "세션 토큰 가져오기"}'),
    ('destroySessionToken', '{"Java": "세션 토큰 삭제", "Python": "세션 토큰 삭제", "JavaScript": "세션 토큰 삭제", "CSharp": "세션 토큰 삭제", "CPlusPlus": "세션 토큰 삭제", "C": "세션 토큰 삭제", "TypeScript": "세션 토큰 삭제", "Kotlin": "세션 토큰 삭제", "Ruby": "세션 토큰 삭제", "PHP": "세션 토큰 삭제"}'),
    ('initializeSession', '{"Java": "세션 초기화", "Python": "세션 초기화", "JavaScript": "세션 초기화", "CSharp": "세션 초기화", "CPlusPlus": "세션 초기화", "C": "세션 초기화", "TypeScript": "세션 초기화", "Kotlin": "세션 초기화", "Ruby": "세션 초기화", "PHP": "세션 초기화"}'),
    ('synchronizeSession', '{"Java": "세션 동기화", "Python": "세션 동기화", "JavaScript": "세션 동기화", "CSharp": "세션 동기화", "CPlusPlus": "세션 동기화", "C": "세션 동기화", "TypeScript": "세션 동기화", "Kotlin": "세션 동기화", "Ruby": "세션 동기화", "PHP": "세션 동기화"}'),
    ('refreshSession', '{"Java": "세션 갱신", "Python": "세션 갱신", "JavaScript": "세션 갱신", "CSharp": "세션 갱신", "CPlusPlus": "세션 갱신", "C": "세션 갱신", "TypeScript": "세션 갱신", "Kotlin": "세션 갱신", "Ruby": "세션 갱신", "PHP": "세션 갱신"}'),
    ('enableSessionTracking', '{"Java": "세션 추적 활성화", "Python": "세션 추적 활성화", "JavaScript": "세션 추적 활성화", "CSharp": "세션 추적 활성화", "CPlusPlus": "세션 추적 활성화", "C": "세션 추적 활성화", "TypeScript": "세션 추적 활성화", "Kotlin": "세션 추적 활성화", "Ruby": "세션 추적 활성화", "PHP": "세션 추적 활성화"}'),
    ('disableSessionTracking', '{"Java": "세션 추적 비활성화", "Python": "세션 추적 비활성화", "JavaScript": "세션 추적 비활성화", "CSharp": "세션 추적 비활성화", "CPlusPlus": "세션 추적 비활성화", "C": "세션 추적 비활성화", "TypeScript": "세션 추적 비활성화", "Kotlin": "세션 추적 비활성화", "Ruby": "세션 추적 비활성화", "PHP": "세션 추적 비활성화"}'),
    ('sessionHeartbeat', '{"Java": "세션 하트비트", "Python": "세션 하트비트", "JavaScript": "세션 하트비트", "CSharp": "세션 하트비트", "CPlusPlus": "세션 하트비트", "C": "세션 하트비트", "TypeScript": "세션 하트비트", "Kotlin": "세션 하트비트", "Ruby": "세션 하트비트", "PHP": "세션 하트비트"}'),
    ('validateSessionToken', '{"Java": "세션 토큰 유효성 검사", "Python": "세션 토큰 유효성 검사", "JavaScript": "세션 토큰 유효성 검사", "CSharp": "세션 토큰 유효성 검사", "CPlusPlus": "세션 토큰 유효성 검사", "C": "세션 토큰 유효성 검사", "TypeScript": "세션 토큰 유효성 검사", "Kotlin": "세션 토큰 유효성 검사", "Ruby": "세션 토큰 유효성 검사", "PHP": "세션 토큰 유효성 검사"}'),
    ('generateSessionId', '{"Java": "세션 ID 생성", "Python": "세션 ID 생성", "JavaScript": "세션 ID 생성", "CSharp": "세션 ID 생성", "CPlusPlus": "세션 ID 생성", "C": "세션 ID 생성", "TypeScript": "세션 ID 생성", "Kotlin": "세션 ID 생성", "Ruby": "세션 ID 생성", "PHP": "세션 ID 생성"}'),
    ('getActiveSessions', '{"Java": "활성 세션 가져오기", "Python": "활성 세션 가져오기", "JavaScript": "활성 세션 가져오기", "CSharp": "활성 세션 가져오기", "CPlusPlus": "활성 세션 가져오기", "C": "활성 세션 가져오기", "TypeScript": "활성 세션 가져오기", "Kotlin": "활성 세션 가져오기", "Ruby": "활성 세션 가져오기", "PHP": "활성 세션 가져오기"}'),
    ('getSessionCount', '{"Java": "세션 수 가져오기", "Python": "세션 수 가져오기", "JavaScript": "세션 수 가져오기", "CSharp": "세션 수 가져오기", "CPlusPlus": "세션 수 가져오기", "C": "세션 수 가져오기", "TypeScript": "세션 수 가져오기", "Kotlin": "세션 수 가져오기", "Ruby": "세션 수 가져오기", "PHP": "세션 수 가져오기"}'),
    ('checkSessionExpiry', '{"Java": "세션 만료 여부 확인", "Python": "세션 만료 여부 확인", "JavaScript": "세션 만료 여부 확인", "CSharp": "세션 만료 여부 확인", "CPlusPlus": "세션 만료 여부 확인", "C": "세션 만료 여부 확인", "TypeScript": "세션 만료 여부 확인", "Kotlin": "세션 만료 여부 확인", "Ruby": "세션 만료 여부 확인", "PHP": "세션 만료 여부 확인"}'),
    ('extendSession', '{"Java": "세션 연장", "Python": "세션 연장", "JavaScript": "세션 연장", "CSharp": "세션 연장", "CPlusPlus": "세션 연장", "C": "세션 연장", "TypeScript": "세션 연장", "Kotlin": "세션 연장", "Ruby": "세션 연장", "PHP": "세션 연장"}'),
    ('clearSession', '{"Java": "세션 초기화", "Python": "세션 초기화", "JavaScript": "세션 초기화", "CSharp": "세션 초기화", "CPlusPlus": "세션 초기화", "C": "세션 초기화", "TypeScript": "세션 초기화", "Kotlin": "세션 초기화", "Ruby": "세션 초기화", "PHP": "세션 초기화"}'),
    ('terminateSession', '{"Java": "세션 종료", "Python": "세션 종료", "JavaScript": "세션 종료", "CSharp": "세션 종료", "CPlusPlus": "세션 종료", "C": "세션 종료", "TypeScript": "세션 종료", "Kotlin": "세션 종료", "Ruby": "세션 종료", "PHP": "세션 종료"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('isSessionActive', '{"Java": "세션 활성 여부 확인", "Python": "세션 활성 여부 확인", "JavaScript": "세션 활성 여부 확인", "CSharp": "세션 활성 여부 확인", "CPlusPlus": "세션 활성 여부 확인", "C": "세션 활성 여부 확인", "TypeScript": "세션 활성 여부 확인", "Kotlin": "세션 활성 여부 확인", "Ruby": "세션 활성 여부 확인", "PHP": "세션 활성 여부 확인"}'),
    ('fetchSessionData', '{"Java": "세션 데이터 가져오기", "Python": "세션 데이터 가져오기", "JavaScript": "세션 데이터 가져오기", "CSharp": "세션 데이터 가져오기", "CPlusPlus": "세션 데이터 가져오기", "C": "세션 데이터 가져오기", "TypeScript": "세션 데이터 가져오기", "Kotlin": "세션 데이터 가져오기", "Ruby": "세션 데이터 가져오기", "PHP": "세션 데이터 가져오기"}'),
    ('storeSessionData', '{"Java": "세션 데이터 저장", "Python": "세션 데이터 저장", "JavaScript": "세션 데이터 저장", "CSharp": "세션 데이터 저장", "CPlusPlus": "세션 데이터 저장", "C": "세션 데이터 저장", "TypeScript": "세션 데이터 저장", "Kotlin": "세션 데이터 저장", "Ruby": "세션 데이터 저장", "PHP": "세션 데이터 저장"}'),
    ('lockSession', '{"Java": "세션 잠금", "Python": "세션 잠금", "JavaScript": "세션 잠금", "CSharp": "세션 잠금", "CPlusPlus": "세션 잠금", "C": "세션 잠금", "TypeScript": "세션 잠금", "Kotlin": "세션 잠금", "Ruby": "세션 잠금", "PHP": "세션 잠금"}'),
    ('unlockSession', '{"Java": "세션 잠금 해제", "Python": "세션 잠금 해제", "JavaScript": "세션 잠금 해제", "CSharp": "세션 잠금 해제", "CPlusPlus": "세션 잠금 해제", "C": "세션 잠금 해제", "TypeScript": "세션 잠금 해제", "Kotlin": "세션 잠금 해제", "Ruby": "세션 잠금 해제", "PHP": "세션 잠금 해제"}'),
    ('syncSessionData', '{"Java": "세션 데이터 동기화", "Python": "세션 데이터 동기화", "JavaScript": "세션 데이터 동기화", "CSharp": "세션 데이터 동기화", "CPlusPlus": "세션 데이터 동기화", "C": "세션 데이터 동기화", "TypeScript": "세션 데이터 동기화", "Kotlin": "세션 데이터 동기화", "Ruby": "세션 데이터 동기화", "PHP": "세션 데이터 동기화"}'),
    ('archiveSession', '{"Java": "세션 아카이브", "Python": "세션 아카이브", "JavaScript": "세션 아카이브", "CSharp": "세션 아카이브", "CPlusPlus": "세션 아카이브", "C": "세션 아카이브", "TypeScript": "세션 아카이브", "Kotlin": "세션 아카이브", "Ruby": "세션 아카이브", "PHP": "세션 아카이브"}'),
    ('restoreSession', '{"Java": "세션 복원", "Python": "세션 복원", "JavaScript": "세션 복원", "CSharp": "세션 복원", "CPlusPlus": "세션 복원", "C": "세션 복원", "TypeScript": "세션 복원", "Kotlin": "세션 복원", "Ruby": "세션 복원", "PHP": "세션 복원"}'),
    ('expireSession', '{"Java": "세션 만료", "Python": "세션 만료", "JavaScript": "세션 만료", "CSharp": "세션 만료", "CPlusPlus": "세션 만료", "C": "세션 만료", "TypeScript": "세션 만료", "Kotlin": "세션 만료", "Ruby": "세션 만료", "PHP": "세션 만료"}'),
    ('isSessionExpired', '{"Java": "세션 만료 여부 확인", "Python": "세션 만료 여부 확인", "JavaScript": "세션 만료 여부 확인", "CSharp": "세션 만료 여부 확인", "CPlusPlus": "세션 만료 여부 확인", "C": "세션 만료 여부 확인", "TypeScript": "세션 만료 여부 확인", "Kotlin": "세션 만료 여부 확인", "Ruby": "세션 만료 여부 확인", "PHP": "세션 만료 여부 확인"}'),
    ('getSessionLogs', '{"Java": "세션 로그 가져오기", "Python": "세션 로그 가져오기", "JavaScript": "세션 로그 가져오기", "CSharp": "세션 로그 가져오기", "CPlusPlus": "세션 로그 가져오기", "C": "세션 로그 가져오기", "TypeScript": "세션 로그 가져오기", "Kotlin": "세션 로그 가져오기", "Ruby": "세션 로그 가져오기", "PHP": "세션 로그 가져오기"}'),
    ('clearSessionLogs', '{"Java": "세션 로그 초기화", "Python": "세션 로그 초기화", "JavaScript": "세션 로그 초기화", "CSharp": "세션 로그 초기화", "CPlusPlus": "세션 로그 초기화", "C": "세션 로그 초기화", "TypeScript": "세션 로그 초기화", "Kotlin": "세션 로그 초기화", "Ruby": "세션 로그 초기화", "PHP": "세션 로그 초기화"}'),
    ('deleteSessionData', '{"Java": "세션 데이터 삭제", "Python": "세션 데이터 삭제", "JavaScript": "세션 데이터 삭제", "CSharp": "세션 데이터 삭제", "CPlusPlus": "세션 데이터 삭제", "C": "세션 데이터 삭제", "TypeScript": "세션 데이터 삭제", "Kotlin": "세션 데이터 삭제", "Ruby": "세션 데이터 삭제", "PHP": "세션 데이터 삭제"}'),
    ('updateSessionData', '{"Java": "세션 데이터 업데이트", "Python": "세션 데이터 업데이트", "JavaScript": "세션 데이터 업데이트", "CSharp": "세션 데이터 업데이트", "CPlusPlus": "세션 데이터 업데이트", "C": "세션 데이터 업데이트", "TypeScript": "세션 데이터 업데이트", "Kotlin": "세션 데이터 업데이트", "Ruby": "세션 데이터 업데이트", "PHP": "세션 데이터 업데이트"}'),
    ('logSessionActivity', '{"Java": "세션 활동 기록", "Python": "세션 활동 기록", "JavaScript": "세션 활동 기록", "CSharp": "세션 활동 기록", "CPlusPlus": "세션 활동 기록", "C": "세션 활동 기록", "TypeScript": "세션 활동 기록", "Kotlin": "세션 활동 기록", "Ruby": "세션 활동 기록", "PHP": "세션 활동 기록"}'),
    ('setSessionPermissions', '{"Java": "세션 권한 설정", "Python": "세션 권한 설정", "JavaScript": "세션 권한 설정", "CSharp": "세션 권한 설정", "CPlusPlus": "세션 권한 설정", "C": "세션 권한 설정", "TypeScript": "세션 권한 설정", "Kotlin": "세션 권한 설정", "Ruby": "세션 권한 설정", "PHP": "세션 권한 설정"}'),
    ('getSessionPermissions', '{"Java": "세션 권한 가져오기", "Python": "세션 권한 가져오기", "JavaScript": "세션 권한 가져오기", "CSharp": "세션 권한 가져오기", "CPlusPlus": "세션 권한 가져오기", "C": "세션 권한 가져오기", "TypeScript": "세션 권한 가져오기", "Kotlin": "세션 권한 가져오기", "Ruby": "세션 권한 가져오기", "PHP": "세션 권한 가져오기"}'),
    ('restrictSession', '{"Java": "세션 제한", "Python": "세션 제한", "JavaScript": "세션 제한", "CSharp": "세션 제한", "CPlusPlus": "세션 제한", "C": "세션 제한", "TypeScript": "세션 제한", "Kotlin": "세션 제한", "Ruby": "세션 제한", "PHP": "세션 제한"}'),
    ('allowSession', '{"Java": "세션 허용", "Python": "세션 허용", "JavaScript": "세션 허용", "CSharp": "세션 허용", "CPlusPlus": "세션 허용", "C": "세션 허용", "TypeScript": "세션 허용", "Kotlin": "세션 허용", "Ruby": "세션 허용", "PHP": "세션 허용"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('createSessionBackup', '{"Java": "세션 백업 생성", "Python": "세션 백업 생성", "JavaScript": "세션 백업 생성", "CSharp": "세션 백업 생성", "CPlusPlus": "세션 백업 생성", "C": "세션 백업 생성", "TypeScript": "세션 백업 생성", "Kotlin": "세션 백업 생성", "Ruby": "세션 백업 생성", "PHP": "세션 백업 생성"}'),
    ('restoreSessionBackup', '{"Java": "세션 백업 복원", "Python": "세션 백업 복원", "JavaScript": "세션 백업 복원", "CSharp": "세션 백업 복원", "CPlusPlus": "세션 백업 복원", "C": "세션 백업 복원", "TypeScript": "세션 백업 복원", "Kotlin": "세션 백업 복원", "Ruby": "세션 백업 복원", "PHP": "세션 백업 복원"}'),
    ('exportSession', '{"Java": "세션 내보내기", "Python": "세션 내보내기", "JavaScript": "세션 내보내기", "CSharp": "세션 내보내기", "CPlusPlus": "세션 내보내기", "C": "세션 내보내기", "TypeScript": "세션 내보내기", "Kotlin": "세션 내보내기", "Ruby": "세션 내보내기", "PHP": "세션 내보내기"}'),
    ('importSession', '{"Java": "세션 가져오기", "Python": "세션 가져오기", "JavaScript": "세션 가져오기", "CSharp": "세션 가져오기", "CPlusPlus": "세션 가져오기", "C": "세션 가져오기", "TypeScript": "세션 가져오기", "Kotlin": "세션 가져오기", "Ruby": "세션 가져오기", "PHP": "세션 가져오기"}'),
    ('serializeSession', '{"Java": "세션 직렬화", "Python": "세션 직렬화", "JavaScript": "세션 직렬화", "CSharp": "세션 직렬화", "CPlusPlus": "세션 직렬화", "C": "세션 직렬화", "TypeScript": "세션 직렬화", "Kotlin": "세션 직렬화", "Ruby": "세션 직렬화", "PHP": "세션 직렬화"}'),
    ('deserializeSession', '{"Java": "세션 역직렬화", "Python": "세션 역직렬화", "JavaScript": "세션 역직렬화", "CSharp": "세션 역직렬화", "CPlusPlus": "세션 역직렬화", "C": "세션 역직렬화", "TypeScript": "세션 역직렬화", "Kotlin": "세션 역직렬화", "Ruby": "세션 역직렬화", "PHP": "세션 역직렬화"}'),
    ('encryptSessionData', '{"Java": "세션 데이터 암호화", "Python": "세션 데이터 암호화", "JavaScript": "세션 데이터 암호화", "CSharp": "세션 데이터 암호화", "CPlusPlus": "세션 데이터 암호화", "C": "세션 데이터 암호화", "TypeScript": "세션 데이터 암호화", "Kotlin": "세션 데이터 암호화", "Ruby": "세션 데이터 암호화", "PHP": "세션 데이터 암호화"}'),
    ('decryptSessionData', '{"Java": "세션 데이터 복호화", "Python": "세션 데이터 복호화", "JavaScript": "세션 데이터 복호화", "CSharp": "세션 데이터 복호화", "CPlusPlus": "세션 데이터 복호화", "C": "세션 데이터 복호화", "TypeScript": "세션 데이터 복호화", "Kotlin": "세션 데이터 복호화", "Ruby": "세션 데이터 복호화", "PHP": "세션 데이터 복호화"}'),
    ('analyzeSession', '{"Java": "세션 분석", "Python": "세션 분석", "JavaScript": "세션 분석", "CSharp": "세션 분석", "CPlusPlus": "세션 분석", "C": "세션 분석", "TypeScript": "세션 분석", "Kotlin": "세션 분석", "Ruby": "세션 분석", "PHP": "세션 분석"}'),
    ('trackSessionUsage', '{"Java": "세션 사용 추적", "Python": "세션 사용 추적", "JavaScript": "세션 사용 추적", "CSharp": "세션 사용 추적", "CPlusPlus": "세션 사용 추적", "C": "세션 사용 추적", "TypeScript": "세션 사용 추적", "Kotlin": "세션 사용 추적", "Ruby": "세션 사용 추적", "PHP": "세션 사용 추적"}'),
    ('monitorSession', '{"Java": "세션 모니터링", "Python": "세션 모니터링", "JavaScript": "세션 모니터링", "CSharp": "세션 모니터링", "CPlusPlus": "세션 모니터링", "C": "세션 모니터링", "TypeScript": "세션 모니터링", "Kotlin": "세션 모니터링", "Ruby": "세션 모니터링", "PHP": "세션 모니터링"}'),
    ('isSessionSynchronized', '{"Java": "세션 동기화 여부 확인", "Python": "세션 동기화 여부 확인", "JavaScript": "세션 동기화 여부 확인", "CSharp": "세션 동기화 여부 확인", "CPlusPlus": "세션 동기화 여부 확인", "C": "세션 동기화 여부 확인", "TypeScript": "세션 동기화 여부 확인", "Kotlin": "세션 동기화 여부 확인", "Ruby": "세션 동기화 여부 확인", "PHP": "세션 동기화 여부 확인"}'),
    ('getSessionStatistics', '{"Java": "세션 통계 가져오기", "Python": "세션 통계 가져오기", "JavaScript": "세션 통계 가져오기", "CSharp": "세션 통계 가져오기", "CPlusPlus": "세션 통계 가져오기", "C": "세션 통계 가져오기", "TypeScript": "세션 통계 가져오기", "Kotlin": "세션 통계 가져오기", "Ruby": "세션 통계 가져오기", "PHP": "세션 통계 가져오기"}'),
    ('resetSession', '{"Java": "세션 초기화", "Python": "세션 초기화", "JavaScript": "세션 초기화", "CSharp": "세션 초기화", "CPlusPlus": "세션 초기화", "C": "세션 초기화", "TypeScript": "세션 초기화", "Kotlin": "세션 초기화", "Ruby": "세션 초기화", "PHP": "세션 초기화"}'),
    ('applySessionChanges', '{"Java": "세션 변경 사항 적용", "Python": "세션 변경 사항 적용", "JavaScript": "세션 변경 사항 적용", "CSharp": "세션 변경 사항 적용", "CPlusPlus": "세션 변경 사항 적용", "C": "세션 변경 사항 적용", "TypeScript": "세션 변경 사항 적용", "Kotlin": "세션 변경 사항 적용", "Ruby": "세션 변경 사항 적용", "PHP": "세션 변경 사항 적용"}'),
    ('persistSession', '{"Java": "세션 영구 저장", "Python": "세션 영구 저장", "JavaScript": "세션 영구 저장", "CSharp": "세션 영구 저장", "CPlusPlus": "세션 영구 저장", "C": "세션 영구 저장", "TypeScript": "세션 영구 저장", "Kotlin": "세션 영구 저장", "Ruby": "세션 영구 저장", "PHP": "세션 영구 저장"}'),
    ('cleanSession', '{"Java": "세션 정리", "Python": "세션 정리", "JavaScript": "세션 정리", "CSharp": "세션 정리", "CPlusPlus": "세션 정리", "C": "세션 정리", "TypeScript": "세션 정리", "Kotlin": "세션 정리", "Ruby": "세션 정리", "PHP": "세션 정리"}'),
    ('logSessionError', '{"Java": "세션 오류 로그", "Python": "세션 오류 로그", "JavaScript": "세션 오류 로그", "CSharp": "세션 오류 로그", "CPlusPlus": "세션 오류 로그", "C": "세션 오류 로그", "TypeScript": "세션 오류 로그", "Kotlin": "세션 오류 로그", "Ruby": "세션 오류 로그", "PHP": "세션 오류 로그"}'),
    ('updateSessionTimeout', '{"Java": "세션 타임아웃 업데이트", "Python": "세션 타임아웃 업데이트", "JavaScript": "세션 타임아웃 업데이트", "CSharp": "세션 타임아웃 업데이트", "CPlusPlus": "세션 타임아웃 업데이트", "C": "세션 타임아웃 업데이트", "TypeScript": "세션 타임아웃 업데이트", "Kotlin": "세션 타임아웃 업데이트", "Ruby": "세션 타임아웃 업데이트", "PHP": "세션 타임아웃 업데이트"}'),
    ('refreshSessionToken', '{"Java": "세션 토큰 갱신", "Python": "세션 토큰 갱신", "JavaScript": "세션 토큰 갱신", "CSharp": "세션 토큰 갱신", "CPlusPlus": "세션 토큰 갱신", "C": "세션 토큰 갱신", "TypeScript": "세션 토큰 갱신", "Kotlin": "세션 토큰 갱신", "Ruby": "세션 토큰 갱신", "PHP": "세션 토큰 갱신"}'),
    ('validateSessionId', '{"Java": "세션 ID 유효성 검사", "Python": "세션 ID 유효성 검사", "JavaScript": "세션 ID 유효성 검사", "CSharp": "세션 ID 유효성 검사", "CPlusPlus": "세션 ID 유효성 검사", "C": "세션 ID 유효성 검사", "TypeScript": "세션 ID 유효성 검사", "Kotlin": "세션 ID 유효성 검사", "Ruby": "세션 ID 유효성 검사", "PHP": "세션 ID 유효성 검사"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('getSessionHistory', '{"Java": "세션 기록 가져오기", "Python": "세션 기록 가져오기", "JavaScript": "세션 기록 가져오기", "CSharp": "세션 기록 가져오기", "CPlusPlus": "세션 기록 가져오기", "C": "세션 기록 가져오기", "TypeScript": "세션 기록 가져오기", "Kotlin": "세션 기록 가져오기", "Ruby": "세션 기록 가져오기", "PHP": "세션 기록 가져오기"}'),
    ('archiveSessionHistory', '{"Java": "세션 기록 보관", "Python": "세션 기록 보관", "JavaScript": "세션 기록 보관", "CSharp": "세션 기록 보관", "CPlusPlus": "세션 기록 보관", "C": "세션 기록 보관", "TypeScript": "세션 기록 보관", "Kotlin": "세션 기록 보관", "Ruby": "세션 기록 보관", "PHP": "세션 기록 보관"}'),
    ('deleteSessionHistory', '{"Java": "세션 기록 삭제", "Python": "세션 기록 삭제", "JavaScript": "세션 기록 삭제", "CSharp": "세션 기록 삭제", "CPlusPlus": "세션 기록 삭제", "C": "세션 기록 삭제", "TypeScript": "세션 기록 삭제", "Kotlin": "세션 기록 삭제", "Ruby": "세션 기록 삭제", "PHP": "세션 기록 삭제"}'),
    ('setSessionPolicy', '{"Java": "세션 정책 설정", "Python": "세션 정책 설정", "JavaScript": "세션 정책 설정", "CSharp": "세션 정책 설정", "CPlusPlus": "세션 정책 설정", "C": "세션 정책 설정", "TypeScript": "세션 정책 설정", "Kotlin": "세션 정책 설정", "Ruby": "세션 정책 설정", "PHP": "세션 정책 설정"}'),
    ('getSessionPolicy', '{"Java": "세션 정책 가져오기", "Python": "세션 정책 가져오기", "JavaScript": "세션 정책 가져오기", "CSharp": "세션 정책 가져오기", "CPlusPlus": "세션 정책 가져오기", "C": "세션 정책 가져오기", "TypeScript": "세션 정책 가져오기", "Kotlin": "세션 정책 가져오기", "Ruby": "세션 정책 가져오기", "PHP": "세션 정책 가져오기"}'),
    ('updateSessionPolicy', '{"Java": "세션 정책 업데이트", "Python": "세션 정책 업데이트", "JavaScript": "세션 정책 업데이트", "CSharp": "세션 정책 업데이트", "CPlusPlus": "세션 정책 업데이트", "C": "세션 정책 업데이트", "TypeScript": "세션 정책 업데이트", "Kotlin": "세션 정책 업데이트", "Ruby": "세션 정책 업데이트", "PHP": "세션 정책 업데이트"}'),
    ('isSessionPolicyCompliant', '{"Java": "세션 정책 준수 여부 확인", "Python": "세션 정책 준수 여부 확인", "JavaScript": "세션 정책 준수 여부 확인", "CSharp": "세션 정책 준수 여부 확인", "CPlusPlus": "세션 정책 준수 여부 확인", "C": "세션 정책 준수 여부 확인", "TypeScript": "세션 정책 준수 여부 확인", "Kotlin": "세션 정책 준수 여부 확인", "Ruby": "세션 정책 준수 여부 확인", "PHP": "세션 정책 준수 여부 확인"}'),
    ('enforceSessionPolicy', '{"Java": "세션 정책 시행", "Python": "세션 정책 시행", "JavaScript": "세션 정책 시행", "CSharp": "세션 정책 시행", "CPlusPlus": "세션 정책 시행", "C": "세션 정책 시행", "TypeScript": "세션 정책 시행", "Kotlin": "세션 정책 시행", "Ruby": "세션 정책 시행", "PHP": "세션 정책 시행"}'),
    ('getSessionExpiryTime', '{"Java": "세션 만료 시간 가져오기", "Python": "세션 만료 시간 가져오기", "JavaScript": "세션 만료 시간 가져오기", "CSharp": "세션 만료 시간 가져오기", "CPlusPlus": "세션 만료 시간 가져오기", "C": "세션 만료 시간 가져오기", "TypeScript": "세션 만료 시간 가져오기", "Kotlin": "세션 만료 시간 가져오기", "Ruby": "세션 만료 시간 가져오기", "PHP": "세션 만료 시간 가져오기"}'),
    ('setSessionExpiryTime', '{"Java": "세션 만료 시간 설정", "Python": "세션 만료 시간 설정", "JavaScript": "세션 만료 시간 설정", "CSharp": "세션 만료 시간 설정", "CPlusPlus": "세션 만료 시간 설정", "C": "세션 만료 시간 설정", "TypeScript": "세션 만료 시간 설정", "Kotlin": "세션 만료 시간 설정", "Ruby": "세션 만료 시간 설정", "PHP": "세션 만료 시간 설정"}'),
    ('clearSessionExpiryTime', '{"Java": "세션 만료 시간 초기화", "Python": "세션 만료 시간 초기화", "JavaScript": "세션 만료 시간 초기화", "CSharp": "세션 만료 시간 초기화", "CPlusPlus": "세션 만료 시간 초기화", "C": "세션 만료 시간 초기화", "TypeScript": "세션 만료 시간 초기화", "Kotlin": "세션 만료 시간 초기화", "Ruby": "세션 만료 시간 초기화", "PHP": "세션 만료 시간 초기화"}'),
    ('resetSessionPolicy', '{"Java": "세션 정책 초기화", "Python": "세션 정책 초기화", "JavaScript": "세션 정책 초기화", "CSharp": "세션 정책 초기화", "CPlusPlus": "세션 정책 초기화", "C": "세션 정책 초기화", "TypeScript": "세션 정책 초기화", "Kotlin": "세션 정책 초기화", "Ruby": "세션 정책 초기화", "PHP": "세션 정책 초기화"}'),
    ('getSessionPerformanceMetrics', '{"Java": "세션 성능 메트릭 가져오기", "Python": "세션 성능 메트릭 가져오기", "JavaScript": "세션 성능 메트릭 가져오기", "CSharp": "세션 성능 메트릭 가져오기", "CPlusPlus": "세션 성능 메트릭 가져오기", "C": "세션 성능 메트릭 가져오기", "TypeScript": "세션 성능 메트릭 가져오기", "Kotlin": "세션 성능 메트릭 가져오기", "Ruby": "세션 성능 메트릭 가져오기", "PHP": "세션 성능 메트릭 가져오기"}'),
    ('optimizeSessionPerformance', '{"Java": "세션 성능 최적화", "Python": "세션 성능 최적화", "JavaScript": "세션 성능 최적화", "CSharp": "세션 성능 최적화", "CPlusPlus": "세션 성능 최적화", "C": "세션 성능 최적화", "TypeScript": "세션 성능 최적화", "Kotlin": "세션 성능 최적화", "Ruby": "세션 성능 최적화", "PHP": "세션 성능 최적화"}'),
    ('validateSessionPermissions', '{"Java": "세션 권한 유효성 검사", "Python": "세션 권한 유효성 검사", "JavaScript": "세션 권한 유효성 검사", "CSharp": "세션 권한 유효성 검사", "CPlusPlus": "세션 권한 유효성 검사", "C": "세션 권한 유효성 검사", "TypeScript": "세션 권한 유효성 검사", "Kotlin": "세션 권한 유효성 검사", "Ruby": "세션 권한 유효성 검사", "PHP": "세션 권한 유효성 검사"}'),
    ('logSessionTimeout', '{"Java": "세션 타임아웃 로그", "Python": "세션 타임아웃 로그", "JavaScript": "세션 타임아웃 로그", "CSharp": "세션 타임아웃 로그", "CPlusPlus": "세션 타임아웃 로그", "C": "세션 타임아웃 로그", "TypeScript": "세션 타임아웃 로그", "Kotlin": "세션 타임아웃 로그", "Ruby": "세션 타임아웃 로그", "PHP": "세션 타임아웃 로그"}'),
    ('trackSessionErrors', '{"Java": "세션 오류 추적", "Python": "세션 오류 추적", "JavaScript": "세션 오류 추적", "CSharp": "세션 오류 추적", "CPlusPlus": "세션 오류 추적", "C": "세션 오류 추적", "TypeScript": "세션 오류 추적", "Kotlin": "세션 오류 추적", "Ruby": "세션 오류 추적", "PHP": "세션 오류 추적"}'),
    ('analyzeSessionTimeouts', '{"Java": "세션 타임아웃 분석", "Python": "세션 타임아웃 분석", "JavaScript": "세션 타임아웃 분석", "CSharp": "세션 타임아웃 분석", "CPlusPlus": "세션 타임아웃 분석", "C": "세션 타임아웃 분석", "TypeScript": "세션 타임아웃 분석", "Kotlin": "세션 타임아웃 분석", "Ruby": "세션 타임아웃 분석", "PHP": "세션 타임아웃 분석"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('configureSession', '{"Java": "세션 구성", "Python": "세션 구성", "JavaScript": "세션 구성", "CSharp": "세션 구성", "CPlusPlus": "세션 구성", "C": "세션 구성", "TypeScript": "세션 구성", "Kotlin": "세션 구성", "Ruby": "세션 구성", "PHP": "세션 구성"}'),
    ('getSessionConfig', '{"Java": "세션 구성 가져오기", "Python": "세션 구성 가져오기", "JavaScript": "세션 구성 가져오기", "CSharp": "세션 구성 가져오기", "CPlusPlus": "세션 구성 가져오기", "C": "세션 구성 가져오기", "TypeScript": "세션 구성 가져오기", "Kotlin": "세션 구성 가져오기", "Ruby": "세션 구성 가져오기", "PHP": "세션 구성 가져오기"}'),
    ('updateSessionConfig', '{"Java": "세션 구성 업데이트", "Python": "세션 구성 업데이트", "JavaScript": "세션 구성 업데이트", "CSharp": "세션 구성 업데이트", "CPlusPlus": "세션 구성 업데이트", "C": "세션 구성 업데이트", "TypeScript": "세션 구성 업데이트", "Kotlin": "세션 구성 업데이트", "Ruby": "세션 구성 업데이트", "PHP": "세션 구성 업데이트"}'),
    ('resetSessionConfig', '{"Java": "세션 구성 초기화", "Python": "세션 구성 초기화", "JavaScript": "세션 구성 초기화", "CSharp": "세션 구성 초기화", "CPlusPlus": "세션 구성 초기화", "C": "세션 구성 초기화", "TypeScript": "세션 구성 초기화", "Kotlin": "세션 구성 초기화", "Ruby": "세션 구성 초기화", "PHP": "세션 구성 초기화"}'),
    ('enableSessionLogs', '{"Java": "세션 로그 활성화", "Python": "세션 로그 활성화", "JavaScript": "세션 로그 활성화", "CSharp": "세션 로그 활성화", "CPlusPlus": "세션 로그 활성화", "C": "세션 로그 활성화", "TypeScript": "세션 로그 활성화", "Kotlin": "세션 로그 활성화", "Ruby": "세션 로그 활성화", "PHP": "세션 로그 활성화"}'),
    ('disableSessionLogs', '{"Java": "세션 로그 비활성화", "Python": "세션 로그 비활성화", "JavaScript": "세션 로그 비활성화", "CSharp": "세션 로그 비활성화", "CPlusPlus": "세션 로그 비활성화", "C": "세션 로그 비활성화", "TypeScript": "세션 로그 비활성화", "Kotlin": "세션 로그 비활성화", "Ruby": "세션 로그 비활성화", "PHP": "세션 로그 비활성화"}'),
    ('logSessionStart', '{"Java": "세션 시작 로그", "Python": "세션 시작 로그", "JavaScript": "세션 시작 로그", "CSharp": "세션 시작 로그", "CPlusPlus": "세션 시작 로그", "C": "세션 시작 로그", "TypeScript": "세션 시작 로그", "Kotlin": "세션 시작 로그", "Ruby": "세션 시작 로그", "PHP": "세션 시작 로그"}'),
    ('logSessionEnd', '{"Java": "세션 종료 로그", "Python": "세션 종료 로그", "JavaScript": "세션 종료 로그", "CSharp": "세션 종료 로그", "CPlusPlus": "세션 종료 로그", "C": "세션 종료 로그", "TypeScript": "세션 종료 로그", "Kotlin": "세션 종료 로그", "Ruby": "세션 종료 로그", "PHP": "세션 종료 로그"}'),
    ('trackSessionDuration', '{"Java": "세션 지속 시간 추적", "Python": "세션 지속 시간 추적", "JavaScript": "세션 지속 시간 추적", "CSharp": "세션 지속 시간 추적", "CPlusPlus": "세션 지속 시간 추적", "C": "세션 지속 시간 추적", "TypeScript": "세션 지속 시간 추적", "Kotlin": "세션 지속 시간 추적", "Ruby": "세션 지속 시간 추적", "PHP": "세션 지속 시간 추적"}'),
    ('calculateSessionDuration', '{"Java": "세션 지속 시간 계산", "Python": "세션 지속 시간 계산", "JavaScript": "세션 지속 시간 계산", "CSharp": "세션 지속 시간 계산", "CPlusPlus": "세션 지속 시간 계산", "C": "세션 지속 시간 계산", "TypeScript": "세션 지속 시간 계산", "Kotlin": "세션 지속 시간 계산", "Ruby": "세션 지속 시간 계산", "PHP": "세션 지속 시간 계산"}'),
    ('applySessionLimits', '{"Java": "세션 제한 적용", "Python": "세션 제한 적용", "JavaScript": "세션 제한 적용", "CSharp": "세션 제한 적용", "CPlusPlus": "세션 제한 적용", "C": "세션 제한 적용", "TypeScript": "세션 제한 적용", "Kotlin": "세션 제한 적용", "Ruby": "세션 제한 적용", "PHP": "세션 제한 적용"}'),
    ('getSessionLimits', '{"Java": "세션 제한 가져오기", "Python": "세션 제한 가져오기", "JavaScript": "세션 제한 가져오기", "CSharp": "세션 제한 가져오기", "CPlusPlus": "세션 제한 가져오기", "C": "세션 제한 가져오기", "TypeScript": "세션 제한 가져오기", "Kotlin": "세션 제한 가져오기", "Ruby": "세션 제한 가져오기", "PHP": "세션 제한 가져오기"}'),
    ('clearSessionLimits', '{"Java": "세션 제한 초기화", "Python": "세션 제한 초기화", "JavaScript": "세션 제한 초기화", "CSharp": "세션 제한 초기화", "CPlusPlus": "세션 제한 초기화", "C": "세션 제한 초기화", "TypeScript": "세션 제한 초기화", "Kotlin": "세션 제한 초기화", "Ruby": "세션 제한 초기화", "PHP": "세션 제한 초기화"}'),
    ('validateSessionLimits', '{"Java": "세션 제한 유효성 검사", "Python": "세션 제한 유효성 검사", "JavaScript": "세션 제한 유효성 검사", "CSharp": "세션 제한 유효성 검사", "CPlusPlus": "세션 제한 유효성 검사", "C": "세션 제한 유효성 검사", "TypeScript": "세션 제한 유효성 검사", "Kotlin": "세션 제한 유효성 검사", "Ruby": "세션 제한 유효성 검사", "PHP": "세션 제한 유효성 검사"}'),
    ('enforceSessionLimits', '{"Java": "세션 제한 시행", "Python": "세션 제한 시행", "JavaScript": "세션 제한 시행", "CSharp": "세션 제한 시행", "CPlusPlus": "세션 제한 시행", "C": "세션 제한 시행", "TypeScript": "세션 제한 시행", "Kotlin": "세션 제한 시행", "Ruby": "세션 제한 시행", "PHP": "세션 제한 시행"}'),
    ('logSessionLimits', '{"Java": "세션 제한 로그", "Python": "세션 제한 로그", "JavaScript": "세션 제한 로그", "CSharp": "세션 제한 로그", "CPlusPlus": "세션 제한 로그", "C": "세션 제한 로그", "TypeScript": "세션 제한 로그", "Kotlin": "세션 제한 로그", "Ruby": "세션 제한 로그", "PHP": "세션 제한 로그"}'),
    ('overrideSessionLimits', '{"Java": "세션 제한 재정의", "Python": "세션 제한 재정의", "JavaScript": "세션 제한 재정의", "CSharp": "세션 제한 재정의", "CPlusPlus": "세션 제한 재정의", "C": "세션 제한 재정의", "TypeScript": "세션 제한 재정의", "Kotlin": "세션 제한 재정의", "Ruby": "세션 제한 재정의", "PHP": "세션 제한 재정의"}'),
    ('setSessionPriority', '{"Java": "세션 우선순위 설정", "Python": "세션 우선순위 설정", "JavaScript": "세션 우선순위 설정", "CSharp": "세션 우선순위 설정", "CPlusPlus": "세션 우선순위 설정", "C": "세션 우선순위 설정", "TypeScript": "세션 우선순위 설정", "Kotlin": "세션 우선순위 설정", "Ruby": "세션 우선순위 설정", "PHP": "세션 우선순위 설정"}'),
    ('getSessionPriority', '{"Java": "세션 우선순위 가져오기", "Python": "세션 우선순위 가져오기", "JavaScript": "세션 우선순위 가져오기", "CSharp": "세션 우선순위 가져오기", "CPlusPlus": "세션 우선순위 가져오기", "C": "세션 우선순위 가져오기", "TypeScript": "세션 우선순위 가져오기", "Kotlin": "세션 우선순위 가져오기", "Ruby": "세션 우선순위 가져오기", "PHP": "세션 우선순위 가져오기"}'),
    ('adjustSessionPriority', '{"Java": "세션 우선순위 조정", "Python": "세션 우선순위 조정", "JavaScript": "세션 우선순위 조정", "CSharp": "세션 우선순위 조정", "CPlusPlus": "세션 우선순위 조정", "C": "세션 우선순위 조정", "TypeScript": "세션 우선순위 조정", "Kotlin": "세션 우선순위 조정", "Ruby": "세션 우선순위 조정", "PHP": "세션 우선순위 조정"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('initializeSessionTimeout', '{"Java": "세션 타임아웃 초기화", "Python": "세션 타임아웃 초기화", "JavaScript": "세션 타임아웃 초기화", "CSharp": "세션 타임아웃 초기화", "CPlusPlus": "세션 타임아웃 초기화", "C": "세션 타임아웃 초기화", "TypeScript": "세션 타임아웃 초기화", "Kotlin": "세션 타임아웃 초기화", "Ruby": "세션 타임아웃 초기화", "PHP": "세션 타임아웃 초기화"}'),
    ('suspendSession', '{"Java": "세션 중단", "Python": "세션 중단", "JavaScript": "세션 중단", "CSharp": "세션 중단", "CPlusPlus": "세션 중단", "C": "세션 중단", "TypeScript": "세션 중단", "Kotlin": "세션 중단", "Ruby": "세션 중단", "PHP": "세션 중단"}'),
    ('resumeSession', '{"Java": "세션 재개", "Python": "세션 재개", "JavaScript": "세션 재개", "CSharp": "세션 재개", "CPlusPlus": "세션 재개", "C": "세션 재개", "TypeScript": "세션 재개", "Kotlin": "세션 재개", "Ruby": "세션 재개", "PHP": "세션 재개"}'),
    ('scheduleSession', '{"Java": "세션 예약", "Python": "세션 예약", "JavaScript": "세션 예약", "CSharp": "세션 예약", "CPlusPlus": "세션 예약", "C": "세션 예약", "TypeScript": "세션 예약", "Kotlin": "세션 예약", "Ruby": "세션 예약", "PHP": "세션 예약"}'),
    ('cancelSessionSchedule', '{"Java": "세션 예약 취소", "Python": "세션 예약 취소", "JavaScript": "세션 예약 취소", "CSharp": "세션 예약 취소", "CPlusPlus": "세션 예약 취소", "C": "세션 예약 취소", "TypeScript": "세션 예약 취소", "Kotlin": "세션 예약 취소", "Ruby": "세션 예약 취소", "PHP": "세션 예약 취소"}'),
    ('setSessionThreshold', '{"Java": "세션 임계값 설정", "Python": "세션 임계값 설정", "JavaScript": "세션 임계값 설정", "CSharp": "세션 임계값 설정", "CPlusPlus": "세션 임계값 설정", "C": "세션 임계값 설정", "TypeScript": "세션 임계값 설정", "Kotlin": "세션 임계값 설정", "Ruby": "세션 임계값 설정", "PHP": "세션 임계값 설정"}'),
    ('getSessionThreshold', '{"Java": "세션 임계값 가져오기", "Python": "세션 임계값 가져오기", "JavaScript": "세션 임계값 가져오기", "CSharp": "세션 임계값 가져오기", "CPlusPlus": "세션 임계값 가져오기", "C": "세션 임계값 가져오기", "TypeScript": "세션 임계값 가져오기", "Kotlin": "세션 임계값 가져오기", "Ruby": "세션 임계값 가져오기", "PHP": "세션 임계값 가져오기"}'),
    ('clearSessionThreshold', '{"Java": "세션 임계값 초기화", "Python": "세션 임계값 초기화", "JavaScript": "세션 임계값 초기화", "CSharp": "세션 임계값 초기화", "CPlusPlus": "세션 임계값 초기화", "C": "세션 임계값 초기화", "TypeScript": "세션 임계값 초기화", "Kotlin": "세션 임계값 초기화", "Ruby": "세션 임계값 초기화", "PHP": "세션 임계값 초기화"}'),
    ('analyzeSessionUsage', '{"Java": "세션 사용 분석", "Python": "세션 사용 분석", "JavaScript": "세션 사용 분석", "CSharp": "세션 사용 분석", "CPlusPlus": "세션 사용 분석", "C": "세션 사용 분석", "TypeScript": "세션 사용 분석", "Kotlin": "세션 사용 분석", "Ruby": "세션 사용 분석", "PHP": "세션 사용 분석"}'),
    ('summarizeSessionMetrics', '{"Java": "세션 메트릭 요약", "Python": "세션 메트릭 요약", "JavaScript": "세션 메트릭 요약", "CSharp": "세션 메트릭 요약", "CPlusPlus": "세션 메트릭 요약", "C": "세션 메트릭 요약", "TypeScript": "세션 메트릭 요약", "Kotlin": "세션 메트릭 요약", "Ruby": "세션 메트릭 요약", "PHP": "세션 메트릭 요약"}'),
    ('getSessionAuditLog', '{"Java": "세션 감사 로그 가져오기", "Python": "세션 감사 로그 가져오기", "JavaScript": "세션 감사 로그 가져오기", "CSharp": "세션 감사 로그 가져오기", "CPlusPlus": "세션 감사 로그 가져오기", "C": "세션 감사 로그 가져오기", "TypeScript": "세션 감사 로그 가져오기", "Kotlin": "세션 감사 로그 가져오기", "Ruby": "세션 감사 로그 가져오기", "PHP": "세션 감사 로그 가져오기"}'),
    ('resetSessionAuditLog', '{"Java": "세션 감사 로그 초기화", "Python": "세션 감사 로그 초기화", "JavaScript": "세션 감사 로그 초기화", "CSharp": "세션 감사 로그 초기화", "CPlusPlus": "세션 감사 로그 초기화", "C": "세션 감사 로그 초기화", "TypeScript": "세션 감사 로그 초기화", "Kotlin": "세션 감사 로그 초기화", "Ruby": "세션 감사 로그 초기화", "PHP": "세션 감사 로그 초기화"}'),
    ('logSessionAuditEvent', '{"Java": "세션 감사 이벤트 기록", "Python": "세션 감사 이벤트 기록", "JavaScript": "세션 감사 이벤트 기록", "CSharp": "세션 감사 이벤트 기록", "CPlusPlus": "세션 감사 이벤트 기록", "C": "세션 감사 이벤트 기록", "TypeScript": "세션 감사 이벤트 기록", "Kotlin": "세션 감사 이벤트 기록", "Ruby": "세션 감사 이벤트 기록", "PHP": "세션 감사 이벤트 기록"}'),
    ('validateSessionAuditLog', '{"Java": "세션 감사 로그 유효성 검사", "Python": "세션 감사 로그 유효성 검사", "JavaScript": "세션 감사 로그 유효성 검사", "CSharp": "세션 감사 로그 유효성 검사", "CPlusPlus": "세션 감사 로그 유효성 검사", "C": "세션 감사 로그 유효성 검사", "TypeScript": "세션 감사 로그 유효성 검사", "Kotlin": "세션 감사 로그 유효성 검사", "Ruby": "세션 감사 로그 유효성 검사", "PHP": "세션 감사 로그 유효성 검사"}'),
    ('configureSessionAudit', '{"Java": "세션 감사 구성", "Python": "세션 감사 구성", "JavaScript": "세션 감사 구성", "CSharp": "세션 감사 구성", "CPlusPlus": "세션 감사 구성", "C": "세션 감사 구성", "TypeScript": "세션 감사 구성", "Kotlin": "세션 감사 구성", "Ruby": "세션 감사 구성", "PHP": "세션 감사 구성"}'),
    ('getSessionAuditConfig', '{"Java": "세션 감사 구성 가져오기", "Python": "세션 감사 구성 가져오기", "JavaScript": "세션 감사 구성 가져오기", "CSharp": "세션 감사 구성 가져오기", "CPlusPlus": "세션 감사 구성 가져오기", "C": "세션 감사 구성 가져오기", "TypeScript": "세션 감사 구성 가져오기", "Kotlin": "세션 감사 구성 가져오기", "Ruby": "세션 감사 구성 가져오기", "PHP": "세션 감사 구성 가져오기"}'),
    ('applySessionAuditPolicy', '{"Java": "세션 감사 정책 적용", "Python": "세션 감사 정책 적용", "JavaScript": "세션 감사 정책 적용", "CSharp": "세션 감사 정책 적용", "CPlusPlus": "세션 감사 정책 적용", "C": "세션 감사 정책 적용", "TypeScript": "세션 감사 정책 적용", "Kotlin": "세션 감사 정책 적용", "Ruby": "세션 감사 정책 적용", "PHP": "세션 감사 정책 적용"}'),
    ('synchronizeSessionAuditLog', '{"Java": "세션 감사 로그 동기화", "Python": "세션 감사 로그 동기화", "JavaScript": "세션 감사 로그 동기화", "CSharp": "세션 감사 로그 동기화", "CPlusPlus": "세션 감사 로그 동기화", "C": "세션 감사 로그 동기화", "TypeScript": "세션 감사 로그 동기화", "Kotlin": "세션 감사 로그 동기화", "Ruby": "세션 감사 로그 동기화", "PHP": "세션 감사 로그 동기화"}'),
    ('validateSessionConfiguration', '{"Java": "세션 구성 유효성 검사", "Python": "세션 구성 유효성 검사", "JavaScript": "세션 구성 유효성 검사", "CSharp": "세션 구성 유효성 검사", "CPlusPlus": "세션 구성 유효성 검사", "C": "세션 구성 유효성 검사", "TypeScript": "세션 구성 유효성 검사", "Kotlin": "세션 구성 유효성 검사", "Ruby": "세션 구성 유효성 검사", "PHP": "세션 구성 유효성 검사"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('arrayList', '{"Java": "배열 리스트", "Python": "리스트", "JavaScript": "배열", "CSharp": "리스트", "CPlusPlus": "벡터", "C": "배열", "TypeScript": "배열", "Kotlin": "리스트", "Ruby": "배열", "PHP": "배열"}'),
    ('string', '{"Java": "문자열", "Python": "문자열", "JavaScript": "문자열", "CSharp": "문자열", "CPlusPlus": "문자열", "C": "문자열", "TypeScript": "문자열", "Kotlin": "문자열", "Ruby": "문자열", "PHP": "문자열"}'),
    ('list', '{"Java": "리스트", "Python": "리스트", "JavaScript": "배열", "CSharp": "리스트", "CPlusPlus": "벡터", "C": "배열", "TypeScript": "배열", "Kotlin": "리스트", "Ruby": "배열", "PHP": "배열"}'),
    ('optional', '{"Java": "옵셔널", "Python": "옵션", "JavaScript": "옵션", "CSharp": "옵션", "CPlusPlus": "옵션", "C": "옵션", "TypeScript": "옵션", "Kotlin": "옵셔널", "Ruby": "옵션", "PHP": "옵션"}'),
    ('if', '{"Java": "조건문", "Python": "조건문", "JavaScript": "조건문", "CSharp": "조건문", "CPlusPlus": "조건문", "C": "조건문", "TypeScript": "조건문", "Kotlin": "조건문", "Ruby": "조건문", "PHP": "조건문"}'),
    ('else', '{"Java": "그 외", "Python": "그 외", "JavaScript": "그 외", "CSharp": "그 외", "CPlusPlus": "그 외", "C": "그 외", "TypeScript": "그 외", "Kotlin": "그 외", "Ruby": "그 외", "PHP": "그 외"}'),
    ('for', '{"Java": "반복문", "Python": "반복문", "JavaScript": "반복문", "CSharp": "반복문", "CPlusPlus": "반복문", "C": "반복문", "TypeScript": "반복문", "Kotlin": "반복문", "Ruby": "반복문", "PHP": "반복문"}'),
    ('while', '{"Java": "조건 반복문", "Python": "조건 반복문", "JavaScript": "조건 반복문", "CSharp": "조건 반복문", "CPlusPlus": "조건 반복문", "C": "조건 반복문", "TypeScript": "조건 반복문", "Kotlin": "조건 반복문", "Ruby": "조건 반복문", "PHP": "조건 반복문"}'),
    ('switch', '{"Java": "조건 분기문", "Python": "조건 분기문", "JavaScript": "조건 분기문", "CSharp": "조건 분기문", "CPlusPlus": "조건 분기문", "C": "조건 분기문", "TypeScript": "조건 분기문", "Kotlin": "조건 분기문", "Ruby": "조건 분기문", "PHP": "조건 분기문"}'),
    ('case', '{"Java": "케이스", "Python": "케이스", "JavaScript": "케이스", "CSharp": "케이스", "CPlusPlus": "케이스", "C": "케이스", "TypeScript": "케이스", "Kotlin": "케이스", "Ruby": "케이스", "PHP": "케이스"}'),
    ('break', '{"Java": "중단", "Python": "중단", "JavaScript": "중단", "CSharp": "중단", "CPlusPlus": "중단", "C": "중단", "TypeScript": "중단", "Kotlin": "중단", "Ruby": "중단", "PHP": "중단"}'),
    ('continue', '{"Java": "계속", "Python": "계속", "JavaScript": "계속", "CSharp": "계속", "CPlusPlus": "계속", "C": "계속", "TypeScript": "계속", "Kotlin": "계속", "Ruby": "계속", "PHP": "계속"}'),
    ('return', '{"Java": "반환", "Python": "반환", "JavaScript": "반환", "CSharp": "반환", "CPlusPlus": "반환", "C": "반환", "TypeScript": "반환", "Kotlin": "반환", "Ruby": "반환", "PHP": "반환"}'),
    ('null', '{"Java": "값 없음", "Python": "값 없음", "JavaScript": "값 없음", "CSharp": "값 없음", "CPlusPlus": "값 없음", "C": "값 없음", "TypeScript": "값 없음", "Kotlin": "값 없음", "Ruby": "값 없음", "PHP": "값 없음"}'),
    ('true', '{"Java": "참", "Python": "참", "JavaScript": "참", "CSharp": "참", "CPlusPlus": "참", "C": "참", "TypeScript": "참", "Kotlin": "참", "Ruby": "참", "PHP": "참"}'),
    ('false', '{"Java": "거짓", "Python": "거짓", "JavaScript": "거짓", "CSharp": "거짓", "CPlusPlus": "거짓", "C": "거짓", "TypeScript": "거짓", "Kotlin": "거짓", "Ruby": "거짓", "PHP": "거짓"}'),
    ('int', '{"Java": "정수형", "Python": "정수형", "JavaScript": "정수형", "CSharp": "정수형", "CPlusPlus": "정수형", "C": "정수형", "TypeScript": "정수형", "Kotlin": "정수형", "Ruby": "정수형", "PHP": "정수형"}'),
    ('float', '{"Java": "실수형", "Python": "실수형", "JavaScript": "실수형", "CSharp": "실수형", "CPlusPlus": "실수형", "C": "실수형", "TypeScript": "실수형", "Kotlin": "실수형", "Ruby": "실수형", "PHP": "실수형"}'),
    ('char', '{"Java": "문자형", "Python": "문자형", "JavaScript": "문자형", "CSharp": "문자형", "CPlusPlus": "문자형", "C": "문자형", "TypeScript": "문자형", "Kotlin": "문자형", "Ruby": "문자형", "PHP": "문자형"}'),
    ('boolean', '{"Java": "논리형", "Python": "논리형", "JavaScript": "논리형", "CSharp": "논리형", "CPlusPlus": "논리형", "C": "논리형", "TypeScript": "논리형", "Kotlin": "논리형", "Ruby": "논리형", "PHP": "논리형"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('double', '{"Java": "더블형", "Python": "실수형", "JavaScript": "실수형", "CSharp": "더블형", "CPlusPlus": "더블형", "C": "더블형", "TypeScript": "실수형", "Kotlin": "더블형", "Ruby": "실수형", "PHP": "실수형"}'),
    ('long', '{"Java": "긴 정수형", "Python": "긴 정수형", "JavaScript": "긴 정수형", "CSharp": "긴 정수형", "CPlusPlus": "긴 정수형", "C": "긴 정수형", "TypeScript": "긴 정수형", "Kotlin": "긴 정수형", "Ruby": "긴 정수형", "PHP": "긴 정수형"}'),
    ('short', '{"Java": "짧은 정수형", "Python": "짧은 정수형", "JavaScript": "짧은 정수형", "CSharp": "짧은 정수형", "CPlusPlus": "짧은 정수형", "C": "짧은 정수형", "TypeScript": "짧은 정수형", "Kotlin": "짧은 정수형", "Ruby": "짧은 정수형", "PHP": "짧은 정수형"}'),
    ('byte', '{"Java": "바이트형", "Python": "바이트형", "JavaScript": "바이트형", "CSharp": "바이트형", "CPlusPlus": "바이트형", "C": "바이트형", "TypeScript": "바이트형", "Kotlin": "바이트형", "Ruby": "바이트형", "PHP": "바이트형"}'),
    ('void', '{"Java": "반환 없음", "Python": "반환 없음", "JavaScript": "반환 없음", "CSharp": "반환 없음", "CPlusPlus": "반환 없음", "C": "반환 없음", "TypeScript": "반환 없음", "Kotlin": "반환 없음", "Ruby": "반환 없음", "PHP": "반환 없음"}'),
    ('static', '{"Java": "정적", "Python": "정적", "JavaScript": "정적", "CSharp": "정적", "CPlusPlus": "정적", "C": "정적", "TypeScript": "정적", "Kotlin": "정적", "Ruby": "정적", "PHP": "정적"}'),
    ('final', '{"Java": "최종", "Python": "최종", "JavaScript": "최종", "CSharp": "최종", "CPlusPlus": "최종", "C": "최종", "TypeScript": "최종", "Kotlin": "최종", "Ruby": "최종", "PHP": "최종"}'),
    ('abstract', '{"Java": "추상화", "Python": "추상화", "JavaScript": "추상화", "CSharp": "추상화", "CPlusPlus": "추상화", "C": "추상화", "TypeScript": "추상화", "Kotlin": "추상화", "Ruby": "추상화", "PHP": "추상화"}'),
    ('synchronized', '{"Java": "동기화된", "Python": "동기화된", "JavaScript": "동기화된", "CSharp": "동기화된", "CPlusPlus": "동기화된", "C": "동기화된", "TypeScript": "동기화된", "Kotlin": "동기화된", "Ruby": "동기화된", "PHP": "동기화된"}'),
    ('volatile', '{"Java": "변동 가능", "Python": "변동 가능", "JavaScript": "변동 가능", "CSharp": "변동 가능", "CPlusPlus": "변동 가능", "C": "변동 가능", "TypeScript": "변동 가능", "Kotlin": "변동 가능", "Ruby": "변동 가능", "PHP": "변동 가능"}'),
    ('default', '{"Java": "기본값", "Python": "기본값", "JavaScript": "기본값", "CSharp": "기본값", "CPlusPlus": "기본값", "C": "기본값", "TypeScript": "기본값", "Kotlin": "기본값", "Ruby": "기본값", "PHP": "기본값"}'),
    ('try', '{"Java": "예외 처리 시도", "Python": "예외 처리 시도", "JavaScript": "예외 처리 시도", "CSharp": "예외 처리 시도", "CPlusPlus": "예외 처리 시도", "C": "예외 처리 시도", "TypeScript": "예외 처리 시도", "Kotlin": "예외 처리 시도", "Ruby": "예외 처리 시도", "PHP": "예외 처리 시도"}'),
    ('catch', '{"Java": "예외 처리", "Python": "예외 처리", "JavaScript": "예외 처리", "CSharp": "예외 처리", "CPlusPlus": "예외 처리", "C": "예외 처리", "TypeScript": "예외 처리", "Kotlin": "예외 처리", "Ruby": "예외 처리", "PHP": "예외 처리"}'),
    ('finally', '{"Java": "항상 실행", "Python": "항상 실행", "JavaScript": "항상 실행", "CSharp": "항상 실행", "CPlusPlus": "항상 실행", "C": "항상 실행", "TypeScript": "항상 실행", "Kotlin": "항상 실행", "Ruby": "항상 실행", "PHP": "항상 실행"}'),
    ('throw', '{"Java": "예외 던지기", "Python": "예외 던지기", "JavaScript": "예외 던지기", "CSharp": "예외 던지기", "CPlusPlus": "예외 던지기", "C": "예외 던지기", "TypeScript": "예외 던지기", "Kotlin": "예외 던지기", "Ruby": "예외 던지기", "PHP": "예외 던지기"}'),
    ('throws', '{"Java": "예외 선언", "Python": "예외 선언", "JavaScript": "예외 선언", "CSharp": "예외 선언", "CPlusPlus": "예외 선언", "C": "예외 선언", "TypeScript": "예외 선언", "Kotlin": "예외 선언", "Ruby": "예외 선언", "PHP": "예외 선언"}'),
    ('interface', '{"Java": "인터페이스", "Python": "인터페이스", "JavaScript": "인터페이스", "CSharp": "인터페이스", "CPlusPlus": "인터페이스", "C": "인터페이스", "TypeScript": "인터페이스", "Kotlin": "인터페이스", "Ruby": "인터페이스", "PHP": "인터페이스"}'),
    ('implements', '{"Java": "구현", "Python": "구현", "JavaScript": "구현", "CSharp": "구현", "CPlusPlus": "구현", "C": "구현", "TypeScript": "구현", "Kotlin": "구현", "Ruby": "구현", "PHP": "구현"}'),
    ('instanceof', '{"Java": "인스턴스 확인", "Python": "인스턴스 확인", "JavaScript": "인스턴스 확인", "CSharp": "인스턴스 확인", "CPlusPlus": "인스턴스 확인", "C": "인스턴스 확인", "TypeScript": "인스턴스 확인", "Kotlin": "인스턴스 확인", "Ruby": "인스턴스 확인", "PHP": "인스턴스 확인"}'),
    ('assert', '{"Java": "단언", "Python": "단언", "JavaScript": "단언", "CSharp": "단언", "CPlusPlus": "단언", "C": "단언", "TypeScript": "단언", "Kotlin": "단언", "Ruby": "단언", "PHP": "단언"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('package', '{"Java": "패키지", "Python": "패키지", "JavaScript": "패키지", "CSharp": "패키지", "CPlusPlus": "패키지", "C": "패키지", "TypeScript": "패키지", "Kotlin": "패키지", "Ruby": "패키지", "PHP": "패키지"}'),
    ('import', '{"Java": "가져오기", "Python": "가져오기", "JavaScript": "가져오기", "CSharp": "가져오기", "CPlusPlus": "가져오기", "C": "가져오기", "TypeScript": "가져오기", "Kotlin": "가져오기", "Ruby": "가져오기", "PHP": "가져오기"}'),
    ('public', '{"Java": "공용", "Python": "공용", "JavaScript": "공용", "CSharp": "공용", "CPlusPlus": "공용", "C": "공용", "TypeScript": "공용", "Kotlin": "공용", "Ruby": "공용", "PHP": "공용"}'),
    ('private', '{"Java": "비공용", "Python": "비공용", "JavaScript": "비공용", "CSharp": "비공용", "CPlusPlus": "비공용", "C": "비공용", "TypeScript": "비공용", "Kotlin": "비공용", "Ruby": "비공용", "PHP": "비공용"}'),
    ('protected', '{"Java": "보호된", "Python": "보호된", "JavaScript": "보호된", "CSharp": "보호된", "CPlusPlus": "보호된", "C": "보호된", "TypeScript": "보호된", "Kotlin": "보호된", "Ruby": "보호된", "PHP": "보호된"}'),
    ('class', '{"Java": "클래스", "Python": "클래스", "JavaScript": "클래스", "CSharp": "클래스", "CPlusPlus": "클래스", "C": "클래스", "TypeScript": "클래스", "Kotlin": "클래스", "Ruby": "클래스", "PHP": "클래스"}'),
    ('enum', '{"Java": "열거형", "Python": "열거형", "JavaScript": "열거형", "CSharp": "열거형", "CPlusPlus": "열거형", "C": "열거형", "TypeScript": "열거형", "Kotlin": "열거형", "Ruby": "열거형", "PHP": "열거형"}'),
    ('extends', '{"Java": "상속", "Python": "상속", "JavaScript": "상속", "CSharp": "상속", "CPlusPlus": "상속", "C": "상속", "TypeScript": "상속", "Kotlin": "상속", "Ruby": "상속", "PHP": "상속"}'),
    ('super', '{"Java": "상위", "Python": "상위", "JavaScript": "상위", "CSharp": "상위", "CPlusPlus": "상위", "C": "상위", "TypeScript": "상위", "Kotlin": "상위", "Ruby": "상위", "PHP": "상위"}'),
    ('this', '{"Java": "현재 객체", "Python": "현재 객체", "JavaScript": "현재 객체", "CSharp": "현재 객체", "CPlusPlus": "현재 객체", "C": "현재 객체", "TypeScript": "현재 객체", "Kotlin": "현재 객체", "Ruby": "현재 객체", "PHP": "현재 객체"}'),
    ('new', '{"Java": "인스턴스 생성", "Python": "인스턴스 생성", "JavaScript": "인스턴스 생성", "CSharp": "인스턴스 생성", "CPlusPlus": "인스턴스 생성", "C": "인스턴스 생성", "TypeScript": "인스턴스 생성", "Kotlin": "인스턴스 생성", "Ruby": "인스턴스 생성", "PHP": "인스턴스 생성"}'),
    ('nullPointer', '{"Java": "널 포인터", "Python": "널 포인터", "JavaScript": "널 포인터", "CSharp": "널 포인터", "CPlusPlus": "널 포인터", "C": "널 포인터", "TypeScript": "널 포인터", "Kotlin": "널 포인터", "Ruby": "널 포인터", "PHP": "널 포인터"}'),
    ('stackOverflow', '{"Java": "스택 오버플로우", "Python": "스택 오버플로우", "JavaScript": "스택 오버플로우", "CSharp": "스택 오버플로우", "CPlusPlus": "스택 오버플로우", "C": "스택 오버플로우", "TypeScript": "스택 오버플로우", "Kotlin": "스택 오버플로우", "Ruby": "스택 오버플로우", "PHP": "스택 오버플로우"}'),
    ('heapMemory', '{"Java": "힙 메모리", "Python": "힙 메모리", "JavaScript": "힙 메모리", "CSharp": "힙 메모리", "CPlusPlus": "힙 메모리", "C": "힙 메모리", "TypeScript": "힙 메모리", "Kotlin": "힙 메모리", "Ruby": "힙 메모리", "PHP": "힙 메모리"}'),
    ('garbageCollector', '{"Java": "가비지 컬렉터", "Python": "가비지 컬렉터", "JavaScript": "가비지 컬렉터", "CSharp": "가비지 컬렉터", "CPlusPlus": "가비지 컬렉터", "C": "가비지 컬렉터", "TypeScript": "가비지 컬렉터", "Kotlin": "가비지 컬렉터", "Ruby": "가비지 컬렉터", "PHP": "가비지 컬렉터"}'),
    ('tryCatch', '{"Java": "예외 처리 블록", "Python": "예외 처리 블록", "JavaScript": "예외 처리 블록", "CSharp": "예외 처리 블록", "CPlusPlus": "예외 처리 블록", "C": "예외 처리 블록", "TypeScript": "예외 처리 블록", "Kotlin": "예외 처리 블록", "Ruby": "예외 처리 블록", "PHP": "예외 처리 블록"}'),
    ('getter', '{"Java": "게터 메서드", "Python": "게터 메서드", "JavaScript": "게터 메서드", "CSharp": "게터 메서드", "CPlusPlus": "게터 메서드", "C": "게터 메서드", "TypeScript": "게터 메서드", "Kotlin": "게터 메서드", "Ruby": "게터 메서드", "PHP": "게터 메서드"}'),
    ('setter', '{"Java": "세터 메서드", "Python": "세터 메서드", "JavaScript": "세터 메서드", "CSharp": "세터 메서드", "CPlusPlus": "세터 메서드", "C": "세터 메서드", "TypeScript": "세터 메서드", "Kotlin": "세터 메서드", "Ruby": "세터 메서드", "PHP": "세터 메서드"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('substring', '{"Java": "문자열 자르기", "Python": "문자열 자르기", "JavaScript": "문자열 자르기", "CSharp": "문자열 자르기", "CPlusPlus": "문자열 자르기", "C": "문자열 자르기", "TypeScript": "문자열 자르기", "Kotlin": "문자열 자르기", "Ruby": "문자열 자르기", "PHP": "문자열 자르기"}'),
    ('indexOf', '{"Java": "문자 위치 찾기", "Python": "문자 위치 찾기", "JavaScript": "문자 위치 찾기", "CSharp": "문자 위치 찾기", "CPlusPlus": "문자 위치 찾기", "C": "문자 위치 찾기", "TypeScript": "문자 위치 찾기", "Kotlin": "문자 위치 찾기", "Ruby": "문자 위치 찾기", "PHP": "문자 위치 찾기"}'),
    ('replace', '{"Java": "문자열 치환", "Python": "문자열 치환", "JavaScript": "문자열 치환", "CSharp": "문자열 치환", "CPlusPlus": "문자열 치환", "C": "문자열 치환", "TypeScript": "문자열 치환", "Kotlin": "문자열 치환", "Ruby": "문자열 치환", "PHP": "문자열 치환"}'),
    ('startsWith', '{"Java": "시작 여부 확인", "Python": "시작 여부 확인", "JavaScript": "시작 여부 확인", "CSharp": "시작 여부 확인", "CPlusPlus": "시작 여부 확인", "C": "시작 여부 확인", "TypeScript": "시작 여부 확인", "Kotlin": "시작 여부 확인", "Ruby": "시작 여부 확인", "PHP": "시작 여부 확인"}'),
    ('endsWith', '{"Java": "끝 여부 확인", "Python": "끝 여부 확인", "JavaScript": "끝 여부 확인", "CSharp": "끝 여부 확인", "CPlusPlus": "끝 여부 확인", "C": "끝 여부 확인", "TypeScript": "끝 여부 확인", "Kotlin": "끝 여부 확인", "Ruby": "끝 여부 확인", "PHP": "끝 여부 확인"}'),
    ('toUpperCase', '{"Java": "대문자 변환", "Python": "대문자 변환", "JavaScript": "대문자 변환", "CSharp": "대문자 변환", "CPlusPlus": "대문자 변환", "C": "대문자 변환", "TypeScript": "대문자 변환", "Kotlin": "대문자 변환", "Ruby": "대문자 변환", "PHP": "대문자 변환"}'),
    ('toLowerCase', '{"Java": "소문자 변환", "Python": "소문자 변환", "JavaScript": "소문자 변환", "CSharp": "소문자 변환", "CPlusPlus": "소문자 변환", "C": "소문자 변환", "TypeScript": "소문자 변환", "Kotlin": "소문자 변환", "Ruby": "소문자 변환", "PHP": "소문자 변환"}'),
    ('flatMap', '{"Java": "플랫맵", "Python": "플랫맵", "JavaScript": "플랫맵", "CSharp": "플랫맵", "CPlusPlus": "플랫맵", "C": "플랫맵", "TypeScript": "플랫맵", "Kotlin": "플랫맵", "Ruby": "플랫맵", "PHP": "플랫맵"}'),
    ('anyMatch', '{"Java": "일치 여부 확인", "Python": "일치 여부 확인", "JavaScript": "일치 여부 확인", "CSharp": "일치 여부 확인", "CPlusPlus": "일치 여부 확인", "C": "일치 여부 확인", "TypeScript": "일치 여부 확인", "Kotlin": "일치 여부 확인", "Ruby": "일치 여부 확인", "PHP": "일치 여부 확인"}'),
    ('allMatch', '{"Java": "모두 일치 여부 확인", "Python": "모두 일치 여부 확인", "JavaScript": "모두 일치 여부 확인", "CSharp": "모두 일치 여부 확인", "CPlusPlus": "모두 일치 여부 확인", "C": "모두 일치 여부 확인", "TypeScript": "모두 일치 여부 확인", "Kotlin": "모두 일치 여부 확인", "Ruby": "모두 일치 여부 확인", "PHP": "모두 일치 여부 확인"}'),
    ('noneMatch', '{"Java": "일치 항목 없음 확인", "Python": "일치 항목 없음 확인", "JavaScript": "일치 항목 없음 확인", "CSharp": "일치 항목 없음 확인", "CPlusPlus": "일치 항목 없음 확인", "C": "일치 항목 없음 확인", "TypeScript": "일치 항목 없음 확인", "Kotlin": "일치 항목 없음 확인", "Ruby": "일치 항목 없음 확인", "PHP": "일치 항목 없음 확인"}'),
    ('sorted', '{"Java": "정렬", "Python": "정렬", "JavaScript": "정렬", "CSharp": "정렬", "CPlusPlus": "정렬", "C": "정렬", "TypeScript": "정렬", "Kotlin": "정렬", "Ruby": "정렬", "PHP": "정렬"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('distinct', '{"Java": "중복 제거", "Python": "중복 제거", "JavaScript": "중복 제거", "CSharp": "중복 제거", "CPlusPlus": "중복 제거", "C": "중복 제거", "TypeScript": "중복 제거", "Kotlin": "중복 제거", "Ruby": "중복 제거", "PHP": "중복 제거"}'),
    ('limit', '{"Java": "제한", "Python": "제한", "JavaScript": "제한", "CSharp": "제한", "CPlusPlus": "제한", "C": "제한", "TypeScript": "제한", "Kotlin": "제한", "Ruby": "제한", "PHP": "제한"}'),
    ('skip', '{"Java": "건너뛰기", "Python": "건너뛰기", "JavaScript": "건너뛰기", "CSharp": "건너뛰기", "CPlusPlus": "건너뛰기", "C": "건너뛰기", "TypeScript": "건너뛰기", "Kotlin": "건너뛰기", "Ruby": "건너뛰기", "PHP": "건너뛰기"}'),
    ('collect', '{"Java": "수집", "Python": "수집", "JavaScript": "수집", "CSharp": "수집", "CPlusPlus": "수집", "C": "수집", "TypeScript": "수집", "Kotlin": "수집", "Ruby": "수집", "PHP": "수집"}'),
    ('findFirst', '{"Java": "첫 번째 찾기", "Python": "첫 번째 찾기", "JavaScript": "첫 번째 찾기", "CSharp": "첫 번째 찾기", "CPlusPlus": "첫 번째 찾기", "C": "첫 번째 찾기", "TypeScript": "첫 번째 찾기", "Kotlin": "첫 번째 찾기", "Ruby": "첫 번째 찾기", "PHP": "첫 번째 찾기"}'),
    ('findAny', '{"Java": "아무거나 찾기", "Python": "아무거나 찾기", "JavaScript": "아무거나 찾기", "CSharp": "아무거나 찾기", "CPlusPlus": "아무거나 찾기", "C": "아무거나 찾기", "TypeScript": "아무거나 찾기", "Kotlin": "아무거나 찾기", "Ruby": "아무거나 찾기", "PHP": "아무거나 찾기"}'),
    ('orElse', '{"Java": "대체값 제공", "Python": "대체값 제공", "JavaScript": "대체값 제공", "CSharp": "대체값 제공", "CPlusPlus": "대체값 제공", "C": "대체값 제공", "TypeScript": "대체값 제공", "Kotlin": "대체값 제공", "Ruby": "대체값 제공", "PHP": "대체값 제공"}'),
    ('orElseThrow', '{"Java": "예외 던지기", "Python": "예외 던지기", "JavaScript": "예외 던지기", "CSharp": "예외 던지기", "CPlusPlus": "예외 던지기", "C": "예외 던지기", "TypeScript": "예외 던지기", "Kotlin": "예외 던지기", "Ruby": "예외 던지기", "PHP": "예외 던지기"}'),
    ('empty', '{"Java": "비어 있음", "Python": "비어 있음", "JavaScript": "비어 있음", "CSharp": "비어 있음", "CPlusPlus": "비어 있음", "C": "비어 있음", "TypeScript": "비어 있음", "Kotlin": "비어 있음", "Ruby": "비어 있음", "PHP": "비어 있음"}'),
    ('of', '{"Java": "값 생성", "Python": "값 생성", "JavaScript": "값 생성", "CSharp": "값 생성", "CPlusPlus": "값 생성", "C": "값 생성", "TypeScript": "값 생성", "Kotlin": "값 생성", "Ruby": "값 생성", "PHP": "값 생성"}'),
    ('isPresent', '{"Java": "존재 확인", "Python": "존재 확인", "JavaScript": "존재 확인", "CSharp": "존재 확인", "CPlusPlus": "존재 확인", "C": "존재 확인", "TypeScript": "존재 확인", "Kotlin": "존재 확인", "Ruby": "존재 확인", "PHP": "존재 확인"}'),
    ('max', '{"Java": "최댓값", "Python": "최댓값", "JavaScript": "최댓값", "CSharp": "최댓값", "CPlusPlus": "최댓값", "C": "최댓값", "TypeScript": "최댓값", "Kotlin": "최댓값", "Ruby": "최댓값", "PHP": "최댓값"}'),
    ('min', '{"Java": "최솟값", "Python": "최솟값", "JavaScript": "최솟값", "CSharp": "최솟값", "CPlusPlus": "최솟값", "C": "최솟값", "TypeScript": "최솟값", "Kotlin": "최솟값", "Ruby": "최솟값", "PHP": "최솟값"}'),
    ('stream', '{"Java": "스트림", "Python": "스트림", "JavaScript": "스트림", "CSharp": "스트림", "CPlusPlus": "스트림", "C": "스트림", "TypeScript": "스트림", "Kotlin": "스트림", "Ruby": "스트림", "PHP": "스트림"}'),
    ('parallelStream', '{"Java": "병렬 스트림", "Python": "병렬 스트림", "JavaScript": "병렬 스트림", "CSharp": "병렬 스트림", "CPlusPlus": "병렬 스트림", "C": "병렬 스트림", "TypeScript": "병렬 스트림", "Kotlin": "병렬 스트림", "Ruby": "병렬 스트림", "PHP": "병렬 스트림"}'),
    ('forEach', '{"Java": "반복 처리", "Python": "반복 처리", "JavaScript": "반복 처리", "CSharp": "반복 처리", "CPlusPlus": "반복 처리", "C": "반복 처리", "TypeScript": "반복 처리", "Kotlin": "반복 처리", "Ruby": "반복 처리", "PHP": "반복 처리"}'),
    ('count', '{"Java": "개수 계산", "Python": "개수 계산", "JavaScript": "개수 계산", "CSharp": "개수 계산", "CPlusPlus": "개수 계산", "C": "개수 계산", "TypeScript": "개수 계산", "Kotlin": "개수 계산", "Ruby": "개수 계산", "PHP": "개수 계산"}'),
    ('peek', '{"Java": "중간 확인", "Python": "중간 확인", "JavaScript": "중간 확인", "CSharp": "중간 확인", "CPlusPlus": "중간 확인", "C": "중간 확인", "TypeScript": "중간 확인", "Kotlin": "중간 확인", "Ruby": "중간 확인", "PHP": "중간 확인"}'),
    ('box', '{"Java": "박싱", "Python": "박싱", "JavaScript": "박싱", "CSharp": "박싱", "CPlusPlus": "박싱", "C": "박싱", "TypeScript": "박싱", "Kotlin": "박싱", "Ruby": "박싱", "PHP": "박싱"}'),
    ('unbox', '{"Java": "언박싱", "Python": "언박싱", "JavaScript": "언박싱", "CSharp": "언박싱", "CPlusPlus": "언박싱", "C": "언박싱", "TypeScript": "언박싱", "Kotlin": "언박싱", "Ruby": "언박싱", "PHP": "언박싱"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('let', '{"Java": "변수 선언", "Python": "변수 선언", "JavaScript": "변수 선언", "CSharp": "변수 선언", "CPlusPlus": "변수 선언", "C": "변수 선언", "TypeScript": "변수 선언", "Kotlin": "변수 선언", "Ruby": "변수 선언", "PHP": "변수 선언"}'),
    ('const', '{"Java": "상수 선언", "Python": "상수 선언", "JavaScript": "상수 선언", "CSharp": "상수 선언", "CPlusPlus": "상수 선언", "C": "상수 선언", "TypeScript": "상수 선언", "Kotlin": "상수 선언", "Ruby": "상수 선언", "PHP": "상수 선언"}'),
    ('var', '{"Java": "변수 선언", "Python": "변수 선언", "JavaScript": "변수 선언", "CSharp": "변수 선언", "CPlusPlus": "변수 선언", "C": "변수 선언", "TypeScript": "변수 선언", "Kotlin": "변수 선언", "Ruby": "변수 선언", "PHP": "변수 선언"}'),
    ('then', '{"Java": "다음 작업", "Python": "다음 작업", "JavaScript": "다음 작업", "CSharp": "다음 작업", "CPlusPlus": "다음 작업", "C": "다음 작업", "TypeScript": "다음 작업", "Kotlin": "다음 작업", "Ruby": "다음 작업", "PHP": "다음 작업"}'),
    ('setInterval', '{"Java": "인터벌 설정", "Python": "인터벌 설정", "JavaScript": "인터벌 설정", "CSharp": "인터벌 설정", "CPlusPlus": "인터벌 설정", "C": "인터벌 설정", "TypeScript": "인터벌 설정", "Kotlin": "인터벌 설정", "Ruby": "인터벌 설정", "PHP": "인터벌 설정"}'),
    ('clearTimeout', '{"Java": "타이머 해제", "Python": "타이머 해제", "JavaScript": "타이머 해제", "CSharp": "타이머 해제", "CPlusPlus": "타이머 해제", "C": "타이머 해제", "TypeScript": "타이머 해제", "Kotlin": "타이머 해제", "Ruby": "타이머 해제", "PHP": "타이머 해제"}'),
    ('clearInterval', '{"Java": "인터벌 해제", "Python": "인터벌 해제", "JavaScript": "인터벌 해제", "CSharp": "인터벌 해제", "CPlusPlus": "인터벌 해제", "C": "인터벌 해제", "TypeScript": "인터벌 해제", "Kotlin": "인터벌 해제", "Ruby": "인터벌 해제", "PHP": "인터벌 해제"}'),
    ('set', '{"Java": "셋 생성", "Python": "셋 생성", "JavaScript": "셋 생성", "CSharp": "셋 생성", "CPlusPlus": "셋 생성", "C": "셋 생성", "TypeScript": "셋 생성", "Kotlin": "셋 생성", "Ruby": "셋 생성", "PHP": "셋 생성"}'),
    ('get', '{"Java": "값 가져오기", "Python": "값 가져오기", "JavaScript": "값 가져오기", "CSharp": "값 가져오기", "CPlusPlus": "값 가져오기", "C": "값 가져오기", "TypeScript": "값 가져오기", "Kotlin": "값 가져오기", "Ruby": "값 가져오기", "PHP": "값 가져오기"}'),
    ('delete', '{"Java": "값 삭제", "Python": "값 삭제", "JavaScript": "값 삭제", "CSharp": "값 삭제", "CPlusPlus": "값 삭제", "C": "값 삭제", "TypeScript": "값 삭제", "Kotlin": "값 삭제", "Ruby": "값 삭제", "PHP": "값 삭제"}'),
    ('has', '{"Java": "포함 여부 확인", "Python": "포함 여부 확인", "JavaScript": "포함 여부 확인", "CSharp": "포함 여부 확인", "CPlusPlus": "포함 여부 확인", "C": "포함 여부 확인", "TypeScript": "포함 여부 확인", "Kotlin": "포함 여부 확인", "Ruby": "포함 여부 확인", "PHP": "포함 여부 확인"}'),
    ('keys', '{"Java": "키 가져오기", "Python": "키 가져오기", "JavaScript": "키 가져오기", "CSharp": "키 가져오기", "CPlusPlus": "키 가져오기", "C": "키 가져오기", "TypeScript": "키 가져오기", "Kotlin": "키 가져오기", "Ruby": "키 가져오기", "PHP": "키 가져오기"}'),
    ('entries', '{"Java": "키-값 쌍 가져오기", "Python": "키-값 쌍 가져오기", "JavaScript": "키-값 쌍 가져오기", "CSharp": "키-값 쌍 가져오기", "CPlusPlus": "키-값 쌍 가져오기", "C": "키-값 쌍 가져오기", "TypeScript": "키-값 쌍 가져오기", "Kotlin": "키-값 쌍 가져오기", "Ruby": "키-값 쌍 가져오기", "PHP": "키-값 쌍 가져오기"}'),
    ('arrayBuffer', '{"Java": "버퍼 배열", "Python": "버퍼 배열", "JavaScript": "버퍼 배열", "CSharp": "버퍼 배열", "CPlusPlus": "버퍼 배열", "C": "버퍼 배열", "TypeScript": "버퍼 배열", "Kotlin": "버퍼 배열", "Ruby": "버퍼 배열", "PHP": "버퍼 배열"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('DataView', '{"Java": "데이터 뷰", "Python": "데이터 뷰", "JavaScript": "데이터 뷰", "CSharp": "데이터 뷰", "CPlusPlus": "데이터 뷰", "C": "데이터 뷰", "TypeScript": "데이터 뷰", "Kotlin": "데이터 뷰", "Ruby": "데이터 뷰", "PHP": "데이터 뷰"}'),
    ('typedArray', '{"Java": "타입 배열", "Python": "타입 배열", "JavaScript": "타입 배열", "CSharp": "타입 배열", "CPlusPlus": "타입 배열", "C": "타입 배열", "TypeScript": "타입 배열", "Kotlin": "타입 배열", "Ruby": "타입 배열", "PHP": "타입 배열"}'),
    ('Uint8Array', '{"Java": "부호 없는 8비트 정수 배열", "Python": "부호 없는 8비트 정수 배열", "JavaScript": "부호 없는 8비트 정수 배열", "CSharp": "부호 없는 8비트 정수 배열", "CPlusPlus": "부호 없는 8비트 정수 배열", "C": "부호 없는 8비트 정수 배열", "TypeScript": "부호 없는 8비트 정수 배열", "Kotlin": "부호 없는 8비트 정수 배열", "Ruby": "부호 없는 8비트 정수 배열", "PHP": "부호 없는 8비트 정수 배열"}'),
    ('Int8Array', '{"Java": "8비트 정수 배열", "Python": "8비트 정수 배열", "JavaScript": "8비트 정수 배열", "CSharp": "8비트 정수 배열", "CPlusPlus": "8비트 정수 배열", "C": "8비트 정수 배열", "TypeScript": "8비트 정수 배열", "Kotlin": "8비트 정수 배열", "Ruby": "8비트 정수 배열", "PHP": "8비트 정수 배열"}'),
    ('Uint16Array', '{"Java": "부호 없는 16비트 정수 배열", "Python": "부호 없는 16비트 정수 배열", "JavaScript": "부호 없는 16비트 정수 배열", "CSharp": "부호 없는 16비트 정수 배열", "CPlusPlus": "부호 없는 16비트 정수 배열", "C": "부호 없는 16비트 정수 배열", "TypeScript": "부호 없는 16비트 정수 배열", "Kotlin": "부호 없는 16비트 정수 배열", "Ruby": "부호 없는 16비트 정수 배열", "PHP": "부호 없는 16비트 정수 배열"}'),
    ('Int16Array', '{"Java": "16비트 정수 배열", "Python": "16비트 정수 배열", "JavaScript": "16비트 정수 배열", "CSharp": "16비트 정수 배열", "CPlusPlus": "16비트 정수 배열", "C": "16비트 정수 배열", "TypeScript": "16비트 정수 배열", "Kotlin": "16비트 정수 배열", "Ruby": "16비트 정수 배열", "PHP": "16비트 정수 배열"}'),
    ('Uint32Array', '{"Java": "부호 없는 32비트 정수 배열", "Python": "부호 없는 32비트 정수 배열", "JavaScript": "부호 없는 32비트 정수 배열", "CSharp": "부호 없는 32비트 정수 배열", "CPlusPlus": "부호 없는 32비트 정수 배열", "C": "부호 없는 32비트 정수 배열", "TypeScript": "부호 없는 32비트 정수 배열", "Kotlin": "부호 없는 32비트 정수 배열", "Ruby": "부호 없는 32비트 정수 배열", "PHP": "부호 없는 32비트 정수 배열"}'),
    ('Int32Array', '{"Java": "32비트 정수 배열", "Python": "32비트 정수 배열", "JavaScript": "32비트 정수 배열", "CSharp": "32비트 정수 배열", "CPlusPlus": "32비트 정수 배열", "C": "32비트 정수 배열", "TypeScript": "32비트 정수 배열", "Kotlin": "32비트 정수 배열", "Ruby": "32비트 정수 배열", "PHP": "32비트 정수 배열"}'),
    ('Float32Array', '{"Java": "32비트 부동소수점 배열", "Python": "32비트 부동소수점 배열", "JavaScript": "32비트 부동소수점 배열", "CSharp": "32비트 부동소수점 배열", "CPlusPlus": "32비트 부동소수점 배열", "C": "32비트 부동소수점 배열", "TypeScript": "32비트 부동소수점 배열", "Kotlin": "32비트 부동소수점 배열", "Ruby": "32비트 부동소수점 배열", "PHP": "32비트 부동소수점 배열"}'),
    ('Float64Array', '{"Java": "64비트 부동소수점 배열", "Python": "64비트 부동소수점 배열", "JavaScript": "64비트 부동소수점 배열", "CSharp": "64비트 부동소수점 배열", "CPlusPlus": "64비트 부동소수점 배열", "C": "64비트 부동소수점 배열", "TypeScript": "64비트 부동소수점 배열", "Kotlin": "64비트 부동소수점 배열", "Ruby": "64비트 부동소수점 배열", "PHP": "64비트 부동소수점 배열"}'),
    ('BigInt64Array', '{"Java": "64비트 정수 배열(BigInt)", "Python": "64비트 정수 배열(BigInt)", "JavaScript": "64비트 정수 배열(BigInt)", "CSharp": "64비트 정수 배열(BigInt)", "CPlusPlus": "64비트 정수 배열(BigInt)", "C": "64비트 정수 배열(BigInt)", "TypeScript": "64비트 정수 배열(BigInt)", "Kotlin": "64비트 정수 배열(BigInt)", "Ruby": "64비트 정수 배열(BigInt)", "PHP": "64비트 정수 배열(BigInt)"}'),
    ('BigUint64Array', '{"Java": "부호 없는 64비트 정수 배열(BigInt)", "Python": "부호 없는 64비트 정수 배열(BigInt)", "JavaScript": "부호 없는 64비트 정수 배열(BigInt)", "CSharp": "부호 없는 64비트 정수 배열(BigInt)", "CPlusPlus": "부호 없는 64비트 정수 배열(BigInt)", "C": "부호 없는 64비트 정수 배열(BigInt)", "TypeScript": "부호 없는 64비트 정수 배열(BigInt)", "Kotlin": "부호 없는 64비트 정수 배열(BigInt)", "Ruby": "부호 없는 64비트 정수 배열(BigInt)", "PHP": "부호 없는 64비트 정수 배열(BigInt)"}'),
    ('Symbol', '{"Java": "심볼", "Python": "심볼", "JavaScript": "심볼", "CSharp": "심볼", "CPlusPlus": "심볼", "C": "심볼", "TypeScript": "심볼", "Kotlin": "심볼", "Ruby": "심볼", "PHP": "심볼"}'),
    ('Proxy', '{"Java": "프록시 객체", "Python": "프록시 객체", "JavaScript": "프록시 객체", "CSharp": "프록시 객체", "CPlusPlus": "프록시 객체", "C": "프록시 객체", "TypeScript": "프록시 객체", "Kotlin": "프록시 객체", "Ruby": "프록시 객체", "PHP": "프록시 객체"}'),
    ('Reflect', '{"Java": "리플렉트 객체", "Python": "리플렉트 객체", "JavaScript": "리플렉트 객체", "CSharp": "리플렉트 객체", "CPlusPlus": "리플렉트 객체", "C": "리플렉트 객체", "TypeScript": "리플렉트 객체", "Kotlin": "리플렉트 객체", "Ruby": "리플렉트 객체", "PHP": "리플렉트 객체"}'),
    ('WeakMap', '{"Java": "약한 맵", "Python": "약한 맵", "JavaScript": "약한 맵", "CSharp": "약한 맵", "CPlusPlus": "약한 맵", "C": "약한 맵", "TypeScript": "약한 맵", "Kotlin": "약한 맵", "Ruby": "약한 맵", "PHP": "약한 맵"}'),
    ('WeakSet', '{"Java": "약한 셋", "Python": "약한 셋", "JavaScript": "약한 셋", "CSharp": "약한 셋", "CPlusPlus": "약한 셋", "C": "약한 셋", "TypeScript": "약한 셋", "Kotlin": "약한 셋", "Ruby": "약한 셋", "PHP": "약한 셋"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('axios', '{"Java": "Axios HTTP 클라이언트", "Python": "Axios HTTP 클라이언트", "JavaScript": "Axios HTTP 클라이언트", "CSharp": "Axios HTTP 클라이언트", "CPlusPlus": "Axios HTTP 클라이언트", "C": "Axios HTTP 클라이언트", "TypeScript": "Axios HTTP 클라이언트", "Kotlin": "Axios HTTP 클라이언트", "Ruby": "Axios HTTP 클라이언트", "PHP": "Axios HTTP 클라이언트"}'),
    ('post', '{"Java": "HTTP POST 요청", "Python": "HTTP POST 요청", "JavaScript": "HTTP POST 요청", "CSharp": "HTTP POST 요청", "CPlusPlus": "HTTP POST 요청", "C": "HTTP POST 요청", "TypeScript": "HTTP POST 요청", "Kotlin": "HTTP POST 요청", "Ruby": "HTTP POST 요청", "PHP": "HTTP POST 요청"}'),
    ('put', '{"Java": "HTTP PUT 요청", "Python": "HTTP PUT 요청", "JavaScript": "HTTP PUT 요청", "CSharp": "HTTP PUT 요청", "CPlusPlus": "HTTP PUT 요청", "C": "HTTP PUT 요청", "TypeScript": "HTTP PUT 요청", "Kotlin": "HTTP PUT 요청", "Ruby": "HTTP PUT 요청", "PHP": "HTTP PUT 요청"}'),
    ('request', '{"Java": "HTTP 요청 생성", "Python": "HTTP 요청 생성", "JavaScript": "HTTP 요청 생성", "CSharp": "HTTP 요청 생성", "CPlusPlus": "HTTP 요청 생성", "C": "HTTP 요청 생성", "TypeScript": "HTTP 요청 생성", "Kotlin": "HTTP 요청 생성", "Ruby": "HTTP 요청 생성", "PHP": "HTTP 요청 생성"}'),
    ('response', '{"Java": "HTTP 응답 처리", "Python": "HTTP 응답 처리", "JavaScript": "HTTP 응답 처리", "CSharp": "HTTP 응답 처리", "CPlusPlus": "HTTP 응답 처리", "C": "HTTP 응답 처리", "TypeScript": "HTTP 응답 처리", "Kotlin": "HTTP 응답 처리", "Ruby": "HTTP 응답 처리", "PHP": "HTTP 응답 처리"}'),
    ('interceptors', '{"Java": "인터셉터", "Python": "인터셉터", "JavaScript": "인터셉터", "CSharp": "인터셉터", "CPlusPlus": "인터셉터", "C": "인터셉터", "TypeScript": "인터셉터", "Kotlin": "인터셉터", "Ruby": "인터셉터", "PHP": "인터셉터"}'),
    ('headers', '{"Java": "HTTP 헤더", "Python": "HTTP 헤더", "JavaScript": "HTTP 헤더", "CSharp": "HTTP 헤더", "CPlusPlus": "HTTP 헤더", "C": "HTTP 헤더", "TypeScript": "HTTP 헤더", "Kotlin": "HTTP 헤더", "Ruby": "HTTP 헤더", "PHP": "HTTP 헤더"}'),
    ('baseURL', '{"Java": "기본 URL 설정", "Python": "기본 URL 설정", "JavaScript": "기본 URL 설정", "CSharp": "기본 URL 설정", "CPlusPlus": "기본 URL 설정", "C": "기본 URL 설정", "TypeScript": "기본 URL 설정", "Kotlin": "기본 URL 설정", "Ruby": "기본 URL 설정", "PHP": "기본 URL 설정"}'),
    ('timeout', '{"Java": "요청 시간 초과", "Python": "요청 시간 초과", "JavaScript": "요청 시간 초과", "CSharp": "요청 시간 초과", "CPlusPlus": "요청 시간 초과", "C": "요청 시간 초과", "TypeScript": "요청 시간 초과", "Kotlin": "요청 시간 초과", "Ruby": "요청 시간 초과", "PHP": "요청 시간 초과"}'),
    ('cancelToken', '{"Java": "요청 취소 토큰", "Python": "요청 취소 토큰", "JavaScript": "요청 취소 토큰", "CSharp": "요청 취소 토큰", "CPlusPlus": "요청 취소 토큰", "C": "요청 취소 토큰", "TypeScript": "요청 취소 토큰", "Kotlin": "요청 취소 토큰", "Ruby": "요청 취소 토큰", "PHP": "요청 취소 토큰"}'),
    ('retry', '{"Java": "재시도", "Python": "재시도", "JavaScript": "재시도", "CSharp": "재시도", "CPlusPlus": "재시도", "C": "재시도", "TypeScript": "재시도", "Kotlin": "재시도", "Ruby": "재시도", "PHP": "재시도"}'),
    ('responseType', '{"Java": "응답 타입 설정", "Python": "응답 타입 설정", "JavaScript": "응답 타입 설정", "CSharp": "응답 타입 설정", "CPlusPlus": "응답 타입 설정", "C": "응답 타입 설정", "TypeScript": "응답 타입 설정", "Kotlin": "응답 타입 설정", "Ruby": "응답 타입 설정", "PHP": "응답 타입 설정"}'),
    ('onUploadProgress', '{"Java": "업로드 진행 상황", "Python": "업로드 진행 상황", "JavaScript": "업로드 진행 상황", "CSharp": "업로드 진행 상황", "CPlusPlus": "업로드 진행 상황", "C": "업로드 진행 상황", "TypeScript": "업로드 진행 상황", "Kotlin": "업로드 진행 상황", "Ruby": "업로드 진행 상황", "PHP": "업로드 진행 상황"}'),
    ('onDownloadProgress', '{"Java": "다운로드 진행 상황", "Python": "다운로드 진행 상황", "JavaScript": "다운로드 진행 상황", "CSharp": "다운로드 진행 상황", "CPlusPlus": "다운로드 진행 상황", "C": "다운로드 진행 상황", "TypeScript": "다운로드 진행 상황", "Kotlin": "다운로드 진행 상황", "Ruby": "다운로드 진행 상황", "PHP": "다운로드 진행 상황"}'),
    ('params', '{"Java": "요청 파라미터", "Python": "요청 파라미터", "JavaScript": "요청 파라미터", "CSharp": "요청 파라미터", "CPlusPlus": "요청 파라미터", "C": "요청 파라미터", "TypeScript": "요청 파라미터", "Kotlin": "요청 파라미터", "Ruby": "요청 파라미터", "PHP": "요청 파라미터"}'),
    ('data', '{"Java": "요청 데이터", "Python": "요청 데이터", "JavaScript": "요청 데이터", "CSharp": "요청 데이터", "CPlusPlus": "요청 데이터", "C": "요청 데이터", "TypeScript": "요청 데이터", "Kotlin": "요청 데이터", "Ruby": "요청 데이터", "PHP": "요청 데이터"}'),
    ('transformRequest', '{"Java": "요청 데이터 변환", "Python": "요청 데이터 변환", "JavaScript": "요청 데이터 변환", "CSharp": "요청 데이터 변환", "CPlusPlus": "요청 데이터 변환", "C": "요청 데이터 변환", "TypeScript": "요청 데이터 변환", "Kotlin": "요청 데이터 변환", "Ruby": "요청 데이터 변환", "PHP": "요청 데이터 변환"}'),
    ('transformResponse', '{"Java": "응답 데이터 변환", "Python": "응답 데이터 변환", "JavaScript": "응답 데이터 변환", "CSharp": "응답 데이터 변환", "CPlusPlus": "응답 데이터 변환", "C": "응답 데이터 변환", "TypeScript": "응답 데이터 변환", "Kotlin": "응답 데이터 변환", "Ruby": "응답 데이터 변환", "PHP": "응답 데이터 변환"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('GetMapping', '{"Java": "GET 매핑", "Python": "GET 매핑", "JavaScript": "GET 매핑", "CSharp": "GET 매핑", "CPlusPlus": "GET 매핑", "C": "GET 매핑", "TypeScript": "GET 매핑", "Kotlin": "GET 매핑", "Ruby": "GET 매핑", "PHP": "GET 매핑"}'),
    ('PostMapping', '{"Java": "POST 매핑", "Python": "POST 매핑", "JavaScript": "POST 매핑", "CSharp": "POST 매핑", "CPlusPlus": "POST 매핑", "C": "POST 매핑", "TypeScript": "POST 매핑", "Kotlin": "POST 매핑", "Ruby": "POST 매핑", "PHP": "POST 매핑"}'),
    ('PutMapping', '{"Java": "PUT 매핑", "Python": "PUT 매핑", "JavaScript": "PUT 매핑", "CSharp": "PUT 매핑", "CPlusPlus": "PUT 매핑", "C": "PUT 매핑", "TypeScript": "PUT 매핑", "Kotlin": "PUT 매핑", "Ruby": "PUT 매핑", "PHP": "PUT 매핑"}'),
    ('DeleteMapping', '{"Java": "DELETE 매핑", "Python": "DELETE 매핑", "JavaScript": "DELETE 매핑", "CSharp": "DELETE 매핑", "CPlusPlus": "DELETE 매핑", "C": "DELETE 매핑", "TypeScript": "DELETE 매핑", "Kotlin": "DELETE 매핑", "Ruby": "DELETE 매핑", "PHP": "DELETE 매핑"}'),
    ('ResponseEntity', '{"Java": "응답 엔터티", "Python": "응답 엔터티", "JavaScript": "응답 엔터티", "CSharp": "응답 엔터티", "CPlusPlus": "응답 엔터티", "C": "응답 엔터티", "TypeScript": "응답 엔터티", "Kotlin": "응답 엔터티", "Ruby": "응답 엔터티", "PHP": "응답 엔터티"}'),
    ('PathVariable', '{"Java": "경로 변수", "Python": "경로 변수", "JavaScript": "경로 변수", "CSharp": "경로 변수", "CPlusPlus": "경로 변수", "C": "경로 변수", "TypeScript": "경로 변수", "Kotlin": "경로 변수", "Ruby": "경로 변수", "PHP": "경로 변수"}'),
    ('RequestParam', '{"Java": "요청 파라미터", "Python": "요청 파라미터", "JavaScript": "요청 파라미터", "CSharp": "요청 파라미터", "CPlusPlus": "요청 파라미터", "C": "요청 파라미터", "TypeScript": "요청 파라미터", "Kotlin": "요청 파라미터", "Ruby": "요청 파라미터", "PHP": "요청 파라미터"}'),
    ('RequestBody', '{"Java": "요청 본문", "Python": "요청 본문", "JavaScript": "요청 본문", "CSharp": "요청 본문", "CPlusPlus": "요청 본문", "C": "요청 본문", "TypeScript": "요청 본문", "Kotlin": "요청 본문", "Ruby": "요청 본문", "PHP": "요청 본문"}'),
    ('BadRequest', '{"Java": "잘못된 요청", "Python": "잘못된 요청", "JavaScript": "잘못된 요청", "CSharp": "잘못된 요청", "CPlusPlus": "잘못된 요청", "C": "잘못된 요청", "TypeScript": "잘못된 요청", "Kotlin": "잘못된 요청", "Ruby": "잘못된 요청", "PHP": "잘못된 요청"}'),
    ('NotFound', '{"Java": "찾을 수 없음", "Python": "찾을 수 없음", "JavaScript": "찾을 수 없음", "CSharp": "찾을 수 없음", "CPlusPlus": "찾을 수 없음", "C": "찾을 수 없음", "TypeScript": "찾을 수 없음", "Kotlin": "찾을 수 없음", "Ruby": "찾을 수 없음", "PHP": "찾을 수 없음"}'),
    ('Created', '{"Java": "생성됨", "Python": "생성됨", "JavaScript": "생성됨", "CSharp": "생성됨", "CPlusPlus": "생성됨", "C": "생성됨", "TypeScript": "생성됨", "Kotlin": "생성됨", "Ruby": "생성됨", "PHP": "생성됨"}'),
    ('NoContent', '{"Java": "내용 없음", "Python": "내용 없음", "JavaScript": "내용 없음", "CSharp": "내용 없음", "CPlusPlus": "내용 없음", "C": "내용 없음", "TypeScript": "내용 없음", "Kotlin": "내용 없음", "Ruby": "내용 없음", "PHP": "내용 없음"}'),
    ('Lombok', '{"Java": "롬복", "Python": "롬복", "JavaScript": "롬복", "CSharp": "롬복", "CPlusPlus": "롬복", "C": "롬복", "TypeScript": "롬복", "Kotlin": "롬복", "Ruby": "롬복", "PHP": "롬복"}'),
    ('AllArgsConstructor', '{"Java": "전체 인자 생성자", "Python": "전체 인자 생성자", "JavaScript": "전체 인자 생성자", "CSharp": "전체 인자 생성자", "CPlusPlus": "전체 인자 생성자", "C": "전체 인자 생성자", "TypeScript": "전체 인자 생성자", "Kotlin": "전체 인자 생성자", "Ruby": "전체 인자 생성자", "PHP": "전체 인자 생성자"}'),
    ('NoArgsConstructor', '{"Java": "인자 없는 생성자", "Python": "인자 없는 생성자", "JavaScript": "인자 없는 생성자", "CSharp": "인자 없는 생성자", "CPlusPlus": "인자 없는 생성자", "C": "인자 없는 생성자", "TypeScript": "인자 없는 생성자", "Kotlin": "인자 없는 생성자", "Ruby": "인자 없는 생성자", "PHP": "인자 없는 생성자"}'),
    ('Entity', '{"Java": "엔터티", "Python": "엔터티", "JavaScript": "엔터티", "CSharp": "엔터티", "CPlusPlus": "엔터티", "C": "엔터티", "TypeScript": "엔터티", "Kotlin": "엔터티", "Ruby": "엔터티", "PHP": "엔터티"}'),
    ('Table', '{"Java": "테이블", "Python": "테이블", "JavaScript": "테이블", "CSharp": "테이블", "CPlusPlus": "테이블", "C": "테이블", "TypeScript": "테이블", "Kotlin": "테이블", "Ruby": "테이블", "PHP": "테이블"}'),
    ('Column', '{"Java": "컬럼", "Python": "컬럼", "JavaScript": "컬럼", "CSharp": "컬럼", "CPlusPlus": "컬럼", "C": "컬럼", "TypeScript": "컬럼", "Kotlin": "컬럼", "Ruby": "컬럼", "PHP": "컬럼"}');

INSERT INTO code (origin_code, translate_code)
VALUES
    ('Id', '{"Java": "기본 키", "Python": "기본 키", "JavaScript": "기본 키", "CSharp": "기본 키", "CPlusPlus": "기본 키", "C": "기본 키", "TypeScript": "기본 키", "Kotlin": "기본 키", "Ruby": "기본 키", "PHP": "기본 키"}'),
    ('GeneratedValue', '{"Java": "자동 생성 값", "Python": "자동 생성 값", "JavaScript": "자동 생성 값", "CSharp": "자동 생성 값", "CPlusPlus": "자동 생성 값", "C": "자동 생성 값", "TypeScript": "자동 생성 값", "Kotlin": "자동 생성 값", "Ruby": "자동 생성 값", "PHP": "자동 생성 값"}'),
    ('GenerationType', '{"Java": "생성 타입", "Python": "생성 타입", "JavaScript": "생성 타입", "CSharp": "생성 타입", "CPlusPlus": "생성 타입", "C": "생성 타입", "TypeScript": "생성 타입", "Kotlin": "생성 타입", "Ruby": "생성 타입", "PHP": "생성 타입"}'),
    ('SequenceGenerator', '{"Java": "시퀀스 생성기", "Python": "시퀀스 생성기", "JavaScript": "시퀀스 생성기", "CSharp": "시퀀스 생성기", "CPlusPlus": "시퀀스 생성기", "C": "시퀀스 생성기", "TypeScript": "시퀀스 생성기", "Kotlin": "시퀀스 생성기", "Ruby": "시퀀스 생성기", "PHP": "시퀀스 생성기"}'),
    ('JoinColumn', '{"Java": "조인 컬럼", "Python": "조인 컬럼", "JavaScript": "조인 컬럼", "CSharp": "조인 컬럼", "CPlusPlus": "조인 컬럼", "C": "조인 컬럼", "TypeScript": "조인 컬럼", "Kotlin": "조인 컬럼", "Ruby": "조인 컬럼", "PHP": "조인 컬럼"}'),
    ('OneToOne', '{"Java": "일대일 관계", "Python": "일대일 관계", "JavaScript": "일대일 관계", "CSharp": "일대일 관계", "CPlusPlus": "일대일 관계", "C": "일대일 관계", "TypeScript": "일대일 관계", "Kotlin": "일대일 관계", "Ruby": "일대일 관계", "PHP": "일대일 관계"}'),
    ('OneToMany', '{"Java": "일대다 관계", "Python": "일대다 관계", "JavaScript": "일대다 관계", "CSharp": "일대다 관계", "CPlusPlus": "일대다 관계", "C": "일대다 관계", "TypeScript": "일대다 관계", "Kotlin": "일대다 관계", "Ruby": "일대다 관계", "PHP": "일대다 관계"}'),
    ('ManyToOne', '{"Java": "다대일 관계", "Python": "다대일 관계", "JavaScript": "다대일 관계", "CSharp": "다대일 관계", "CPlusPlus": "다대일 관계", "C": "다대일 관계", "TypeScript": "다대일 관계", "Kotlin": "다대일 관계", "Ruby": "다대일 관계", "PHP": "다대일 관계"}'),
    ('ManyToMany', '{"Java": "다대다 관계", "Python": "다대다 관계", "JavaScript": "다대다 관계", "CSharp": "다대다 관계", "CPlusPlus": "다대다 관계", "C": "다대다 관계", "TypeScript": "다대다 관계", "Kotlin": "다대다 관계", "Ruby": "다대다 관계", "PHP": "다대다 관계"}'),
    ('CascadeType', '{"Java": "캐스케이드 타입", "Python": "캐스케이드 타입", "JavaScript": "캐스케이드 타입", "CSharp": "캐스케이드 타입", "CPlusPlus": "캐스케이드 타입", "C": "캐스케이드 타입", "TypeScript": "캐스케이드 타입", "Kotlin": "캐스케이드 타입", "Ruby": "캐스케이드 타입", "PHP": "캐스케이드 타입"}'),
    ('FetchType', '{"Java": "패치 타입", "Python": "패치 타입", "JavaScript": "패치 타입", "CSharp": "패치 타입", "CPlusPlus": "패치 타입", "C": "패치 타입", "TypeScript": "패치 타입", "Kotlin": "패치 타입", "Ruby": "패치 타입", "PHP": "패치 타입"}'),
    ('Lazy', '{"Java": "지연 로딩", "Python": "지연 로딩", "JavaScript": "지연 로딩", "CSharp": "지연 로딩", "CPlusPlus": "지연 로딩", "C": "지연 로딩", "TypeScript": "지연 로딩", "Kotlin": "지연 로딩", "Ruby": "지연 로딩", "PHP": "지연 로딩"}'),
    ('Eager', '{"Java": "즉시 로딩", "Python": "즉시 로딩", "JavaScript": "즉시 로딩", "CSharp": "즉시 로딩", "CPlusPlus": "즉시 로딩", "C": "즉시 로딩", "TypeScript": "즉시 로딩", "Kotlin": "즉시 로딩", "Ruby": "즉시 로딩", "PHP": "즉시 로딩"}'),
    ('Query', '{"Java": "쿼리", "Python": "쿼리", "JavaScript": "쿼리", "CSharp": "쿼리", "CPlusPlus": "쿼리", "C": "쿼리", "TypeScript": "쿼리", "Kotlin": "쿼리", "Ruby": "쿼리", "PHP": "쿼리"}'),
    ('NamedQuery', '{"Java": "명명된 쿼리", "Python": "명명된 쿼리", "JavaScript": "명명된 쿼리", "CSharp": "명명된 쿼리", "CPlusPlus": "명명된 쿼리", "C": "명명된 쿼리", "TypeScript": "명명된 쿼리", "Kotlin": "명명된 쿼리", "Ruby": "명명된 쿼리", "PHP": "명명된 쿼리"}'),
    ('NativeQuery', '{"Java": "네이티브 쿼리", "Python": "네이티브 쿼리", "JavaScript": "네이티브 쿼리", "CSharp": "네이티브 쿼리", "CPlusPlus": "네이티브 쿼리", "C": "네이티브 쿼리", "TypeScript": "네이티브 쿼리", "Kotlin": "네이티브 쿼리", "Ruby": "네이티브 쿼리", "PHP": "네이티브 쿼리"}'),
    ('EntityManager', '{"Java": "엔터티 관리자", "Python": "엔터티 관리자", "JavaScript": "엔터티 관리자", "CSharp": "엔터티 관리자", "CPlusPlus": "엔터티 관리자", "C": "엔터티 관리자", "TypeScript": "엔터티 관리자", "Kotlin": "엔터티 관리자", "Ruby": "엔터티 관리자", "PHP": "엔터티 관리자"}'),
    ('Persist', '{"Java": "영속성 처리", "Python": "영속성 처리", "JavaScript": "영속성 처리", "CSharp": "영속성 처리", "CPlusPlus": "영속성 처리", "C": "영속성 처리", "TypeScript": "영속성 처리", "Kotlin": "영속성 처리", "Ruby": "영속성 처리", "PHP": "영속성 처리"}');


/*＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝*/

/*테이블조회*/
select * from code;
select * from faq;
select * from user;
select * from user_support;
select * from savehistory;

/*테이블 모든 데이터 삭제*/
TRUNCATE TABLE code;
TRUNCATE TABLE faq;
truncate TABLE user_support;
truncate TABLE savehistory;

/*테이블 삭제*/
drop table user_support;
drop table code;
drop table user;
drop table savehistory;
drop table USER_ANSWER;

/*테이블 설정 변경*/
ALTER TABLE CODE
MODIFY COLUMN TRANSLATE_CODE TEXT NOT NULL;
ALTER TABLE faq
MODIFY COLUMN created_date TIMESTAMP NOT NULL;
ALTER TABLE savehistory 
MODIFY COLUMN history_title varchar(255) NOT NULL;

/* 컬럼 추가 */
ALTER TABLE savehistory 
ADD COLUMN history_title varchar(255);

ALTER TABLE user_support DROP COLUMN type;
commit;

