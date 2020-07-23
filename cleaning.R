#assigns imported data to variable sjdata for easier use
sjdata = San_Jose_95123_2_ 

#deletes first unnecessary column
sjdata = sjdata[-c(1)]

#deletes first redundant row of column names
sjdata = sjdata[-c(1), ]

#renames column names to appropriate titles
names(sjdata)[names(sjdata) == "...2"] <- "Status"
names(sjdata)[names(sjdata) == "...3"] <- "DOM"
names(sjdata)[names(sjdata) == "...4"] <- "Address"
names(sjdata)[names(sjdata) == "...5"] <- "Unit"
names(sjdata)[names(sjdata) == "...6"] <- "City"
names(sjdata)[names(sjdata) == "...7"] <- "Area"
names(sjdata)[names(sjdata) == "...8"] <- "LP"
names(sjdata)[names(sjdata) == "...9"] <- "SP"
names(sjdata)[names(sjdata) == "...10"] <- "BT"
names(sjdata)[names(sjdata) == "...11"] <- "SqFt"
names(sjdata)[names(sjdata) == "...12"] <- "BR"
names(sjdata)[names(sjdata) == "...13"] <- "Bth"
names(sjdata)[names(sjdata) == "...14"] <- "PB"
names(sjdata)[names(sjdata) == "...15"] <- "Gar"
names(sjdata)[names(sjdata) == "...16"] <- "GarSp"
names(sjdata)[names(sjdata) == "...17"] <- "YrBlt"
names(sjdata)[names(sjdata) == "...18"] <- "Acres"
names(sjdata)[names(sjdata) == "...19"] <- "Lot_SqFt" 

#transforms relevant columns to numeric type to perform calculations
sjdata <- transform(sjdata, DOM = as.numeric(DOM))
sjdata <- transform(sjdata, LP = as.numeric(LP))
sjdata <- transform(sjdata, SP = as.numeric(SP))
sjdata <- transform(sjdata, SqFt = as.numeric(SqFt))
sjdata <- transform(sjdata, BR = as.numeric(BR))
sjdata <- transform(sjdata, Bth = as.numeric(Bth))
sjdata <- transform(sjdata, PB = as.numeric(PB))
sjdata <- transform(sjdata, GarSp = as.numeric(GarSp))
sjdata <- transform(sjdata, Acres = as.numeric(Acres))
sjdata <- transform(sjdata, Lot_SqFt = as.numeric(Lot_SqFt))
sjdata <- transform(sjdata, YrBlt = as.numeric(YrBlt))

#create Age column
sjdata$Age <- 2020 - sjdata$YrBlt
