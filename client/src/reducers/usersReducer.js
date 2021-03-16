import {
  GET_USERS_SUCCESS,
  GET_USERS_ERROR,
} from "../actions/userAction";

const DEFAULT_STATE = {
  status: "DEFAULT STATE",
  isUsers: false,
  users: null,
  err: null,
};

export default function (state = DEFAULT_STATE, action) {
  switch (action.type) {
    case GET_USERS_SUCCESS: {
      return { status: "success", isUsers: true, users: action.data };
    }
    case GET_USERS_ERROR:
      return { status: "error", isUsers: false, err: action.err };
    default:
      return state;
  }
}
