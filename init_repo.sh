#!/usr/bin/env bash
set -e

REPO="open-tax-copilot"

echo "Creating $REPO..."
mkdir -p $REPO
cd $REPO

# Root files
touch README.md LICENSE .gitignore .env.example
touch pyproject.toml requirements.txt Makefile
touch CONTRIBUTING.md CODE_OF_CONDUCT.md SECURITY.md

# GitHub CI
mkdir -p .github/workflows
touch .github/workflows/backend-tests.yml

# Legal
mkdir -p legal
touch legal/DISCLAIMER.md legal/PRIVACY.md legal/TERMS.md

# Backend structure
mkdir -p backend/{api,ai,config,db/migrations,ingest,models,safety,schemas,tax_engine/rules/federal}
touch backend/main.py
touch backend/api/{auth.py,finances.py,tax.py}
touch backend/ai/{advisor.py,prompts.py,explain.py}
touch backend/config/{settings.py,logging.py}
touch backend/db/{session.py,schema.sql}
touch backend/ingest/{pdf_reader.py,csv_loader.py,validators.py}
touch backend/models/{user.py,income.py,deduction.py}
touch backend/safety/{disclaimers.py,confidence.py,escalation.py}
touch backend/schemas/{income.py,deduction.py,tax_result.py}
touch backend/tax_engine/{calculator.py,risk.py}
touch backend/tax_engine/rules/federal/2025.py

# Frontend
mkdir -p frontend/{app,components,hooks,lib}
touch frontend/package.json
touch frontend/lib/{api.ts,types.ts}
touch frontend/hooks/useTaxEstimate.ts
touch frontend/.env.local.example

# Tests
mkdir -p tests
touch tests/{test_tax_engine.py,test_risk.py}

echo "✅ Repository structure created."
