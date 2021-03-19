import React, { useEffect }  from 'react';
import {connect} from "react-redux";
import {LogoutAction} from '../../actions/logoutAction';
import Nav from '../../components/Navbar';
import {getPic} from '../../actions/uploadAction';


const NavBarContainer = (props) => {
    const {user, handleLogout, images, getPic} = props;
    // console.log(user.profilePic);
    useEffect(() => {
        if(user){
            getPic(user.id);
        }
    }, [getPic, user]);
    return(
            <Nav handleLogout={handleLogout} user={user} images={images}/>
    )
}

const mapStateToProps = (state) => (
{
    user : state.user,
    images : state.images,
});
const mapDispatchToProps = {
    "logoutAction": LogoutAction,
    "getPic": getPic,
};
const mergeProps = (stateProps, dispatchProps, otherProps) => ({
    ...stateProps,
    ...dispatchProps,
    ...otherProps,
    "handleLogout" : () => {
        dispatchProps.logoutAction();
    }
});

export default connect(mapStateToProps, mapDispatchToProps, mergeProps)(NavBarContainer);
 