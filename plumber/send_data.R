#* @param msg
#* @get /send_data
function(msg = "") {
  list(msg = msg, data = rnorm(1000))
}
