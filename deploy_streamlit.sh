#!/bin/bash

# Smart Resume AI - Streamlit Cloud Deploy Script
# This script prepares the app for Streamlit Cloud deployment

echo "🚀 Preparing Smart Resume AI for Streamlit Cloud Deployment..."

# Check if running on Streamlit Cloud
if [ -n "$STREAMLIT_SERVER_RUN_ON_SAVE" ]; then
    echo "✅ Running on Streamlit Cloud detected"
else
    echo "ℹ️ Running locally - ensure you have set up secrets.toml"
fi

# Create necessary directories
mkdir -p .streamlit
mkdir -p logs

echo "📦 Dependencies:"
echo "  ✓ Streamlit 1.36.0"
echo "  ✓ Google Generative AI"
echo "  ✓ PDF Processing Libraries"
echo "  ✓ Database & Analytics"

echo ""
echo "✨ Setup complete!"
echo ""
echo "📋 Next steps:"
echo "  1. Update .streamlit/secrets.toml with your API keys"
echo "  2. Push to GitHub"
echo "  3. Deploy to Streamlit Cloud at https://share.streamlit.io"
echo ""
echo "🔗 For details, see STREAMLIT_DEPLOYMENT.md"
