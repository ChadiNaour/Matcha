import React from 'react'
import * as Core from '@material-ui/core';
import * as Icons from '@material-ui/icons';
import Rating from '@material-ui/lab/Rating';
import "./Cards.css";
import Age from '../commun/age';

export default function Cards({image, user}) {
    return (
      <div className="container">
        <Core.Card className="card" style={{backgroundSize: "cover", backgroundPosition: "center center"}}>
          <Core.CardHeader
            className="cardHeader"
            action={ 
              <Core.Box component="fieldset" borderColor="transparent">
              <div className="rating1"> 
                <Rating
                  name="read-only"
                  value={1}
                  precision={0.1}
                  readOnly
                />
              </div>
              </Core.Box>
              }
              avatar={
                <Core.Avatar aria-label="recipe" className="avatarON"></Core.Avatar> 
              }
              title= {user.username}
              subheader={(user.online) ? 'Online' : 'Offline'}
            >
          </Core.CardHeader>
          <Core.CardMedia
              className="cardMedia"
              children={
                  <div>
                    {console.log(image)}
                      <img style={{width: "95%",height:"220px"}} src={`http://localhost:3001/${image}`} alt="images"/>
                  </div>
              }
          />
        <div className="cardContent">
        {/* {console.log(user)} */}
          <Core.Typography>
            Age : {Age(user.date_birthday)}
          </Core.Typography>
        </div>
        <div className="cardAction">
            <Core.Tooltip title ="Like"><Core.IconButton aria-label="Like">
            <Icons.FavoriteBorder color="secondary" />
            </Core.IconButton></Core.Tooltip>
            <Core.Tooltip title ="Block"><Core.IconButton aria-label="Block">
          <Icons.Block  color="secondary"/>
        </Core.IconButton></Core.Tooltip>
        <Core.Tooltip title ="View"><Core.IconButton aria-label="View">
          <Icons.Visibility  color="primary"/>
        </Core.IconButton></Core.Tooltip>
        </div>
        </Core.Card>
      </div>
  );
}