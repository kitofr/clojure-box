```
  ___  __    _____   ____  __  __  ____  ____    ____  _____  _  _ 
 / __)(  )  (  _  ) (_  _)(  )(  )(  _ \( ___)  (  _ \(  _  )( \/ )
( (__  )(__  )(_)( .-_)(   )(__)(  )   / )__)    ) _ < )(_)(  )  ( 
 \___)(____)(_____)\____) (______)(_)\_)(____)  (____/(_____)(_/\_)

```
This is meant to be a simple setup so that you have someplace to push your code to.

Goal
---
```cucumber
Given you have a git repository with a leiningen clojure project.
And you connect it to the Vagrant as a git-remote
When you push your code
Then the server should do `lein compile :all`
And start a `lein ring server-headless`
```

TODO
----
  * IPTables seems to hinder me right now
  * what if the server is restarted... we need to restart things
  * we could use some kind of release/date-folder structure and then have a link to current (vlad style)
