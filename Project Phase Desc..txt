Startup name: käm?ent

Phase 1 : Design the ER diagram
Main Entities:-
1. Customer: A news outlet - NBC News
2. Article: Attributes - title, author, publication date, last updated, and topic
3. User: Attributes - name, email, country, state (but not the full address), login, password, avatar, or picture
4. Comment: Attributes - direct (it comments on the article itself), reply (comments on someone else's comment), and like/dislike another comment, date, time, content, flag (a comment may be flagged for its derogatory content)
5. Derogatory Comment: If a comment is flagged as derogatory a senior user needs to read it and make a decision on it. Consists of a class of senior/trusted users whom the NBC News trusts to read the flagged comments and decide on the content. Each senior user has queue of such comments that she needs to read and decide. The decision is YES/NO. Suspend a user account if it is a repeated offender, say 5 times.
6. Billing: Bill by article. NBC News places an order for an article to be opened for commenting. Bill NBC News by the number of comments. Different prices per client.
