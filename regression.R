#sold homes
sold <- sjdata[!(is.na(sjdata$SP) | sjdata$SP==""), ]

#unsold homes
unsold <- sjdata[(is.na(sjdata$SP) | sjdata$SP==""), ] #unsold homes

#multivariable linear regression model
mod <- lm(SP ~ LP + BR + Bth + Age + SqFt + Acres + DOM + GarSp + Lot_SqFt, data = sold) 

#plot predicted selling price and actual selling price
plot(predict(mod), sold$SP, xlab = "predicted", ylab = "actual")
abline(a=0,b=1)

#apply regression model to unsold homes and add as a column to unsold dataset
unsold$PSP <- predict(mod, unsold)