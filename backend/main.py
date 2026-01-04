from fastapi import FastAPI

app = FastAPI(title="Open Tax Copilot")

@app.get("/health")
def health():
    return {"status": "ok"}
