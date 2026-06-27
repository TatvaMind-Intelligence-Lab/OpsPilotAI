from fastapi import FastAPI

app = FastAPI(title="OpsPilot AI")

@app.get("/")
def root():
    return {
        "message": "OpsPilot API Running"
    }

@app.get("/health")
def health():
    return {
        "status": "healthy"
    }