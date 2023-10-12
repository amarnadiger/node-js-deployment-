console.log(
  "process env REACT_APP_DEV_REMOTE",
  process.env.REACT_APP_DEV_REMOTE
)

export const API_BASE_URL ='http://localhost:3000'; // Assuming your backend is running on port 3000 locally

  process.env.NODE_ENV == "production" ||
  process.env.REACT_APP_DEV_REMOTE == "remote"
    ? "https://erp-crm.idurarapp.com/api/"
    : "http://localhost:8888/api/"

// export const API_BASE_URL = "https://wild-puce-reindeer-sari.cyclic.app/api/";
export const ACCESS_TOKEN_NAME = "x-auth-token"
