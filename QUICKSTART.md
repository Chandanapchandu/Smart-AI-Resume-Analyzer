# 🎉 Quick Start: Deploy Your Smart Resume AI App

## 5-Minute Deploy to Streamlit Cloud

### Step 1: Prepare Your Code (2 min)
```bash
# 1. Copy secrets template
cp .streamlit/secrets.toml.example .streamlit/secrets.toml

# 2. Edit secrets with your API keys
nano .streamlit/secrets.toml
```

Add your keys:
- `GOOGLE_API_KEY` - Get from [Google AI Studio](https://aistudio.google.com/)
- `OPENROUTER_API_KEY` - Get from [OpenRouter](https://openrouter.io/)
- `DATABASE_URL` - Your database connection string (optional)
- `ADMIN_PASSWORD` - Create a password for admin dashboard

### Step 2: Push to GitHub (2 min)
```bash
# Add to .gitignore (never commit secrets!)
echo ".streamlit/secrets.toml" >> .gitignore

# Commit and push
git add .
git commit -m "Ready for Streamlit deployment"
git push origin main
```

### Step 3: Deploy (1 min)
1. Go to [share.streamlit.io](https://share.streamlit.io)
2. Sign in with GitHub
3. Click "New app"
4. Select this repository
5. Set **main file** to: `streamlit_app.py`
6. Click "Deploy"

### Step 4: Add Secrets to Cloud (Optional but Important)
1. After deployment, click the ⋯ menu (top right)
2. Click "Settings" → "Secrets"
3. Paste your secrets from `.streamlit/secrets.toml`
4. Click "Save"

✅ **Your app is live!** 🎉

---

## Local Development (Before Deployment)

```bash
# Install dependencies
pip install -r requirements.txt

# Run locally
streamlit run streamlit_app.py

# Open browser
# Your app will be at http://localhost:8501
```

---

## Features Already Included

✨ **Resume Analysis**
- ATS compatibility checking
- Keyword gap analysis
- Skills assessment

🎨 **Resume Builder**
- Multiple templates
- AI-powered suggestions
- Export to PDF/DOCX

🤖 **AI Optimization**
- Content enhancement
- Keyword recommendations
- Role-specific feedback

🎯 **Job Search**
- Find matching jobs
- Company insights
- Application tracking

📊 **Analytics Dashboard**
- Usage statistics
- Performance tracking
- Admin analytics

---

## Common Issues & Solutions

### ❌ "Module not found" Error
```bash
# Reinstall all dependencies
pip install -r requirements.txt --upgrade
```

### ❌ API Key Error
- Ensure secrets are added to Streamlit Cloud
- Wait 1-2 minutes after adding secrets
- Click "Always rerun" if needed

### ❌ PDF Upload Fails
- File size limit: 200MB per Streamlit Cloud
- Supported formats: PDF, DOCX

### ❌ Database Connection Error
- If using local SQLite, data resets with app refresh
- Use cloud database for persistence (recommended)

---

## Deployment Checklist

- [ ] All required API keys obtained
- [ ] `.streamlit/secrets.toml` created locally
- [ ] `.gitignore` updated with secrets.toml
- [ ] Code pushed to public GitHub repo
- [ ] Streamlit Cloud app created
- [ ] Secrets added to Streamlit Cloud
- [ ] App is live and working

---

## What's Next?

🚀 **Optimize Your App**
- Add error handling
- Implement caching for faster performance
- Monitor usage analytics

📈 **Scale Your App**
- Upgrade to Streamlit Cloud tier (Pro/Business)
- Add custom domain
- Enable team collaboration

📚 **Learn More**
- [Streamlit Docs](https://docs.streamlit.io)
- [Deployment Guide](STREAMLIT_DEPLOYMENT.md)
- [AI Models Info](AI_MODELS.md)

---

**Questions?** Check [STREAMLIT_DEPLOYMENT.md](STREAMLIT_DEPLOYMENT.md) for detailed options!
