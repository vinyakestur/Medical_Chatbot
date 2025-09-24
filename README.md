# Build-a-Complete-Medical-Chatbot-with-LLMs-LangChain-Pinecone-Flask-AWS

# How to run?
### STEPS:

Clone the repository

```bash
git clonehttps://github.com/entbappy/Build-a-Complete-Medical-Chatbot-with-LLMs-LangChain-Pinecone-Flask-AWS.git
```
### STEP 01- Create a conda environment after opening the repository

```bash
conda create -n medibot python=3.10 -y
```

```bash
conda activate medibot
```


### STEP 02- install the requirements
```bash
pip install -r requirements.txt
```

### STEP 02.1- Install additional dependencies for Anthropic
```bash
pip install anthropic langchain-anthropic
```

**Note:** The updated `requirements.txt` now includes all necessary dependencies, so you can simply run:
```bash
pip install -r requirements.txt
```


### Create a `.env` file in the root directory and add your Pinecone & Anthropic credentials as follows:

1. **Copy the example file:**
```bash
cp .env.example .env
```

2. **Edit the `.env` file with your actual API keys:**
```ini
PINECONE_API_KEY = "your_actual_pinecone_api_key"
ANTHROPIC_API_KEY = "your_actual_anthropic_api_key"
LANGSMITH_API_KEY = "your_actual_langsmith_api_key"
TAVILY_API_KEY = "your_actual_tavily_api_key"
```


```bash
# run the following command to store embeddings to pinecone
python store_index.py
```

```bash
# Finally run the following command
python app.py
```

Now,
```bash
open up localhost:8080
```


### Techstack Used:

- Python
- LangChain
- Flask
- Anthropic Claude (Claude-3.5-Sonnet)
- Pinecone
- HuggingFace Embeddings

## Recent Updates

This project has been updated to use **Anthropic's Claude** instead of OpenAI's GPT models:

- **Model**: Claude-3.5-Sonnet (claude-3-5-sonnet-20241022)
- **API**: Anthropic API
- **Benefits**: Enhanced reasoning capabilities and better medical knowledge processing

### Key Changes Made:
1. Replaced `ChatOpenAI` with `ChatAnthropic` in `app.py`
2. Updated environment variables from `OPENAI_API_KEY` to `ANTHROPIC_API_KEY`
3. Added required dependencies: `anthropic` and `langchain-anthropic`
4. Updated both `app.py` and `store_index.py` to use Anthropic API



# AWS-CICD-Deployment-with-Github-Actions

## 1. Login to AWS console.

## 2. Create IAM user for deployment

	#with specific access

	1. EC2 access : It is virtual machine

	2. ECR: Elastic Container registry to save your docker image in aws


	#Description: About the deployment

	1. Build docker image of the source code

	2. Push your docker image to ECR

	3. Launch Your EC2 

	4. Pull Your image from ECR in EC2

	5. Lauch your docker image in EC2

	#Policy:

	1. AmazonEC2ContainerRegistryFullAccess

	2. AmazonEC2FullAccess

	
## 3. Create ECR repo to store/save docker image
    - Save the URI: 315865595366.dkr.ecr.us-east-1.amazonaws.com/medicalbot

	
## 4. Create EC2 machine (Ubuntu) 

## 5. Open EC2 and Install docker in EC2 Machine:
	
	
	#optinal

	sudo apt-get update -y

	sudo apt-get upgrade
	
	#required

	curl -fsSL https://get.docker.com -o get-docker.sh

	sudo sh get-docker.sh

	sudo usermod -aG docker ubuntu

	newgrp docker
	
# 6. Configure EC2 as self-hosted runner:
    setting>actions>runner>new self hosted runner> choose os> then run command one by one


# 7. Setup github secrets:

   - AWS_ACCESS_KEY_ID
   - AWS_SECRET_ACCESS_KEY
   - AWS_DEFAULT_REGION
   - ECR_REPO
   - PINECONE_API_KEY
   - ANTHROPIC_API_KEY
