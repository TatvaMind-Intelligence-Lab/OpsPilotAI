#!/bin/bash

PROJECT_NAME="opspilot-ai"

echo "Creating project structure..."

mkdir -p $PROJECT_NAME
cd $PROJECT_NAME || exit

########################################
# Root Files
########################################

touch README.md
touch .gitignore
touch docker-compose.yml

########################################
# Documentation
########################################

mkdir -p docs

touch docs/PRD.md
touch docs/API.md
touch docs/DATABASE.md
touch docs/ARCHITECTURE.md
touch docs/USER_FLOW.md

########################################
# Backend
########################################

mkdir -p backend/app/{api/v1,core,db/migrations,models,schemas,services/{finance,operations,ocr,ai,dashboard},agents,workflows,utils}

touch backend/app/main.py
touch backend/app/__init__.py

# API Routes
touch backend/app/api/v1/auth.py
touch backend/app/api/v1/invoices.py
touch backend/app/api/v1/expenses.py
touch backend/app/api/v1/inventory.py
touch backend/app/api/v1/vendors.py
touch backend/app/api/v1/dashboard.py
touch backend/app/api/v1/ai.py

# Core
touch backend/app/core/config.py
touch backend/app/core/security.py
touch backend/app/core/logging.py
touch backend/app/core/constants.py

# Database
touch backend/app/db/database.py
touch backend/app/db/base.py
touch backend/app/db/session.py

# Models
touch backend/app/models/user.py
touch backend/app/models/business.py
touch backend/app/models/vendor.py
touch backend/app/models/product.py
touch backend/app/models/inventory.py
touch backend/app/models/invoice.py
touch backend/app/models/expense.py
touch backend/app/models/transaction.py
touch backend/app/models/recommendation.py

# Schemas
touch backend/app/schemas/user.py
touch backend/app/schemas/business.py
touch backend/app/schemas/vendor.py
touch backend/app/schemas/product.py
touch backend/app/schemas/inventory.py
touch backend/app/schemas/invoice.py
touch backend/app/schemas/expense.py
touch backend/app/schemas/transaction.py
touch backend/app/schemas/recommendation.py

# Finance Services
touch backend/app/services/finance/invoice_service.py
touch backend/app/services/finance/expense_service.py
touch backend/app/services/finance/payment_service.py
touch backend/app/services/finance/cashflow_service.py

# Operations Services
touch backend/app/services/operations/inventory_service.py
touch backend/app/services/operations/vendor_service.py
touch backend/app/services/operations/order_service.py

# OCR Services
touch backend/app/services/ocr/document_parser.py
touch backend/app/services/ocr/image_processor.py

# AI Services
touch backend/app/services/ai/gemini_service.py
touch backend/app/services/ai/prompt_manager.py

# Dashboard Services
touch backend/app/services/dashboard/dashboard_service.py

# Agents
touch backend/app/agents/finance_agent.py
touch backend/app/agents/inventory_agent.py
touch backend/app/agents/planner_agent.py
touch backend/app/agents/executive_agent.py

# Workflows
touch backend/app/workflows/invoice_pipeline.py
touch backend/app/workflows/inventory_pipeline.py
touch backend/app/workflows/finance_pipeline.py

# Utils
touch backend/app/utils/helpers.py

# Backend Root
touch backend/requirements.txt
touch backend/Dockerfile
touch backend/.dockerignore
touch backend/.env

########################################
# Frontend
########################################

mkdir -p frontend/public

mkdir -p frontend/src/{assets,components/{common,finance,operations,dashboard,ai,layout},pages/{Dashboard,Finance,Inventory,Vendors,Reports,AI,Settings},hooks,context,services,api,routes,utils,constants}

touch frontend/src/App.jsx
touch frontend/src/main.jsx
touch frontend/src/index.css

# Pages
touch frontend/src/pages/Dashboard/index.jsx
touch frontend/src/pages/Finance/index.jsx
touch frontend/src/pages/Inventory/index.jsx
touch frontend/src/pages/Vendors/index.jsx
touch frontend/src/pages/Reports/index.jsx
touch frontend/src/pages/AI/index.jsx
touch frontend/src/pages/Settings/index.jsx

# Common Components
touch frontend/src/components/common/Button.jsx
touch frontend/src/components/common/Card.jsx
touch frontend/src/components/common/Modal.jsx
touch frontend/src/components/common/Table.jsx

# Finance Components
touch frontend/src/components/finance/InvoiceTable.jsx
touch frontend/src/components/finance/ExpenseChart.jsx
touch frontend/src/components/finance/CashflowCard.jsx

# Operations Components
touch frontend/src/components/operations/InventoryTable.jsx
touch frontend/src/components/operations/VendorCard.jsx

# Dashboard Components
touch frontend/src/components/dashboard/SummaryCards.jsx
touch frontend/src/components/dashboard/RevenueChart.jsx

# AI Components
touch frontend/src/components/ai/AIChat.jsx
touch frontend/src/components/ai/RecommendationCard.jsx

# Layout
touch frontend/src/components/layout/Navbar.jsx
touch frontend/src/components/layout/Sidebar.jsx
touch frontend/src/components/layout/Layout.jsx

# Hooks
touch frontend/src/hooks/useAuth.js
touch frontend/src/hooks/useDashboard.js

# Context
touch frontend/src/context/AuthContext.jsx

# Services
touch frontend/src/services/api.js

# API
touch frontend/src/api/client.js

# Routes
touch frontend/src/routes/AppRoutes.jsx

# Utils
touch frontend/src/utils/helpers.js

# Constants
touch frontend/src/constants/index.js

# Frontend Root
touch frontend/package.json
touch frontend/vite.config.js
touch frontend/tailwind.config.js
touch frontend/postcss.config.js
touch frontend/.env

########################################
# Gitkeep files
########################################

touch backend/app/db/migrations/.gitkeep
touch frontend/public/.gitkeep

########################################

echo ""
echo "=========================================="
echo " Project structure created successfully!"
echo "=========================================="
echo ""
echo "Next Steps:"
echo "1. cd $PROJECT_NAME"
echo "2. code ."
echo "3. Initialize Git"
echo "4. Setup FastAPI"
echo "5. Setup React + Vite"
echo ""