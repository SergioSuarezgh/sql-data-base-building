def limpiar_fecha(df):
    for i in df.last_update.values:
        df['fecha']=i[:11]
    
    for i in df.last_update.values:
        df['hora']=i[11:] 
        
    
    
def special_features(x):
    trail=[]
    commen=[]
    bh_scene=[]
    del_scene=[]
    if 'Trailers' in x:
        trail.append('Y')
    else:
        trail.append('N')
    if 'Commentaries' in x:
        trail.append('Y')
    else:
        commen.append('N')
    if 'Behind the Scenes' in x:
        bh_scene.append('Y')
    else:
        bh_scene.append('N')
    if 'Deleted Scenes' in x:
        del_scene.append('Y')
    else:
        del_scene.append('N')
    
    print(trail)
    print(commen)
    print(bh_scene)
    print(del_scene)
    
    
    
def actor_id(x):
    if actor.first_name=x and actor.last_name=x:
        old_HDD['actor_id']=actor.actor_id
        
        
        
        
        
        
