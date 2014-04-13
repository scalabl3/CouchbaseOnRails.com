workers Integer(ENV['PUMA_WORKERS'] || 3)
threads Integer(ENV['MIN_THREADS']  || 1), Integer(ENV['MAX_THREADS'] || 12)

preload_app!

rackup                DefaultRackup
#port                 ENV['port_cbmodels'] || 3001
daemonize             true
bind                  "unix:///www/run/cbrails.sock"
activate_control_app  "unix:///www/run/cbrailsctl.sock"
pidfile               '/www/run/cbrails.pid'
state_path            "/www/run/cbrails.state"
stdout_redirect       "/www/log/cbrails.stdout.log", "/www/log/cbrails.stderr.log"
environment           ENV['env_cbrails'] || 'production'
on_worker_boot do

end