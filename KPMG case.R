# Data Quality Assessment
## Download the file
filename <- "Sprocket Central Pty Ltd.xlsx"
if(!file.exists(filename)){
        fileUrl <- "https://s3-ap-southeast-2.amazonaws.com/insidesherpa-assets/vinternship_modules/kpmg_data_analytics/KPMG_VI_New_raw_data_update_final.xlsx"
        download.file(fileUrl,filename,method = "curl")
}

## check the folder and load the data
library(readxl)
transactions_preload <- read_excel(filename,2)
newcustomerList_preload<- read_excel(filename,3)
CustomerDemographic_preload<- read_excel(filename,4)
CustomerAddress_preload<- read_excel(filename,5)

