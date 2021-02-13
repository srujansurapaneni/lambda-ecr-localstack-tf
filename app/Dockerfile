FROM amazon/aws-lambda-nodejs:12
COPY packag*.json lambda.js ./
RUN npm install
CMD ["lambda.lambdaHandler"]
