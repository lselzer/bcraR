read_values_api <- function(url, auth_header) {
  req <- GET(url, add_headers(Authorization = auth_header))
  stop_for_status(req)
  fromJSON(content(req, "text"))
}
