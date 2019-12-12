use project;

/* 1. Give the top-20 users by the number of comments they post. */
select distinct user.userID, user.name, 
	   (select distinct count(directComment) from comment where user.userID = comment.userID) as NumofComments
from comment
inner join user on comment.userID = user.userID
order by NumofComments desc
limit 20;

use project;
/* 2. Give the top-20 users by the number of replies they post. */
select distinct user.userID, user.name, 
	   (select distinct count(*) from comment where user.userID = comment.userID and reply != '') as NumofReplies
from comment
inner join user on comment.userID = user.userID
order by NumofReplies desc
limit 20;

/* 3. Give the top-20 users by the number of like/dislike they post. */
select distinct user.userID, user.name, 
	   (select distinct count(*) from comment where user.userID = comment.userID and likeDislike = true) as likes,
       (select distinct count(*) from comment where user.userID = comment.userID and likeDislike = false) as dislike
from comment
inner join user on comment.userID = user.userID
order by likes desc, dislike desc
limit 20;

/* 4. Give the top-10 websites with the most requests for article comments. */
select distinct customer.name, 
	(select distinct count(*) from comment where comment.articleID = article.articleID) as commentReqs 
from customer
inner join article on article.customerID = customer.customerID
order by commentReqs desc
limit 10;

/* 5. Give the top-10 websites with the most sales this month/week/year.*/
select distinct customer.name, 
	(select distinct count(*) from billing where billing.articleID = article.articleID and dateOfBill = '2019-09-22') as mostSales 
from customer
inner join article on article.customerID = customer.customerID
order by mostSales desc
limit 10;