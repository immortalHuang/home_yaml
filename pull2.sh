images=(                                                                                              
kube-apiserver-amd64:v1.6.4
kube-controller-manager-amd64:v1.6.4
kube-scheduler-amd64:v1.6.4
kube-proxy-amd64:v1.6.4
)                                                                                                     
                                                                                                      
for imageName in ${images[@]} ; do                                                                    
    docker pull immortalhuang/$imageName                                                   
    docker tag docker.io/immortalhuang/$imageName gcr.io/google_containers/$imageName
    docker rmi docker.io/immortalhuang/$imageName
done                                                                                                  
