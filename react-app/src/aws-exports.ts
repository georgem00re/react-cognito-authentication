
const amplifyConfig = {
    aws_project_region: import.meta.env.VITE_APP_COGNITO_AWS_REGION,
    aws_cognito_region: import.meta.env.VITE_APP_COGNITO_AWS_REGION,
    aws_user_pools_id: import.meta.env.VITE_APP_COGNITO_USER_POOL_ID,
    aws_user_pools_web_client_id: import.meta.env.VITE_APP_COGNITO_USER_POOL_CLIENT_ID,
}

export default amplifyConfig;
