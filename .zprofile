# 命令行后台启动虚拟机
alias vmstart="\
  vmrun start '$HOME/Documents/Virtual Machines.localized/CentOS 7 64 位 01.vmwarevm/CentOS 7 64 位 01.vmx' nogui \
& vmrun start '$HOME/Documents/Virtual Machines.localized/CentOS 7 64 位 02.vmwarevm/CentOS 7 64 位 02.vmx' nogui \
& vmrun start '$HOME/Documents/Virtual Machines.localized/CentOS 7 64 位 03.vmwarevm/CentOS 7 64 位 03.vmx' nogui"

alias vmstop="\
  vmrun stop '$HOME/Documents/Virtual Machines.localized/CentOS 7 64 位 01.vmwarevm/CentOS 7 64 位 01.vmx' \
& vmrun stop '$HOME/Documents/Virtual Machines.localized/CentOS 7 64 位 02.vmwarevm/CentOS 7 64 位 02.vmx' \
& vmrun stop '$HOME/Documents/Virtual Machines.localized/CentOS 7 64 位 03.vmwarevm/CentOS 7 64 位 03.vmx'"

# Scala
export SCALA_HOME=$HOME/work/opt/scala-2.12.6/
export PATH=$PATH:$SCALA_HOME/bin

# Maven
export M3_HOME=$HOME/work/opt/apache-maven-3.5.3
export PATH=$PATH:$M3_HOME/bin

# Default java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin

# Switching easily between java jdks
alias jdk8="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home; java -version"
alias jdk10="export JAVA_HOME/Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home; java -version"

# Surge proxy
export https_proxy=http://127.0.0.1:6152
export http_proxy=http://127.0.0.1:6152
export all_proxy=socks5://127.0.0.1:6153

# Python environment manager
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PATH:$PYENV_ROOT/bin
eval "$(pyenv init -)"

# brew priority(such as vim..)
export PATH=/usr/local/bin:$PATH

# decision vim python version
#export PYTHONPATH=/Users/Fechin/.pyenv/versions/2.7.15/lib/python2.7/site-packages:$PYTHONPATH
