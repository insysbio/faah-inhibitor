### settings
model_path <- './dist/mrg/model.cpp'
fig_path <- './dist/mrg.png'
library(mrgsolve)

### doses
doses <- data.frame(
  ID = 1, 
  time = 0, 
  evid = 1, 
  cmt = 1, 
  amt = 5400000
)

### main code
message('Reading model... ', appendLF = FALSE)
model <- mrgsolve::mread(model = 'default', file = model_path)
message('OK')

message('Run simulations (end = 340)... ', appendLF = FALSE)
sim <- model %>%
  data_set(doses) %>%
  mrgsim(
    delta = 1,
    hmax = 0,
    maxsteps = 1e9,
    atol = 1e-7,
    rtol = 1e-4,
    end = 340
  )
message('OK')

message('Plot results and save to file ${fig_path}... ', appendLF = FALSE)
plot <- sim %>%
    plot(A_p + O_p + P_p + PFM_p ~ time, type='l')

  lattice::trellis.device(device = png, file =  fig_path )
  print(plot)
  dev.off()
message('OK')
