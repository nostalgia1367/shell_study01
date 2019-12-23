#!/bin/sh

:<<'END'
grep -c를 이용하여 ERROR가 몇번있는지를 확인하여 ${hostname).log 개수를 반환.
END

err_count=$(grep -c "ERROR" /var/log/myapp/$(hostname).log)  #(1)
echo "Error counts: $err_count"
