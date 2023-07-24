typedef enum {OKAY, EXOKAY, SLVERR, DECERR} resp_type;

class slave_driver;
  resp_type resp;
  
  // callback
  virtual task update_resp;
  endtask
  
  // send response task
  task send_response;
    std::randomize(resp) with { resp == OKAY;};
    update_resp();
  endtask
endclass