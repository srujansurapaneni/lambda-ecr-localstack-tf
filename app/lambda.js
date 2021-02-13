exports.lambdaHandler = async (event) => {
    console.log("this got executed");
    const response = {
        statusCode: 200,
        body: "this is the response"
    };
    return response;
}
