# k8s core Component
images=(
kube-apiserver-amd64:v1.7.6
kube-controller-manager-amd64:v1.7.6
kube-scheduler-amd64:v1.7.6
kube-proxy-amd64:v1.7.6
)

for imageName in ${images[@]} ; do
    docker pull gcr.mritd.me/google_containers/$imageName
    docker tag gcr.mritd.me/google_containers/$imageName gcr.io/google_containers/$imageName
    docker rmi gcr.mritd.me/google_containers/$imageName
done