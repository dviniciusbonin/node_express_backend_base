import './config';
import express, {Request, Response} from 'express';

const app = express();

app.get('/', (req: Request, res: Response) => res.send('Hello World!'));

app.listen(process.env.PORT, () => console.log(`Backend is running in port ${process.env.PORT}`));