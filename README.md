# UserDefaults-Demo

Introduction to data persistence using UserDefaults. UserDefaults is a storage mechanism that allows developers to store simple data types to the user's device. Examples of recommended data to save to UserDefaults is the color theme of an app, default unit measurments in a workout app. 

## Branches 

On the **master** branch UserDefaults is used to persist (save) the unit measurment that the user prefers, that being miles or kilometers. A todo item was left on the master branch so a default image could be choosen and persisted to the device via UserDefaults. 

The solution to the todo above is on the [generics-refactor](https://github.com/alexpaul/UserDefaults-Demo/tree/generics-refactor) branch (you can view the files from this link, the **generics-branch** makes use of Generics to to persist both the unit measuremnt and the default image. 

## Branching Instructions 

Branches allow for experimentation, team collaboration and working on features in git. By default a repository comes with one branch, that being the **master** branch. As you need to refactor code, test out other features on a project you can create a new branch. This new branch will be created from the history and commits from an existing branch e.g **master** and will have all the commit history of the branch.

#### Create a new branch 
```git branch feature-branch```

#### Checkout a specific branch 
In order to checkout a specific branch using Terminal 

List all branches   
```git branch -a ```

From the list of branches choose the branch you want to checkout (navigate to)   
```git checkout feature-branch```

At this point you will now be viewing the files from example **generics-branch**   

To checkout back to the **master** branch   
```git checkout master```

After you've done your changes on the feature / experimentation branch you can merge those changes to your **master** branch 

1. First checkout master 
```git checkout master```

2. Then perform a merge 
```git merge feature-branch```

3. Delete feature branch 
```git branch -d feature-branch```
