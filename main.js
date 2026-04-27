import express from 'express';
import { hostname } from 'os';

const app = express();
const port = process.env.PORT || 3000;

// GET / → retourne le hostname du conteneur
app.get('/', (req, res) => {
  res.json({
    hostname: hostname()
  });
});

// GET /health → endpoint pour probes (liveness/readiness)
app.get('/health', (req, res) => {
  res.status(200).json({
    status: 'OK'
  });
});

app.listen(port, '0.0.0.0', () => {
  console.log(`Server running on port ${port}`);
});