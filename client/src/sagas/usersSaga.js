import {put, takeLatest,call} from "redux-saga/effects";
import { select } from 'redux-saga/effects'; 
import {request} from './helper';
import { getUsersSuccess,getUsersError} from '../actions/userAction';

export const getUsers =
    function *getUsers (data) {
        try {
            const user = yield select(state => state.user);
            const token = yield select((state) => state.user.token);
            const response = yield call(request, {
            "url": "http://localhost:3001/getUsers",
            "data": {id : user.id,filtre : data.filtre, indice : data.index},
            "method": "post"
            },token);
            if(response)
            {
                var oldUsers = yield select ((state) => state.users.users)
                var newUsers = response.data;
                var us = null;
                if(data.index !== 0)
                    us = oldUsers.concat(newUsers);
                else
                    us = newUsers;
                yield put(getUsersSuccess(us));
            }
            else
                yield put(getUsersError('there is an error'));
        } catch (error) {
            yield put(getUsersError('there has been an error'));
        }
    };

    export default function *() {
        yield takeLatest("GET_USERS", getUsers);
    }