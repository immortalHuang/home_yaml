images=(
etcd-amd64:3.0.17
pause-amd64:3.0
k8s-dns-sidecar-amd64:1.14.4
k8s-dns-kube-dns-amd64:1.14.4
k8s-dns-dnsmasq-nanny-amd64:1.14.4
)

for imageName in ${images[@]} ; do
    a=$imageName
    aa=`echo $a | cut -d ":" -f 1`
    echo $aa
    docker pull gcr.mritd.me/google_containers/$imageName
    docker tag gcr.mritd.me/google_containers/$imageName gcr.io/google_containers/$imageName
    docker rmi gcr.mritd.me/google_containers/$imageName
done