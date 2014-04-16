workers Integer(ENV['PUMA_WORKERS'] || 3)
threads Integer(ENV['MIN_THREADS']  || 1), Integer(ENV['MAX_THREADS'] || 12)

preload_app!

rackup                DefaultRackup
#port                 ENV['port_cbmodels'] || 3001
daemonize             true
bind                  "unix:///www/run/cbrails.sock"
pidfile               '/www/run/cbrails.pid'
stdout_redirect       "/www/log/puma-cbrails-stdout.log", "/www/log/puma-cbrails-stderr.log"
environment           ENV['env_cbrails'] || 'production'

#control app considered broken right now (puma github)
#activate_control_app  "unix:///www/run/cbrailsctl.sock"

#state file considered broken right now (puma github)
#state_path            "/www/run/cbrails.state"

on_worker_boot do

end