###################################################################################################
###################################################################################################
#
# https://www.pluralsight.com/courses/kubernetes-package-administration-helm
# 
# Module 3 of Kubernetes Package Administration with Helm
# 
# Deploying a Chart to Kubernetes
#  
# Andrew Pruski
# 
###################################################################################################
###################################################################################################



# confirm current context
kubectl config current-context



# test connection to cluster
kubectl get nodes



# list helm repositories
helm repo list

# add MySQL repo
helm repo add bitnami https://charts.bitnami.com/bitnami

# search repository for a mysql chart
helm search repo bitnami/mysql



# show chart definition
helm show chart bitnami/mysql



# show chart README
helm show readme bitnami/mysql



# pipe README to file
helm show readme bitnami/mysql > "C:\_Code\Learning Modules\Pluralsight\KubePackageAdminWithHelm\Fork-PlSt-KubernetesPackageAdminWithHelm\Module 3\MySqlChart\README.md"



# show chart values
helm show values bitnami/mysql > "C:\_Code\Learning Modules\Pluralsight\KubePackageAdminWithHelm\Fork-PlSt-KubernetesPackageAdminWithHelm\Module 3\MySqlChart\values.yaml"



# test deployment of chart
helm install mysql bitnami/mysql --dry-run --debug



# deploy chart
helm install mysql bitnami/mysql



# confirm deployment
helm list
