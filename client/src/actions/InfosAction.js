export const INFOS_USER = "INFOS_USER";

export const INFOS_USER_SUCCESS = "INFOS_USER_SUCCESS";

export const INFOS_USER_ERROR = "INFOS_USER_ERROR";

export const EMAIL_CONFIRMATION = "EMAIL_CONFIRMATION";

export const EMAIL_CONFIRMATION_SUCCESS = "EMAIL_CONFIRMATION_SUCCESS";

export const EMAIL_CONFIRMATION_ERROR = "EMAIL_CONFIRMATION_ERROR";

export const InfosAction = (dataInsc) => ({
  "type": INFOS_USER,
  "data": dataInsc
});

export const InfosUserSuccess = (data) => ({
    "type": INFOS_USER_SUCCESS,
    data
});

export const InfosError = (error) => ({
    "type": INFOS_USER_ERROR,
    error
});

export const EmailConfirmationAction = (token) => ({
  "type": EMAIL_CONFIRMATION,
  'token': token
});

export const EmailConfirmationSuccess = () => ({
    "type": EMAIL_CONFIRMATION_SUCCESS,
});

export const EmailConfirmationError = () => ({
    "type": EMAIL_CONFIRMATION_ERROR,
});