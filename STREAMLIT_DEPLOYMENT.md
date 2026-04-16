# 🚀 Streamlit Deployment Guide

## Quick Deployment Steps

### Option 1: Deploy to Streamlit Cloud (Recommended)

**1. Prepare Your Repository:**
- Push your code to GitHub (public repository)
- Ensure all sensitive data is in `.streamlit/secrets.toml` (not committed)

**2. Create Streamlit Account:**
- Visit [share.streamlit.io](https://share.streamlit.io)
- Sign up with GitHub
- Authorize Streamlit to access your repositories

**3. Deploy Your App:**
1. Click "New app"
2. Select your GitHub repository
3. Choose the branch (usually `main`)
4. Set main file path: `streamlit_app.py`
5. Click "Deploy"

**4. Configure Secrets:**
1. Go to your app's settings (gear icon)
2. Click "Secrets"
3. Add your API keys and credentials:
   ```
   GOOGLE_API_KEY = "your_key_here"
   OPENROUTER_API_KEY = "your_key_here"
   DATABASE_URL = "your_database_url"
   LINKEDIN_EMAIL = "your_email"
   LINKEDIN_PASSWORD = "your_password"
   ADMIN_PASSWORD = "your_password"
   ```
4. Click "Save"

**5. Access Your App:**
- Your app will be live at: `https://[username]-[appname].streamlit.app`

---

### Option 2: Deploy to Heroku

**Prerequisites:**
- Heroku account
- Heroku CLI installed

**Steps:**

1. **Create Procfile:**
```bash
echo "web: streamlit run streamlit_app.py --server.port=\$PORT --server.address=0.0.0.0" > Procfile
```

2. **Create .gitignore:**
```
.streamlit/secrets.toml
__pycache__/
*.pyc
.env
```

3. **Initialize Git & Deploy:**
```bash
git init
git add .
git commit -m "Initial commit"
heroku login
heroku create [your-app-name]
heroku config:set GOOGLE_API_KEY="your_key"
# Add other secrets as needed
git push heroku main
```

---

### Option 3: Deploy to Docker

**1. Build Docker Image:**
```bash
docker build -t smart-resume-analyzer .
```

**2. Run Locally:**
```bash
docker run -p 8501:8501 \
  -e GOOGLE_API_KEY="your_key" \
  smart-resume-analyzer
```

**3. Push to Docker Hub:**
```bash
docker tag smart-resume-analyzer username/smart-resume-analyzer
docker push username/smart-resume-analyzer
```

**4. Deploy to Cloud (AWS, GCP, Azure, etc.):**
- Use your cloud provider's container deployment service

---

## Environment Variables Setup

Create a `.streamlit/secrets.toml` file (not committed to git):

```toml
GOOGLE_API_KEY = "your_google_generative_ai_key"
OPENROUTER_API_KEY = "your_openrouter_api_key"
DATABASE_URL = "your_database_connection_string"
LINKEDIN_EMAIL = "your_linkedin_email"
LINKEDIN_PASSWORD = "your_linkedin_password"
ADMIN_PASSWORD = "your_admin_dashboard_password"
```

---

## Troubleshooting

### Common Issues:

**1. "Module not found" error**
```bash
# Ensure all dependencies are in requirements.txt
pip freeze > requirements.txt
```

**2. Library crashes (like ChromeDriver)**
- Streamlit Cloud has limitations with Selenium/WebDriver
- Alternative: Use third-party APIs for LinkedIn scraping
- Check [Streamlit limitations](https://docs.streamlit.io/streamlit-cloud/get-started/deploy-an-app/connect-to-data-sources/secrets-management)

**3. File or database not found**
- Use absolute paths
- Store files in temp directories
- Use cloud databases instead of local SQLite

**4. API Key not recognized**
- Check `.streamlit/secrets.toml` is correctly formatted
- Ensure secrets are deployed to Streamlit Cloud
- Restart the app after adding secrets

---

## Performance Optimization Tips

1. **Cache expensive computations:**
```python
@st.cache_data
def expensive_function():
    # Your code here
    return result
```

2. **Cache external API calls:**
```python
@st.cache_data(ttl=3600)
def fetch_data():
    return requests.get(url).json()
```

3. **Use `st.cache_resource` for ML models:**
```python
@st.cache_resource
def load_model():
    return model = load_something()
```

---

## Recommended Deployment Platforms:

| Platform | Cost | Features | Best For |
|----------|------|----------|----------|
| **Streamlit Cloud** | Free tier available | Easy deployment, built for Streamlit | Quick deployment |
| **Heroku** | Free tier discontinued | Flexible, custom configs | Custom requirements |
| **AWS** | Pay-as-you-go | Scalable, powerful | High traffic |
| **Google Cloud** | Free tier available | Integrated services | Firebase users |
| **DigitalOcean** | $5/month+ | Simple VPS | Budget-friendly |
| **Render** | Free tier available | Easy deployment, good uptime | Hobby projects |

---

## Post-Deployment Monitoring

1. **Check logs:** Dashboard → Logs tab
2. **Monitor performance:** Check app responsiveness
3. **Review analytics:** Track user engagement
4. **Handle errors gracefully:** Add error reporting
5. **Plan upgrades:** Scale as needed

---

## Documentation Links:
- [Streamlit Cloud Docs](https://docs.streamlit.io/streamlit-cloud)
- [Environment Secrets Management](https://docs.streamlit.io/streamlit-cloud/get-started/deploy-an-app/connect-to-data-sources/secrets-management)
- [Streamlit Configuration](https://docs.streamlit.io/library/advanced-features/configuration)
- [App Cache Documentation](https://docs.streamlit.io/library/advanced-features/caching)

---

**Last Updated:** April 2026  
**Status:** Ready for Production Deployment
