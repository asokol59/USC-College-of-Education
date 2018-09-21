# search algorithem 
# read-in the data
library(readxl)
FALL17_Undergrad <- read_excel("C:/Users/asokol/Dropbox/Adam work folder/Data Requests/Michelle Bryan/FALL 2017 Undergrad Enrolled Student Demographics by Major.xlsx")
FA17_Graduate <- read_excel("C:/Users/asokol/Dropbox/Adam work folder/Data Requests/Michelle Bryan/Fall 2017 Graduate Enrolled Student Demographics by Major.xlsx")

FA17.Com.Enroll <- rbind(FALL17_Undergrad,FA17_Graduate)


# subet EEP & other programs included for this reprot For Enrollment reports only
FA17.dat<- GradSU2018[which(GradSU2018$Degree %in% list("MT", "MAT","MLIS")|GradSU2018$`Major Desc` %in% list("Art Education",
"Early Childhood Education","Elementary Education","Middle Level Education","School Psychology","Counselor Education",
"Curriculum and Instruction","Educational Administration",
"Educational Psych and Res","Educational Technology","Higher Educ and Studnt Affrs","Foundations of Education",
"Language and Literacy","Physical Education","Qualitative Research","Special Education","Teaching","Teaching and Learning","Speech Pathology")|
GradSU2018$`Major Desc`=="Dance"& GradSU2018$`First Concentration Desc`=="Dance Educ K-12 Certification"|
GradSU2018$`Major Desc`=="Music"& GradSU2018$`First Concentration Desc` %in% list("Music Educ - Choral
","Music Educ - Instrumntl")| GradSU2018$`Major Desc` %in% list("French","German","Spanish","Russian") 
& GradSU2018$`First Minor Desc`=="Foreign Language Education"),]


write.csv(FA17.dat,"C:/Users/asokol/Dropbox/Adam work folder/Data Requests/Michelle Bryan/Fall 2017 Search Algorithm test 1.csv")

# pull from Graduation lists
SU18.dat<- GradSU2018[which(GradSU2018$Degree %in% list("MT", "MAT")|
GradSU2018$`Major Name` %in% list("Art Education","Early Childhood Education","Elementary Education","Middle Level Education",
"School Psychology","Counselor Education","Curriculum and Instruction","Educational Administration","Educational Psych and Res",
"Educational Technology","Higher Educ and Studnt Affrs","Foundations of Education","Language and Literacy","Physical Education",
"Qualitative Research","Special Education","Teaching","Teaching and Learning","Speech Pathology")|
GradSU2018$`Major Name`=="Dance"& GradSU2018$`1st Concentration Name`=="Dance Educ K-12 Certification"|
GradSU2018$`Major Name`=="Music"& GradSU2018$`1st Concentration Name` %in% list("Music Educ - Choral","Music Educ - Instrumntl")|
GradSU2018$`Major Name` %in% list("French","German","Spanish","Russian") & GradSU2018$`1st Minor Name`=="Foreign Language Education"),]





