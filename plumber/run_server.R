library(plumber)
root <- pr("/plumber/send_data.R")
root %>% pr_run(host='0.0.0.0', port = 8000)
