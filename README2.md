<h1> Trade0verFl0w </h1>


<h2>Trade0verFl0w is a Stock Trading Application that gives to its users the following abilities</h2>

  <ul><li>Check balance</li>
  <li>Check holding stocks</li>
  <li>Sell stocks</li>
  <li>Buy stocks</li>
  <li>Deposit money</li>
  <li>Search different stocks and their latest prices</li>
  <li>See their portfolios' percentage change</li></ul>

<p>In order to do these operations, the user must sign up, using a user name which is a string containing at least 5 characters and a password containing only numbers.</p>

<h2>The application has 3 models:</h2>

<ol><li>User. (Has many transactions and has many stocks through transactions)</li>
<li>Stock. (Has many transactions has_many users through transactions)</li>
<li>Transaction. (Belongs to user and stock)</li></ol>
