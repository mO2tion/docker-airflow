IMAGE="dev1.mo2tion.com:5000/airflow-base"

docker tag ${IMAGE}:${TAG_COMMONS} ${IMAGE}:${TARGET_ENVIRONMENT}
docker push ${IMAGE}:${TARGET_ENVIRONMENT}
