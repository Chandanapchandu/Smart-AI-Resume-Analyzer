#!/bin/bash

# Smart Resume AI - Local Streamlit Development
# Run this to start the app locally for development

if [ ! -d ".streamlit" ]; then
    echo "Creating .streamlit directory..."
    mkdir -p .streamlit
fi

if [ ! -f ".streamlit/secrets.toml" ]; then
    echo "⚠️  No secrets.toml found!"
    echo "📝 Copy .streamlit/secrets.toml.example and rename it to secrets.toml"
    echo "   Then fill in your API keys"
    exit 1
fi

echo "🚀 Starting Smart Resume AI locally..."
echo ""
echo "📱 The app will open at: http://localhost:8501"
echo ""
echo "💡 Press Ctrl+C to stop the server"
echo ""

streamlit run streamlit_app.py
