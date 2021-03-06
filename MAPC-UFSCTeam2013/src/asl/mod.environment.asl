+!stopFocusArtifacts: 
    .findall(artifact(NameArt, IdArt), artifact(NameArt, IdArt), ListArt)
<-
    for (.member(artifact(NameArt, IdArt), ListArt)) {
        stopFocus(IdArt);
        -artifact(NameArt, IdArt);
    }.
    
+!stopFocusArtifact(NameArt, IdArt): 
    true
<-
    stopFocus(IdArt);
    -artifact(NameArt, IdArt).
    
+!focusArtifact(Name) <-
    lookupArtifact(Name, IdArt);
    focus(IdArt);
    +artifact(Name, IdArt).
    
+!focusArtifact(Name, IdArt) <-
    +artifact(Name, IdArt).
    
