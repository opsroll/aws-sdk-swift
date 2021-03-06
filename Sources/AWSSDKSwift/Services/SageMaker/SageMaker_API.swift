// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Definition of the public APIs exposed by SageMaker
*/
public struct SageMaker {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "SageMaker",
            service: "sagemaker",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-07-24",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [SageMakerError.self]
        )
    }

    ///  Returns a URL that you can use to connect to the Juypter server from a notebook instance. In the Amazon SageMaker console, when you choose Open next to a notebook instance, Amazon SageMaker opens a new tab showing the Jupyter server home page from the notebook instance. The console uses this API to get the URL and show the page. 
    public func createPresignedNotebookInstanceUrl(_ input: CreatePresignedNotebookInstanceUrlInput) throws -> CreatePresignedNotebookInstanceUrlOutput {
        return try client.send(operation: "CreatePresignedNotebookInstanceUrl", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a model. The DeleteModel API deletes only the model entry that was created in Amazon SageMaker when you called the CreateModel API. It does not delete model artifacts, inference code, or the IAM role that you specified when creating the model. 
    public func deleteModel(_ input: DeleteModelInput) throws {
        _ = try client.send(operation: "DeleteModel", path: "/", httpMethod: "POST", input: input)
    }

    ///  Launches an ML compute instance with the latest version of the libraries and attaches your ML storage volume. After configuring the notebook instance, Amazon SageMaker sets the notebook instance status to InService. A notebook instance's status must be InService (is this same as "Running" in the console?) before you can connect to your Jupyter notebook. 
    public func startNotebookInstance(_ input: StartNotebookInstanceInput) throws {
        _ = try client.send(operation: "StartNotebookInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a notebook instance. NotebookInstance updates include upgrading or downgrading the ML compute instance used for your notebook instance to accommodate changes in your workload requirements. You can also update the VPC security groups.
    public func updateNotebookInstance(_ input: UpdateNotebookInstanceInput) throws -> UpdateNotebookInstanceOutput {
        return try client.send(operation: "UpdateNotebookInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a notebook instance.
    public func describeNotebookInstance(_ input: DescribeNotebookInstanceInput) throws -> DescribeNotebookInstanceOutput {
        return try client.send(operation: "DescribeNotebookInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the tags for the specified Amazon SageMaker resource.
    public func listTags(_ input: ListTagsInput) throws -> ListTagsOutput {
        return try client.send(operation: "ListTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the description of an endpoint configuration created using the CreateEndpointConfig API.
    public func describeEndpointConfig(_ input: DescribeEndpointConfigInput) throws -> DescribeEndpointConfigOutput {
        return try client.send(operation: "DescribeEndpointConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists models created with the CreateModel API.
    public func listModels(_ input: ListModelsInput) throws -> ListModelsOutput {
        return try client.send(operation: "ListModels", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists training jobs.
    public func listTrainingJobs(_ input: ListTrainingJobsRequest) throws -> ListTrainingJobsResponse {
        return try client.send(operation: "ListTrainingJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///   Deletes an Amazon SageMaker notebook instance. Before you can delete a notebook instance, you must call the StopNotebookInstance API.   When you delete a notebook instance, you lose all of your data. Amazon SageMaker removes the ML compute instance, and deletes the ML storage volume and the network interface associated with the notebook instance.  
    public func deleteNotebookInstance(_ input: DeleteNotebookInstanceInput) throws {
        _ = try client.send(operation: "DeleteNotebookInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a training job. To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal, which delays job termination for 120 seconds. Algorithms might use this 120-second window to save the model artifacts, so the results of the training is not lost.  Training algorithms provided by Amazon SageMaker save the intermediate results of a model training job. This intermediate data is a valid model artifact. You can use the model artifacts that are saved when Amazon SageMaker stops a training job to create a model.  When it receives a StopTrainingJob request, Amazon SageMaker changes the status of the job to Stopping. After Amazon SageMaker stops the job, it sets the status to Stopped.
    public func stopTrainingJob(_ input: StopTrainingJobRequest) throws {
        _ = try client.send(operation: "StopTrainingJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a training job.
    public func describeTrainingJob(_ input: DescribeTrainingJobRequest) throws -> DescribeTrainingJobResponse {
        return try client.send(operation: "DescribeTrainingJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an Amazon SageMaker notebook instance. A notebook instance is an ML compute instance running on a Jupyter notebook.  In a CreateNotebookInstance request, you specify the type of ML compute instance that you want to run. Amazon SageMaker launches the instance, installs common libraries that you can use to explore datasets for model training, and attaches an ML storage volume to the notebook instance.  Amazon SageMaker also provides a set of example notebooks. Each notebook demonstrates how to use Amazon SageMaker with a specific an algorithm or with a machine learning framework.  After receiving the request, Amazon SageMaker does the following:   Creates a network interface in the Amazon SageMaker VPC.   (Option) If you specified SubnetId, creates a network interface in your own VPC, which is inferred from the subnet ID that you provide in the input. When creating this network interface, Amazon SageMaker attaches the security group that you specified in the request to the network interface that it creates in your VPC.   Launches an EC2 instance of the type specified in the request in the Amazon SageMaker VPC. If you specified SubnetId of your VPC, Amazon SageMaker specifies both network interfaces when launching this instance. This enables inbound traffic from your own VPC to the notebook instance, assuming that the security groups allow it.   After creating the notebook instance, Amazon SageMaker returns its Amazon Resource Name (ARN). After Amazon SageMaker creates the notebook instance, you can connect to the Jupyter server and work in Jupyter notebooks. For example, you can write code to explore a dataset that you can use for model training, train a model, host models by creating Amazon SageMaker endpoints, and validate hosted models.  For more information, see How It Works. 
    public func createNotebookInstance(_ input: CreateNotebookInstanceInput) throws -> CreateNotebookInstanceOutput {
        return try client.send(operation: "CreateNotebookInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///   Starts a model training job. After training completes, Amazon SageMaker saves the resulting model artifacts to an Amazon S3 location that you specify.  If you choose to host your model using Amazon SageMaker hosting services, you can use the resulting model artifacts as part of the model. You can also use the artifacts in a deep learning service other than Amazon SageMaker, provided that you know how to use them for inferences.  In the request body, you provide the following:     AlgorithmSpecification - Identifies the training algorithm to use.     HyperParameters - Specify these algorithm-specific parameters to influence the quality of the final model. For a list of hyperparameters for each training algorithm provided by Amazon SageMaker, see Algorithms.     InputDataConfig - Describes the training dataset and the Amazon S3 location where it is stored.    OutputDataConfig - Identifies the Amazon S3 location where you want Amazon SageMaker to save the results of model training.      ResourceConfig - Identifies the resources, ML compute instances, and ML storage volumes to deploy for model training. In distributed training, you specify more than one instance.     RoleARN - The Amazon Resource Number (ARN) that Amazon SageMaker assumes to perform tasks on your behalf during model training. You must grant this role the necessary permissions so that Amazon SageMaker can successfully complete model training.     StoppingCondition - Sets a duration for training. Use this parameter to cap model training costs.     For more information about Amazon SageMaker, see How It Works. 
    public func createTrainingJob(_ input: CreateTrainingJobRequest) throws -> CreateTrainingJobResponse {
        return try client.send(operation: "CreateTrainingJob", path: "/", httpMethod: "POST", input: input)
    }

    ///   Deploys the new EndpointConfig specified in the request, switches to using newly created endpoint, and then deletes resources provisioned for the endpoint using the previous EndpointConfig (there is no availability loss).  When Amazon SageMaker receives the request, it sets the endpoint status to Updating. After updating the endpoint, it sets the status to InService. To check the status of an endpoint, use the DescribeEndpoint API. 
    public func updateEndpoint(_ input: UpdateEndpointInput) throws -> UpdateEndpointOutput {
        return try client.send(operation: "UpdateEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists endpoint configurations.
    public func listEndpointConfigs(_ input: ListEndpointConfigsInput) throws -> ListEndpointConfigsOutput {
        return try client.send(operation: "ListEndpointConfigs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates variant weight, capacity, or both of one or more variants associated with an endpoint. This operation updates weight, capacity, or both for the previously provisioned endpoint. When it receives the request, Amazon SageMaker sets the endpoint status to Updating. After updating the endpoint, it sets the status to InService. To check the status of an endpoint, use the DescribeEndpoint API. 
    public func updateEndpointWeightsAndCapacities(_ input: UpdateEndpointWeightsAndCapacitiesInput) throws -> UpdateEndpointWeightsAndCapacitiesOutput {
        return try client.send(operation: "UpdateEndpointWeightsAndCapacities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a model in Amazon SageMaker. In the request, you name the model and describe one or more containers. For each container, you specify the docker image containing inference code, artifacts (from prior training), and custom environment map that the inference code uses when you deploy the model into production.  Use this API to create a model only if you want to use Amazon SageMaker hosting services. To host your model, you create an endpoint configuration with the CreateEndpointConfig API, and then create an endpoint with the CreateEndpoint API.  Amazon SageMaker then deploys all of the containers that you defined for the model in the hosting environment.  In the CreateModel request, you must define at least one container with the PrimaryContainer parameter. You can optionally specify additional containers with the SupplementalContainers parameter.  In the request, you also provide an IAM role that Amazon SageMaker can assume to access model artifacts and docker image for deployment on ML compute hosting instances. In addition, you also use the IAM role to manage permissions the inference code needs. For example, if the inference code access any other AWS resources, you grant necessary permissions via this role.
    public func createModel(_ input: CreateModelInput) throws -> CreateModelOutput {
        return try client.send(operation: "CreateModel", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or overwrites one or more tags for the specified Amazon SageMaker resource. You can add tags to notebook instances, training jobs, models, endpoint configurations, and endpoints.  Each tag consists of a key and an optional value. Tag keys must be unique per resource. For more information about tags, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide. 
    public func addTags(_ input: AddTagsInput) throws -> AddTagsOutput {
        return try client.send(operation: "AddTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an endpoint configuration that Amazon SageMaker hosting services uses to deploy models. In the configuration, you identify one or more models, created using the CreateModel API, to deploy and the resources that you want Amazon SageMaker to provision. Then you call the CreateEndpoint API.    Use this API only if you want to use Amazon SageMaker hosting services to deploy models into production.   In the request, you define one or more ProductionVariants, each of which identifies a model. Each ProductionVariant parameter also describes the resources that you want Amazon SageMaker to provision. This includes the number and type of ML compute instances to deploy.  If you are hosting multiple models, you also assign a VariantWeight to specify how much traffic you want to allocate to each model. For example, suppose that you want to host two models, A and B, and you assign traffic weight 2 for model A and 1 for model B. Amazon SageMaker distributes two-thirds of the traffic to Model A, and one-third to model B. 
    public func createEndpointConfig(_ input: CreateEndpointConfigInput) throws -> CreateEndpointConfigOutput {
        return try client.send(operation: "CreateEndpointConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the description of an endpoint.
    public func describeEndpoint(_ input: DescribeEndpointInput) throws -> DescribeEndpointOutput {
        return try client.send(operation: "DescribeEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes a model that you created using the CreateModel API.
    public func describeModel(_ input: DescribeModelInput) throws -> DescribeModelOutput {
        return try client.send(operation: "DescribeModel", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists endpoints.
    public func listEndpoints(_ input: ListEndpointsInput) throws -> ListEndpointsOutput {
        return try client.send(operation: "ListEndpoints", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an endpoint. Amazon SageMaker frees up all of the resources that were deployed when the endpoint was created. 
    public func deleteEndpoint(_ input: DeleteEndpointInput) throws {
        _ = try client.send(operation: "DeleteEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an endpoint configuration. The DeleteEndpoingConfig API deletes only the specified configuration. It does not delete endpoints created using the configuration. 
    public func deleteEndpointConfig(_ input: DeleteEndpointConfigInput) throws {
        _ = try client.send(operation: "DeleteEndpointConfig", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified tags from an Amazon SageMaker resource. To list a resource's tags, use the ListTags API. 
    public func deleteTags(_ input: DeleteTagsInput) throws -> DeleteTagsOutput {
        return try client.send(operation: "DeleteTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an endpoint using the endpoint configuration specified in the request. Amazon SageMaker uses the endpoint to provision resources and deploy models. You create the endpoint configuration with the CreateEndpointConfig API.    Use this API only for hosting models using Amazon SageMaker hosting services.   The endpoint name must be unique within an AWS Region in your AWS account.  When it receives the request, Amazon SageMaker creates the endpoint, launches the resources (ML compute instances), and deploys the model(s) on them.  When Amazon SageMaker receives the request, it sets the endpoint status to Creating. After it creates the endpoint, it sets the status to InService. Amazon SageMaker can then process incoming requests for inferences. To check the status of an endpoint, use the DescribeEndpoint API. For an example, see Exercise 1: Using the K-Means Algorithm Provided by Amazon SageMaker. 
    public func createEndpoint(_ input: CreateEndpointInput) throws -> CreateEndpointOutput {
        return try client.send(operation: "CreateEndpoint", path: "/", httpMethod: "POST", input: input)
    }

    ///  Terminates the ML compute instance. Before terminating the instance, Amazon SageMaker disconnects the ML storage volume from it. Amazon SageMaker preserves the ML storage volume.  To access data on the ML storage volume for a notebook instance that has been terminated, call the StartNotebookInstance API. StartNotebookInstance launches another ML compute instance, configures it, and attaches the preserved ML storage volume so you can continue your work. 
    public func stopNotebookInstance(_ input: StopNotebookInstanceInput) throws {
        _ = try client.send(operation: "StopNotebookInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of the Amazon SageMaker notebook instances in the requester's account in an AWS Region. 
    public func listNotebookInstances(_ input: ListNotebookInstancesInput) throws -> ListNotebookInstancesOutput {
        return try client.send(operation: "ListNotebookInstances", path: "/", httpMethod: "POST", input: input)
    }


}