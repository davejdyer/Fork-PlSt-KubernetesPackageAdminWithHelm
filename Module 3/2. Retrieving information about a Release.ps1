###################################################################################################
###################################################################################################
#
# https://www.pluralsight.com/courses/kubernetes-package-administration-helm
#
# Module 3 of Kubernetes Package Administration with Helm
# 
# Retrieving information about a Release
#  
# Andrew Pruski
# 
###################################################################################################
###################################################################################################



# view deployments
helm list



# view status of release
helm status mysql



# get release manifests
helm get manifest mysql > "C:\_Code\Learning Modules\Pluralsight\KubePackageAdminWithHelm\Fork-PlSt-KubernetesPackageAdminWithHelm\Module 3\MySqlChart\manifests.yaml"



# get release values - no user values were supplied so file will be blank
helm get values mysql > "C:\_Code\Learning Modules\Pluralsight\KubePackageAdminWithHelm\Fork-PlSt-KubernetesPackageAdminWithHelm\Module 3\MySqlChart\values.yaml"



# get release notes
helm get notes mysql > "C:\_Code\Learning Modules\Pluralsight\KubePackageAdminWithHelm\Fork-PlSt-KubernetesPackageAdminWithHelm\Module 3\MySqlChart\notes.txt"



# get all from release
helm get all mysql  > "C:\_Code\Learning Modules\Pluralsight\KubePackageAdminWithHelm\Fork-PlSt-KubernetesPackageAdminWithHelm\Module 3\MySqlChart\all.txt"



# view kubernetes objects
kubectl get all




# view release history
helm history mysql



# uninstall a release
helm uninstall mysql --keep-history



# confirm
helm list



# confirm with --all flag
helm list --all



# delete release
helm delete mysql



# confirm with --all flag
helm list --all