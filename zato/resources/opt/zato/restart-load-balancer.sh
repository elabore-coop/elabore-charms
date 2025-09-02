export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:~/current/bin
export PYTHONPATH=:/opt/zato/current/extlib
export ZATO_PYTHON_REQS=/opt/hot-deploy/python-reqs/requirements.txt
export ZATO_HOT_DEPLOY_DIR=/opt/hot-deploy/services:
export ZATO_USER_CONF_DIR=/opt/hot-deploy/user-conf:/tmp/zato-user-conf
export ZATO_HOT_DEPLOY_PREFER_SNAPSHOTS=True
export Zato_Is_Quickstart=
export Zato_Log_Env_Details=True
export Zato_TLS_Verify=
export Zato_Is_Docker=True

~/current/bin/zato stop /opt/zato/env/qs-1/load-balancer 
kill $(ps -aux | grep zato.agent.load_balancer.main | grep -v grep | grep -v /bin/sh | awk '{ print $2 }') 
~/current/bin/zato start /opt/zato/env/qs-1/load-balancer --env-file /opt/hot-deploy/enmasse/env.ini
