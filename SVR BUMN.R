library(readxl)
library(tidyverse)
library(ggplot2)
bank_bumn <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx")

#BNI
bni_daily <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx", sheet = "BBNI.JK (Daily)") %>% select(Date,Close) %>% mutate_at(c("Close"), function(x)(x/1000000))
bni_weekly <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx", sheet = "BBNI.JK (Weekly)") %>% select(Date,Close) %>% mutate_at(c("Close"), function(x)(x/1000000))
bni_monthly <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx", sheet = "BBNI.JK (Monthly)") %>% select(Date,Close) %>% mutate_at(c("Close"), function(x)(x/1000000))

#BRI
bri_daily <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx", sheet = "BBRI.JK (Daily)") %>% select(Date,Close) %>% mutate_at(c("Close"), function(x)(x/1000000))
bri_weekly <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx", sheet = "BBRI.JK (Weekly)") %>% select(Date,Close) %>% mutate_at(c("Close"), function(x)(x/1000000))
bri_monthly <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx", sheet = "BBRI.JK (Monthly)") %>% select(Date,Close) %>% mutate_at(c("Close"), function(x)(x/1000000))

#BTN
btn_daily <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx", sheet = "BBTN.JK (Daily)") %>% select(Date,Close) %>% mutate_at(c("Close"), function(x)(x/1000000))
btn_weekly <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx", sheet = "BBTN.JK (Weekly)") %>% select(Date,Close) %>% mutate_at(c("Close"), function(x)(x/1000000))
btn_monthly <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx", sheet = "BBTN.JK (Monthly)") %>% select(Date,Close) %>% mutate_at(c("Close"), function(x)(x/1000000))

#MANDIRI
bmri_daily <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx", sheet = "BMRI.JK (Daily)") %>% select(Date,Close) %>% mutate_at(c("Close"), function(x)(x/1000000))
bmri_weekly <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx", sheet = "BMRI.JK (Weekly)") %>% select(Date,Close) %>% mutate_at(c("Close"), function(x)(x/1000000))
bmri_monthly <- read_excel("C://Users/LENOVO/Desktop/bank_bumn.xlsx", sheet = "BMRI.JK (Monthly)") %>% select(Date,Close) %>% mutate_at(c("Close"), function(x)(x/1000000))

#TRAINING DATA
#DAILY
bni_daily_tr <- bni_daily[1:83,]
bri_daily_tr <- bri_daily[1:83,]
btn_daily_tr <- btn_daily[1:83,]
bmri_daily_tr <- bmri_daily[1:83,]
#WEEKLY
bni_weekly_tr <- bni_weekly[1:18,]
bri_weekly_tr <- bri_weekly[1:18,]
btn_weekly_tr <- btn_weekly[1:18,]
bmri_weekly_tr <- bmri_weekly[1:18,]
#MONTHLY
bni_monthly_tr <- bni_monthly[1:4,]
bri_monthly_tr <- bri_monthly[1:4,]
btn_monthly_tr <- btn_monthly[1:4,]
bmri_monthly_tr <- bmri_monthly[1:4,]


#TESTING DATA
#DAILY
bni_daily_te <- bni_daily[84:103,]
bri_daily_te <- bri_daily[84:103,]
btn_daily_te <- btn_daily[84:103,]
bmri_daily_te <- bmri_daily[84:103,]
#WEEKLY
bni_weekly_te <- bni_weekly[19:23,]
bri_weekly_te <- bri_weekly[19:23,]
btn_weekly_te <- btn_weekly[19:23,]
bmri_weekly_te <- bmri_weekly[19:23,]
#MONTHLY
bni_monthly_te <- bni_monthly[5:6,]
bri_monthly_te <- bri_monthly[5:6,]
btn_monthly_te <- btn_monthly[5:6,]
bmri_monthly_te <- bmri_monthly[5:6,]

############################################################################
#PENGUJIAN DATA TRAINING
#SVM BTN DAILY
library(e1071)
plot(btn_daily_tr, pch = 16)
model_btn_daily_tr <- svm(Close~Date, data = btn_daily_tr)
predict_btn_daily_tr_Close <- predict(model_btn_daily_tr, btn_daily_tr)
points(btn_daily_tr$Date, predict_btn_daily_tr_Close, col = "green", pch = 4)

#SVM BNI DAILY
plot(bni_daily_tr, pch = 16)
model_bni_daily_tr <- svm(Close~Date, data = bni_daily_tr)
predict_bni_daily_tr_Close <- predict(model_bni_daily_tr, bni_daily_tr)
points(bni_daily_tr$Date, predict_bni_daily_tr_Close, col = "green", pch = 4)

#SVM BRI DAILY
plot(bri_daily_tr, pch = 16)
model_bri_daily_tr <- svm(Close~Date, data = bri_daily_tr)
predict_bri_daily_tr_Close <- predict(model_bri_daily_tr, bri_daily_tr)
points(bri_daily_tr$Date, predict_bri_daily_tr_Close, col = "green", pch = 4)

#SVM BMRI DAILY
plot(bmri_daily_tr, pch = 16)
model_bmri_daily_tr <- svm(Close~Date, data = bmri_daily_tr)
predict_bmri_daily_tr_Close <- predict(model_bmri_daily_tr, bmri_daily_tr)
points(bmri_daily_tr$Date, predict_bmri_daily_tr_Close, col = "green", pch = 4)

#SVM BTN WEEKLY
library(e1071)
plot(btn_weekly_tr, pch = 16)
model_btn_weekly_tr <- svm(Close~Date, data = btn_weekly_tr)
predict_btn_weekly_tr_Close <- predict(model_btn_weekly_tr, btn_weekly_tr)
points(btn_weekly_tr$Date, predict_btn_weekly_tr_Close, col = "green", pch = 4)

#SVM BNI WEEKLY
library(e1071)
plot(bni_weekly_tr, pch = 16)
model_bni_weekly_tr <- svm(Close~Date, data = bni_weekly_tr)
predict_bni_weekly_tr_Close <- predict(model_bni_weekly_tr, bni_weekly_tr)
points(bni_weekly_tr$Date, predict_bni_weekly_tr_Close, col = "green", pch = 4)

#SVM BRI WEEKLY
library(e1071)
plot(bri_weekly_tr, pch = 16)
model_bri_weekly_tr <- svm(Close~Date, data = bri_weekly_tr)
predict_bri_weekly_tr_Close <- predict(model_bri_weekly_tr, bri_weekly_tr)
points(bri_weekly_tr$Date, predict_bri_weekly_tr_Close, col = "green", pch = 4)

#SVM BMRI WEEKLY
library(e1071)
plot(bmri_weekly_tr, pch = 16)
model_bmri_weekly_tr <- svm(Close~Date, data = bmri_weekly_tr)
predict_bmri_weekly_tr_Close <- predict(model_bmri_weekly_tr, bmri_weekly_tr)
points(bmri_weekly_tr$Date, predict_bmri_weekly_tr_Close, col = "green", pch = 4)

#SVM BTN MONTHLY
library(e1071)
plot(btn_monthly_tr, pch = 16)
model_btn_monthly_tr <- svm(Close~Date, data = btn_monthly_tr)
predict_btn_monthly_tr_Close <- predict(model_btn_monthly_tr, btn_monthly_tr)
points(btn_monthly_tr$Date, predict_btn_monthly_tr_Close, col = "green", pch = 4)

#SVM BNI MONTHLY
library(e1071)
plot(bni_monthly_tr, pch = 16)
model_bni_monthly_tr <- svm(Close~Date, data = bni_monthly_tr)
predict_bni_monthly_tr_Close <- predict(model_bni_monthly_tr, bni_monthly_tr)
points(bni_monthly_tr$Date, predict_bni_monthly_tr_Close, col = "green", pch = 4)

#SVM BRI MONTHLY
library(e1071)
plot(bri_monthly_tr, pch = 16)
model_bri_monthly_tr <- svm(Close~Date, data = bri_monthly_tr)
predict_bri_monthly_tr_Close <- predict(model_bri_monthly_tr, bri_monthly_tr)
points(bri_monthly_tr$Date, predict_bri_monthly_tr_Close, col = "green", pch = 4)

#SVM BMRI MONTHLY
library(e1071)
plot(bmri_monthly_tr, pch = 16)
model_bmri_monthly_tr <- svm(Close~Date, data = bmri_monthly_tr)
predict_bmri_monthly_tr_Close <- predict(model_bmri_monthly_tr, bmri_monthly_tr)
points(bmri_monthly_tr$Date, predict_bmri_monthly_tr_Close, col = "green", pch = 4)

#Evaluasi Model (Error)
error =  bri_monthly_tr$Close - predict_bri_monthly_tr_Close
abs_error = abs(error)
square_error = error ^ 2
abs_error_dvdby_actual = abs(error / bri_monthly_tr$Close)

#Nilai RMSE
rmse = sqrt(sum(square_error)/nrow(bri_monthly_tr))
#Nilai NRMSE
nrmse = rmse / (max(bri_monthly_tr$Close) - min(bri_monthly_tr$Close))
#Nilai MAPE
mape = (sum(abs_error_dvdby_actual) / nrow(bri_monthly_tr)) * 100


bmri_monthly_tr_final <- data.frame(`Evaluasi Model` = c("RMSE","NRMSE","MAPE"), Nilai = c(rmse,nrmse,mape))
bni_monthly_tr_final <- data.frame(`Evaluasi Model` = c("RMSE","NRMSE","MAPE"), Nilai = c(rmse,nrmse,mape))
btn_monthly_tr_final <- data.frame(`Evaluasi Model` = c("RMSE","NRMSE","MAPE"), Nilai = c(rmse,nrmse,mape))
bri_monthly_tr_final <- data.frame(`Evaluasi Model` = c("RMSE","NRMSE","MAPE"), Nilai = c(rmse,nrmse,mape))
bmri_monthly_tr_final$Bank <- c("BMRI","BMRI","BMRI")
bni_monthly_tr_final$Bank <- c("BNI","BNI","BNI")
btn_monthly_tr_final$Bank <- c("BTN","BTN","BTN")
bri_monthly_tr_final$Bank <- c("BRI","BRI","BRI")

sd <- rbind(bmri_monthly_tr_final,bni_monthly_tr_final,btn_monthly_tr_final,bri_monthly_tr_final)
sd$Nilai <- format(round(sd$Nilai, 2), nsmall = 2)
write.csv(sd,"nilai monthly.csv")
view(sd)

###########################################################
#PENGUJIAN DATA TESTING
#SVM BTN DAILY
library(e1071)
plot(btn_daily_te, pch = 16)
model_btn_daily_te <- svm(Close~Date, kernel = "radial", data = btn_daily_te)
predict_btn_daily_te_Close <- predict(model_btn_daily_te, btn_daily_te)
points(btn_daily_te$Date, predict_btn_daily_te_Close, col = "green", pch = 4)

#SVM BNI DAILY
plot(bni_daily_te, pch = 16)
model_bni_daily_te <- svm(Close~Date, data = bni_daily_te)
predict_bni_daily_te_Close <- predict(model_bni_daily_te, bni_daily_te)
points(bni_daily_te$Date, predict_bni_daily_te_Close, col = "green", pch = 4)

#SVM BRI DAILY
plot(bri_daily_te, pch = 16)
model_bri_daily_te <- svm(Close~Date, data = bri_daily_te)
predict_bri_daily_te_Close <- predict(model_bri_daily_te, bri_daily_te)
points(bri_daily_te$Date, predict_bri_daily_te_Close, col = "green", pch = 4)

#SVM BMRI DAILY
plot(bmri_daily_te, pch = 16)
model_bmri_daily_te <- svm(Close~Date, data = bmri_daily_te)
predict_bmri_daily_te_Close <- predict(model_bmri_daily_te, bmri_daily_te)
points(bmri_daily_te$Date, predict_bmri_daily_te_Close, col = "green", pch = 4)

#SVM BTN WEEKLY
library(e1071)
plot(btn_weekly_te, pch = 16)
model_btn_weekly_te <- svm(Close~Date, data = btn_weekly_te)
predict_btn_weekly_te_Close <- predict(model_btn_weekly_te, btn_weekly_te)
points(btn_weekly_te$Date, predict_btn_weekly_te_Close, col = "green", pch = 4)

#SVM BNI WEEKLY
library(e1071)
plot(bni_weekly_te, pch = 16)
model_bni_weekly_te <- svm(Close~Date, data = bni_weekly_te)
predict_bni_weekly_te_Close <- predict(model_bni_weekly_te, bni_weekly_te)
points(bni_weekly_te$Date, predict_bni_weekly_te_Close, col = "green", pch = 4)

#SVM BRI WEEKLY
library(e1071)
plot(bri_weekly_te, pch = 16)
model_bri_weekly_te <- svm(Close~Date, data = bri_weekly_te)
predict_bri_weekly_te_Close <- predict(model_bri_weekly_te, bri_weekly_te)
points(bri_weekly_te$Date, predict_bri_weekly_te_Close, col = "green", pch = 4)

#SVM BMRI WEEKLY
library(e1071)
plot(bmri_weekly_te, pch = 16)
model_bmri_weekly_te <- svm(Close~Date, data = bmri_weekly_te)
predict_bmri_weekly_te_Close <- predict(model_bmri_weekly_te, bmri_weekly_te)
points(bmri_weekly_te$Date, predict_bmri_weekly_te_Close, col = "green", pch = 4)

#SVM BTN MONTHLY
library(e1071)
plot(btn_monthly_te, pch = 16)
model_btn_monthly_te <- svm(Close~Date, data = btn_monthly_te)
predict_btn_monthly_te_Close <- predict(model_btn_monthly_te, btn_monthly_te)
points(btn_monthly_te$Date, predict_btn_monthly_te_Close, col = "green", pch = 4)

#SVM BNI MONTHLY
library(e1071)
plot(bni_monthly_te, pch = 16)
model_bni_monthly_te <- svm(Close~Date, data = bni_monthly_te)
predict_bni_monthly_te_Close <- predict(model_bni_monthly_te, bni_monthly_te)
points(bni_monthly_te$Date, predict_bni_monthly_te_Close, col = "green", pch = 4)

#SVM BRI MONTHLY
library(e1071)
plot(bri_monthly_te, pch = 16)
model_bri_monthly_te <- svm(Close~Date, data = bri_monthly_te)
predict_bri_monthly_te_Close <- predict(model_bri_monthly_te, bri_monthly_te)
points(bri_monthly_te$Date, predict_bri_monthly_te_Close, col = "green", pch = 4)

#SVM BMRI MONTHLY
library(e1071)
plot(bmri_monthly_te, pch = 16)
model_bmri_monthly_te <- svm(Close~Date, data = bmri_monthly_te)
predict_bmri_monthly_te_Close <- predict(model_bmri_monthly_te, bmri_monthly_te)
points(bmri_monthly_te$Date, predict_bmri_monthly_te_Close, col = "green", pch = 4)

#Evaluasi Model (Error)
error =  bri_daily_te$Close - predict_bri_daily_te_Close
abs_error = abs(error)
square_error = error ^ 2
abs_error_dvdby_actual = abs(error / bri_daily_te$Close)

#Nilai RMSE
rmse = sqrt(sum(square_error)/nrow(bri_daily_te))
#Nilai NRMSE
nrmse = rmse / (max(bri_daily_te$Close) - min(bri_daily_te$Close))
#Nilai MAPE
mape = (sum(abs_error_dvdby_actual) / nrow(bri_daily_te)) * 100


bmri_daily_te_final <- data.frame(`Evaluasi Model` = c("RMSE","NRMSE","MAPE"), Nilai = c(rmse,nrmse,mape))
bni_daily_te_final <- data.frame(`Evaluasi Model` = c("RMSE","NRMSE","MAPE"), Nilai = c(rmse,nrmse,mape))
btn_daily_te_final <- data.frame(`Evaluasi Model` = c("RMSE","NRMSE","MAPE"), Nilai = c(rmse,nrmse,mape))
bri_daily_te_final <- data.frame(`Evaluasi Model` = c("RMSE","NRMSE","MAPE"), Nilai = c(rmse,nrmse,mape))
bmri_daily_te_final$Bank <- c("BMRI","BMRI","BMRI")
bni_daily_te_final$Bank <- c("BNI","BNI","BNI")
btn_daily_te_final$Bank <- c("BTN","BTN","BTN")
bri_daily_te_final$Bank <- c("BRI","BRI","BRI")

ds <- rbind(bmri_daily_te_final,bni_daily_te_final,btn_daily_te_final,bri_daily_te_final)

###################################
#Predicting value based on testing data

sw <- format(round(predict_bmri_monthly_te_Close, 2), nsmall = 2)
ws <- cbind(bmri_monthly_te$Close,sw)

write.csv(ws,"bmri monthly.csv")
