from google.cloud import vision
from google.cloud.vision_v1 import types
import io
import os

# Google Cloud Vision API 인증 (credentials.json 경로 지정)
os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = "D:\clothes\credentials.json"

# Vision API 클라이언트 생성
client = vision.ImageAnnotatorClient()

def analyze_image(image_path):
    # 이미지 파일 로드
    with io.open(image_path, 'rb') as image_file:
        content = image_file.read()
    image = vision.Image(content=content)

    # 라벨 감지 요청
    response = client.label_detection(image=image)
    labels = response.label_annotations
    
    # 색상 감지 요청
    response = client.image_properties(image=image)
    colors = response.image_properties_annotation.dominant_colors.colors
    
    # 필요한 옷 종류 라벨 정의
    clothing_types = [
    "Outerwear",
    "T-shirt",         # 티셔츠
    "Shirt",           # 셔츠
    "Blouse",          # 블라우스
    "Sweater",         # 스웨터
    "Cardigan",        # 가디건
    "Jacket",          # 자켓
    "Coat",            # 코트
    "Hoodie",          # 후디
    "Tank top",        # 탱크탑
    "Polo shirt",      # 폴로 셔츠
    "Camisole",        # 카미솔
    "Dress shirt",     # 드레스 셔츠
    "Button-up shirt", # 버튼업 셔츠
    "Zip-up jacket",   # 지퍼 자켓
    "Pullover",        # 풀오버
    "Long sleeve shirt", # 긴팔 셔츠
    "Short sleeve shirt", # 반팔 셔츠
    "Graphic tee",     # 그래픽 티셔츠
    "Crop top",        # 크롭탑
    "Peplum top",      # 펩럼 탑
    "Bodysuit"         # 바디수트
]


    # 옷의 종류 라벨 추출
    clothing_labels = []
    for label in labels:
        if label.score > 0.8 and label.description in clothing_types:  # 신뢰도 필터링 (0.8 이상) 및 특정 옷 종류 필터링
            clothing_labels.append(label.description)

    # 최종 라벨이 있을 경우 출력
    if clothing_labels:
        print(f"Detected Clothing Type: {clothing_labels[0:3]}")  # 첫 번째 라벨만 출력
    else:
        print("No specific clothing type detected.")

    
    # 색상 정보 추출
    color_info = []
    for color in colors[:1]:  # 상위 3개의 주요 색상만 추출
        rgb = (int(color.color.red), int(color.color.green), int(color.color.blue))
        color_info.append({
            "color": rgb,
            "score": color.score
        })
    
    return {
        "labels": clothing_labels,
        "colors": color_info
    }

# 이미지 분석 수행
image_path = "D:\clothes\skyblue_shirt.jpg" # 분석할 이미지 파일 경로 지정
result = analyze_image(image_path)

# 결과 출력
print("Detected Labels (Clothing Types):", result["labels"])
print("Dominant Colors (RGB and Score):", result["colors"])


