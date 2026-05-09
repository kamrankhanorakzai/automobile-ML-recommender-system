FROM python:3.11-slim

WORKDIR /app

# Copy everything
COPY . .

# Install exact versions from requirements
RUN pip install --no-cache-dir -r requirements.txt

ENV PYTHONPATH=/app

EXPOSE 7860

CMD ["uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "7860"]


