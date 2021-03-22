import React, { useEffect, useState } from "react";
import { connect } from "react-redux";
import Browser from "../../components/Browser";
import { getUsers } from "../../actions/userAction";
import { resetStateUsers } from "../../actions/resetStateAction";

const Browse = (props) => {
  const {users, getUsers } = props;
  console.log(users);

  // const [index, setIndex] = useState(0);
  // const [rating, setValueRating] = useState([0, 0]);
  // const [age, setValueAge] = useState([18, 18]);
  // const [loc, setValueLoc] = useState([0, 0]);
  // const [nbrTags, setValueNbrTags] = useState([0, 0]);
  // // const route = router.location.pathname;
  // const [tags, setValuetags] = useState(null);
  // const [state, setState] = useState({
  //   user: null,
  //   images: null,
  //   interests: null,
  // });
  // const filtre = {
  //   tags: null,
  //   nbrTags: nbrTags,
  //   rating: rating,
  //   age: age,
  //   loc: loc,
  //   router: route,
  // };
  // useEffect(() => {
  //   setValueRating([0]);
  //   setValueAge([18]);
  //   setValueLoc([0]);
  //   setValueNbrTags([0, 0]);
  //   setValuetags(null);
  //   setIndex(0);
  //   if (route === "/browser") getUsers(null, 0);
  //   else if (route === "/search") resetStateUsers();
  // }, [route]);

//   const handleChangeRating = (e, newValue) => {
//     setValueRating(newValue);
//     return newValue;
//   };
//   const handleChangeAge = (e, newValue) => {
//     setValueAge(newValue);
//     return newValue;
//   };
//   const handleChangeLoc = (e, newValue) => {
//     setValueLoc(newValue);
//     return newValue;
//   };
//   const handleChangeNbrTags = (e, newValue) => {
//     setValueNbrTags(newValue);
//     return newValue;
//   };
//   const handleChangeTags = (newValue) => {
//     setValuetags(newValue);
//     return newValue;
//   };

//   const handleSubmit = () => {
//     if(nbrTags[0] === 0 && nbrTags[1] === 0 && rating[0] === 0 
//         && rating[1] === 0 && loc[0] === 0 && loc[1] === 0 && age[0] === 18  && age[1] === 18 && route === '/search')
//         {
//             resetStateUsers();
//             return ;
//         }
//     setIndex(0);
//     getUsers(filtre,0);
    
// };
  return <Browser /> 
  // users={users} handleChangeRating={handleChangeRating}
  // handleChangeAge={handleChangeAge} handleChangeLoc={handleChangeLoc} handleChangeNbrTags={handleChangeNbrTags} rating={rating}
  // handleChangeTags={handleChangeTags} loc={loc} nbrTags={nbrTags} age={age} handleSubmit={handleSubmit} />;
};

const mapStateToProps = (state) => ({
  user: state.user,
  users: state.users,
  // router: state.router,
});

const mapDispatchToProps = {
  "getUsers" : getUsers,
};

export default connect(mapStateToProps, mapDispatchToProps)(Browse);
