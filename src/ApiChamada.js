export default class ApiChamada {
    static async request(endpoint, method = "GET", body = null) {
      const options = {
        method,
        headers: {
          "Content-Type": "application/json",
        },
      };
  
      if (body) {
        options.body = JSON.stringify(body);
      }
  
      const response = await fetch(endpoint, options);
      const data = await response.json();
  
      return data;
    }
  }