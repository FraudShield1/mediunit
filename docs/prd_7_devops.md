# PRD File 7: DevOps & Configuration

## 1. Docker Compose Architecture
* The system will run via a root `docker-compose.yml` defining four distinct services:
    1.  `frontend`: Builds the Next.js app (exposed on port 3000).
    2.  `backend`: Builds the FastAPI app using Uvicorn (exposed on port 8000).
    3.  `postgres`: Uses the official `postgres:15-alpine` image.
    4.  `redis`: Uses the official `redis:alpine` image.

## 2. Environment Variables (.env)
The LLM must generate a `.env.example` file that handles the separation of operations and administration.
* **System:** `DATABASE_URL`, `REDIS_URL`, `JWT_SECRET`, `FRONTEND_URL`.
* **Logistics (Morocco):** `OPERATIONS_CITY="Casablanca"`, `DELIVERY_RADIUS_KM="50"`.
* **Administration (Portugal):** `OFFICIAL_CORRESPONDENCE_ADDRESS="[Insert exact Lisbon Address here]"`, `LEGAL_ENTITY_COUNTRY="Portugal"`. (This ensures the generated PDF invoices correctly route legal and administrative correspondence to your Lisbon entity, separate from Casa operations).

## 3. CI/CD & Code Quality
* **Backend Linting:** The LLM must configure `Ruff` or `Flake8` for strict Python linting.
* **Database Migrations:** Include `Alembic` configurations in the Python container to automatically track and apply PostgreSQL schema updates.
* **Logging:** Configure FastAPI to output JSON-formatted logs to standard output (stdout) so Docker can easily capture API errors for debugging.