# Lire le CSV
package_info <- read.csv("packages_versions.csv")

# Installer seulement les noms de packages (dernières versions)
install.packages(package_info$Package)

# Vérifier l'installation
installed <- installed.packages()
missing_packages <- setdiff(package_info$Package, installed[, "Package"])

if(length(missing_packages) == 0) {
  cat("Tous les packages sont installés!\n")
} else {
  cat("Packages manquants:", paste(missing_packages, collapse = ", "), "\n")
}