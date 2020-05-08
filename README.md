# cardscan-carthage-example
### In `/CarthageBuildTest`
1. Check that the `Cartfile` is pointing to the correct cardscan repo (i.e. master)
2. Run ```carthage update``` and ```carthage build``` without errors

### Possible Errors: 
* **No shared frameworks found**
    * Go back to `cardscan-ios`
    * Reclick `shared` in the scheme manager
    * Recommit and push to master
    * Update & build carthage 
    
*  **A shell task ... (launched in ~/somePath/.CarthageKit/dependencies/cardscan-ios) failed with exit code 1**
    * rm -rf the cache path
    * Update & build carthage
