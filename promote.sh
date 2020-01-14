IMAGE="dev1.mo2tion.com:5000/airflow-base"

# Should probably match the Airflow version :)
RELEASE_TAG=1.10.7

docker tag ${IMAGE}:${TAG_COMMONS} ${IMAGE}:${RELEASE_TAG}
docker push ${IMAGE}:${RELEASE_TAG}
