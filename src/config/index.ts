import * as dotenv from 'dotenv';

export default dotenv.config({
    path: process.env.NODE_ENV === "dev" ? ".env.development": ".env"
});