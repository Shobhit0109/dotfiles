function wsa --wraps=grep\ ^Package\ /mnt/Ubuntu/@Ubuntu/@/var/lib/apt/lists/\*\ \|\ awk\ \'\{print\ \}\'\ \|\ sort\ -u\ \|\ grep\ -w --wraps=grep\ ^Package\ /var/lib/apt/lists/\*\ \|\ awk\ \'\{print\ \}\'\ \|\ sort\ -u\ \|\ grep\ -w --wraps=grep\ ^Package\ /var/lib/apt/lists/\*\ \|\ awk\ \'\{print\ \}\'\ \|\ sort\ -u\  --wraps=grep\ ^Package\ /var/lib/apt/lists/\*\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\  --wraps=grep\ ^Package\ /var/lib/apt/lists/\*\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\ \|\ grep\ -w --wraps=Sudo\ grep\ ^Package\ /var/lib/apt/lists/\*\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\ \|\ grep\ -w --wraps=grep\ ^Package\ /var/lib/apt/lists/!\(\"auxfiles\"\ \|\ \"partial\"\ \|\ \"lock\"\)\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\ \|\ grep\ -w --wraps=grep\ ^Package\ \ \(find\ /var/lib/apt/lists\ -maxdepth\ 1\ -type\ f\ -not\ -name\ lock\)\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\ \|\ grep\ -w\ hey --wraps=grep\ ^Package\ \ \(find\ /var/lib/apt/lists\ -maxdepth\ 1\ -type\ f\ -not\ -name\ lock\)\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\ \|\ grep\ -w --description alias\ sa=grep\ ^Package\ \ \(find\ /var/lib/apt/lists\ -maxdepth\ 1\ -type\ f\ -not\ -name\ lock\)\ \|\ awk\ \'\{print\ \$2\}\'\ \|\ sort\ -u\ \|\ grep\ -w
  # grep ^Package  (find /var/lib/apt/lists -maxdepth 1 -type f -not -name lock) | awk '{print $2}' | sort -u | grep -w $argv;
  apt list 2>/dev/null | grep -w $argv | grep -e $argv -e installed;
end
