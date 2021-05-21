                                   ``````````                                   
                                   yMMMMMMMMy                                   
                               .:-  yMMMMMMy  -:.                               
                     `+m:  :sdMMMN-  yMMMMy  -NMMMds:  :m+`                     
                   -yNMMd  /MMMMMMd`  osso  `dMMMMMM/  dMMMy-                   
                 /dMMMMMM:  ddo/.              ./odd  :MMMMMMd/                 
                :sdMMMMMMy                            yMMMMMMds:                
                   `-+yd+`                            `+dy+-`                   
               `ymy+-                                      -+ymy`               
              `mMMMMs`                                    `sMMMMd`              
              mMMMM/                                        /MMMMm              
          s/  `+dM:                                          :Md+`  /s          
         .MMNs-  `                                            `  -sNMM.         
         oMMMMMm/                                              /mMMMMMo         
         mMMMMMM+                                              +MMMMMMm         
        -MMNdyo/`                                              `/oydNMM-        
        .-`   `-                                                -`   `-.        
           :dNMM-                                              -MMNd:           
           :MMMM+                                              +MMMM:           
            NMMMm                                              mMMMN            
            :oo++.                                            .++oo:            
            ``...-.                                          .--..``            
          .mMMMMMMM/                                        /MMMMMMMm.          
           `hMMMMMMy                                        yMMMMMMd`           
             yMMMM+  :/                                  //  +MMMMy             
              oMm-  sMMm+`                            `+mMMs  -mMo              
               :`  :NMMMMd                            dMMMMN:  `:               
                    `+dMh` .hh` `hddddddddddddh` `hh. `hMd+`                    
                       .  -NN-  hMMMMMMMMMMMMMMh  -NN-  .                       
                         :NM:  yMMMMMMMMMMMMMMMMy  :MN:                         
                        /MM+  oMMMMMMMMMMMMMMMMMMo  +MM/                        
                       +MMo  +MMMMMMMMMMMMMMMMMMMM+  oMM+                       
                      sMMy  :MMMMMMMMMMMMMMMMMMMMMM:  yMMs                      
                     yMMh  -NMMMMMMMMMMMMMMMMMMMMMMN-  hMMy                     
                   `hMMd` .NMMMMMMMMMMMMMMMMMMMMMMMMN. `dMMh`                   
                  `dMMm` `mMMMMMMMMMMMMMMMMMMMMMMMMMMm` `mMMd`                  
                 .mMMN. `dMMMMMMMMMMMMMMMMMMMMMMMMMMMMd` .NMMm.                 
                  ```    ``````````````````````````````    ```                  
                                                                         

# Sprungtor Kapselring

Der "Sprungtor" Kapselring - angelehnt an einen klassischen [Webring](https://de.wikipedia.org/wiki/Webring) - richtet sich an deutschsprachinge [Gemini](https://gemini.circumlunar.space/) Kapseln.

## Mitmachen

Mitmachen kann jeder, der eine (zumindest teilweise) deutschsprachige Gemini Präsenz hat.
Einfach einen Pull Request erstellen oder sich über [Matrix](https://matrix.to/#/#sprungtor-kapselring:matrix.org) melden.

Im Matrixraum werden Neuzugänge vor Aufnahme diskutiert.

## Einbinden in eigener Kapsel

Eingebunden werden auf der eigenen Kapsel kann die Linkliste (sprungtor.gmi) entweder manuell oder über ein kleines Automatisierungsskript. Ein Beispiel dafür wäre sync.sh. Für den Betrieb ist nur ein System was mit BASH-Scripten, sed und curl umgehen kann nötig.

Beispielbefehl:
```
sync.sh https://raw.githubusercontent.com/codeandcreate/Sprungtor-Kaspselring/sprungtor.gmi /var/gemini/default/linkliste.gmi 3
```

Die 3 steht hierbei für die Zeile in der die eigene Kapsel verlinkt ist; diese wird vom Skript automatisch entfernt.