#webscrapping
link<-"https://www.flipkart.com/search?q=realme+mobile&sid=tyy%2C4io&as=on&as-show=on&otracker=AS_QueryStore_OrganicAutoSuggest_1_9_na_na_na&otracker1=AS_QueryStore_OrganicAutoSuggest_1_9_na_na_na&as-pos=1&as-type=RECENT&suggestionId=realme+mobile%7CMobiles&requestId=14e526d3-e83d-441c-97e6-7fcccf9eadec&as-searchtext=realme%20mo"
library(robotstxt)
path<-paths_allowed(link)
library(rvest)
web<-read_html(link)
library(dplyr)
Name<-web%>%html_nodes("._3wU53n")%>%html_text()
rating<-web%>%html_nodes("._2_KrJI .hGSR34")%>%html_text()
originalprice<-web%>%html_nodes("._2GcJzG")%>%html_text()
discount<-web%>%html_nodes("._6BWGkk span")%>%html_text()
available_price<-web%>%html_nodes("._2rQ-NK")%>%html_text()
imdb.ratings<-data.frame(Name,rating,originalprice,discount,available_price)
View(imdb.ratings)
