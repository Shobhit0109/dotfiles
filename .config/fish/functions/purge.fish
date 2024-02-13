function purge --wraps=sudo\ apt-get\ purge\ \(dpkg\ -l\ \|\ grep\ \'^rc\'\ \|\ awk\ \'\{print\ \$2\}\'\) --wraps=apt-get\ purge\ \(dpkg\ -l\ \|\ grep\ \'^rc\'\ \|\ awk\ \'\{print\ \$2\}\'\) --description alias\ purge=apt-get\ purge\ \(dpkg\ -l\ \|\ grep\ \'^rc\'\ \|\ awk\ \'\{print\ \$2\}\'\)
  sudo apt-get purge (dpkg -l | grep '^rc' | awk '{print $2}') $argv      
end
