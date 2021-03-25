import React from 'react';
import { makeStyles, useTheme } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardHeader from '@material-ui/core/CardHeader';
import CardMedia from '@material-ui/core/CardMedia';
import CardContent from '@material-ui/core/CardContent';
import CardActions from '@material-ui/core/CardActions';
import Avatar from '@material-ui/core/Avatar';
import Typography from '@material-ui/core/Typography';
import Box from '@material-ui/core/Box';
import Rating from '@material-ui/lab/Rating';
import defaultImg from '../../image/default.jpg';
import ReactIdSwiperCustom from 'react-id-swiper/lib/ReactIdSwiper.custom';
// import { Swiper, Navigation, Pagination } from 'swiper/js/swiper.esm';
import FavoriteIcon from '@material-ui/icons/Favorite';
import FavoriteBorderIcon from '@material-ui/icons/FavoriteBorder';
import BlockIcon from '@material-ui/icons/Block';
import ReportIcon from '@material-ui/icons/Report';
import IconButton from '@material-ui/core/IconButton';
import Tooltip from '@material-ui/core/Tooltip';
import SupervisedUserCircleOutlinedIcon from '@material-ui/icons/SupervisedUserCircleOutlined';
import SupervisedUserCircleRoundedIcon from '@material-ui/icons/SupervisedUserCircleRounded';
import Chip from '@material-ui/core/Chip';
import SwipeableViews from 'react-swipeable-views';

const useStyles = makeStyles(theme => ({
  card: {
    maxWidth: 620,
    maxHeight: 800,
    borderRadius : '20px',
   
   backgroundColor: '#E6EAEA'
  },
  cardMedia : {
    maxWidth: 320,
    maxHeight : 250,
  },
  cardHeader : {
    maxWidth: 320,
    maxHeight : 100,
  },
  cardContent : {
    maxWidth: 320,
    maxHeight : 200,
  },
  cardAction : {
    marginTop: 5,
    maxWidth: 320,
    maxHeight : 50,
  },
  avatarON: {
    backgroundColor: '#00FB0C',
    width: 15,
    height: 15,
  },
  avatarOF: {
    backgroundColor: '#e42416',
    width: 15,
    height: 15,
  },
  chip: {
    marginRight: '5px',
  },
  img: {
    border: "2px solid yellow",
    height: 290,
    display: "block",
    maxWidth: 300,
    overflow: "hidden",
    width: "100%",
  },
}));

export default function ViewProfile(props) {
  const {user,images,tags,handleBlock,handleLike,handleReport,handleDislike} = props;
  console.log(user)
  const classes = useStyles();
  const theme = useTheme();
  const [activeStep, setActiveStep] = React.useState(0);
  const handleStepChange = (step) => {
    setActiveStep(step);
  };
  const value = user.rating;
      // const params = {
      //   Swiper,
      //   modules: [Navigation, Pagination],
      //   pagination: {
      //     el: '.swiper-pagination',
      //     type: 'bullets',
      //     clickable: true,
      //   },
      //   navigation: {
      //     nextEl: '.swiper-button-next',
      //     prevEl:  '.swiper-button-prev'
      //   },
      //   spaceBetween: 30 
      // }

  return (
    <Card  className={classes.card}>
      <CardHeader
      className={classes.cardHeader}
      action={ 
        <Box component="fieldset" mb={3} borderColor="transparent">
        <div className={classes.rating1}>
          <Rating
            name="read-only"
            value={value}
            precision={0.1}
            readOnly
          />
        </div>
        </Box>
        }
        avatar={
          images.length !== 0
            ? images.map((tile) => (
                  <div key={tile.id}>
                    {tile.isProfilePic === 1 && (
                      <Avatar
                        style={{ border: "1px solid #c9c9c9" ,height: "50px", width : "50px"}}
                        src={`http://localhost:3001/${tile.path}`}
                      />
                    )}
                  </div>
                )
              )
            : null
        }
        title={user.firstname +' ' + user.lastname + ' @'+user.username}
        subheader={user.isOnline === 1 ? 'Online' : 'Last seen : ' + user.lastSignIn}
      >
      </CardHeader>
      <CardMedia
          style={{
            display: "flex",
            flexDirection: "wrap",
            justifyContent: "center",
          }}
        >
          <SwipeableViews
            axis={theme.direction === "rtl" ? "x-reverse" : "x"}
            index={activeStep}
            onChangeIndex={handleStepChange}
            enableMouseEvents
          >
            {images.map((step, index) => (
              <div key={step.id}>
                {Math.abs(activeStep - index) <= 2 ? (
                  <img
                    className={classes.img}
                    src={`http://localhost:3001/${step.path}`}
                  />
                ) : null}
              </div>
            ))}
          </SwipeableViews>
        </CardMedia>
      <CardContent className={classes.cardContent}> 
      
        <Typography >
          <strong>AGE : </strong>{user.age} 
        </Typography>
        <Typography >
          <strong>GENDER : </strong>{user.gender}
        </Typography>
        <Typography >
          <strong>INTERESTED IN : </strong>{user.Sexual_orientation}
        </Typography>
        <Typography component={'span'}>
          <strong>TAGS : </strong> {tags != null &&  tags.map((item, index) =><Chip key={index} className={classes.chip} label={item.value} />)}
        </Typography>
        <Typography >
          <strong>BIO : </strong> {user.biography} 
        </Typography>
      </CardContent>
      <CardActions className={classes.cardAction}>
      {user.like === null &&
          <Tooltip title ="Like"><IconButton aria-label="Like" onClick={(e) => handleLike(user.id)}>
            <FavoriteBorderIcon  color="secondary" />
          </IconButton></Tooltip>
        }
        {user.like === 'iLike' &&
          <Tooltip title ="Unlike"><IconButton aria-label="Unlike" onClick={(e) => handleDislike(user.id)}>
            <FavoriteIcon  color="secondary"/>
          </IconButton></Tooltip>
        }
        {user.like === 'heLiked' &&
          <Tooltip title ="Like back"><IconButton aria-label="Like back"  onClick={(e) => handleLike(user.id)}>
            <SupervisedUserCircleOutlinedIcon color="primary"/>
          </IconButton></Tooltip>
        }
        {user.like === 'match' &&
          <Tooltip title ="Unmatch"><IconButton aria-label="Unmatch"  onClick={(e) => handleDislike(user.id)}>
            <SupervisedUserCircleRoundedIcon color="primary"/>
          </IconButton></Tooltip>
        }
        <Tooltip title ="Block"><IconButton aria-label="Block"  onClick={(e) => handleBlock(user.id)}>
          <BlockIcon  color="secondary"/>
        </IconButton></Tooltip>
        <Tooltip title ="Report"><IconButton aria-label="Report"  onClick={(e) => handleReport(user.id)}>
        <ReportIcon  color="secondary"/>
        </IconButton></Tooltip>
      </CardActions>
    </Card>
  );
}