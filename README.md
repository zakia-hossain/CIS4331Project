# Project

## A startup that provides management services for user comments on websites.

Nowdays, most websites allow users to comment on their content. Consider news websites, like Washington Post, Daily Mail, or CNN. Users are allowed to comment on the content of a news article. Suppose that you create a startup (come up with a neat name) that provides management services for user comments for such websites. Examples of such providers are: LiveFyre, Disuqus, and Spot.IM. Your task in this project is to create a database that tracks the user activity at each of these website and give aggregate statistics about the activity to your subscribers. Here are the main entities of your enterprise:

- Customer: To keep things more contained, the customer is a news outlet or a blog.
- Article (or Item/Artifact): Your customer regularly publishes content on its website. For example, a news outlet publishes news articles, while a blog publishes a story or opinion article. The article has several attributes. Here is non-exhaustive list: title, author, publication date, last updated, and topic.
- User: User visit your customerâ€™s website and may decide to post a comment, reply to another comment, or indicate like/dislike on a comment. Some websites require the user to login before they are able to do those actions, while others do not require the user to login in. In the latter case, the user appears as a guest. You will need to collect some basic information about a user, like name, email, country, state (but not the full address), login, password, avatar, or picture. The list again is not exhaustive.
- Comment: A comment is posted by a user to an article. Comments are of several types: direct (it comments on the article itself), reply (comments on someone elseâ€™s comment), and like/dislike another comment. A comment has date and time, content. A comment may be flagged for its derogatory content.
- Derogatory Comment: You need to create a process to manage such comments. If a comment is flagged as derogatory a senior user needs to read it and make a decision on it. (Imagine that a comment is flagged by a machine learning tool, which may have errors. See https://coralproject.net/ or https://www.washingtonpost.com/pr/wp/2017/09/06/the-washington-post-launches-talk-commenting-platform/). Hence, you need to have a class of senior/trusted users whom the customer trusted to read the flagged comments and decide on their content. Each senior user has queue of such comments that she needs to read and decide. The decision is YES/NO. You can suspend a userâ€™s account if it is a repeated offender, say 5 times.
- Billing: Your start up needs to make money. You need to envision a billing scheme. For example, you can bill by article. Hence, a customer places an order for an article to be opened for commenting. You can bill the client by the number of distinct users who comment, or by the number of comments. You may have different prices per client.

## Startup name: käm?ent
Main Entities:-
1. Customer: A news outlet - NBC News
2. Article: Attributes - title, author, publication date, last updated, and topic
3. User: Attributes - name, email, country, state (but not the full address), login, password, avatar, or picture
4. Comment: Attributes - direct (it comments on the article itself), reply (comments on someone else's comment), and like/dislike another comment, date, time, content, flag (a comment may be flagged for its derogatory content)
5. Derogatory Comment: If a comment is flagged as derogatory a senior user needs to read it and make a decision on it. Consists of a class of senior/trusted users whom the NBC News trusts to read the flagged comments and decide on the content. Each senior user has queue of such comments that she needs to read and decide. The decision is YES/NO. Suspend a user account if it is a repeated offender, say 5 times.
6. Billing: Bill by article. NBC News places an order for an article to be opened for commenting. Bill NBC News by the number of comments. Different prices per client.
