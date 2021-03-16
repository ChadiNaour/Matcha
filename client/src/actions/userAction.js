export const UPDATE_USER_SUCCESS = "UPDATE_USER_SUCCESS";
export const GET_USERS = "GET_USERS";
export const GET_USERS_SUCCESS = "GET_USERS_SUCCESS";
export const GET_USERS_ERROR = "GET_USERS_ERROR";

export const updateUserSuccess = (data) => ({
  type: UPDATE_USER_SUCCESS,
  data,
});

export const getUsers = (filtre, index) => ({
  type: GET_USERS,
  filtre: filtre,
  index: index,
});
export const getUsersSuccess = (data) => ({
  type: GET_USERS_SUCCESS,
  data,
});
export const getUsersError = (err) => ({
  type: GET_USERS_ERROR,
  err,
});
