## Module AWS.SQS.Types

#### `options`

``` purescript
options :: Options
```

#### `AWSAccountIdList`

``` purescript
newtype AWSAccountIdList
  = AWSAccountIdList (Array String)
```

##### Instances
``` purescript
Newtype AWSAccountIdList _
Generic AWSAccountIdList _
Show AWSAccountIdList
Decode AWSAccountIdList
Encode AWSAccountIdList
```

#### `ActionNameList`

``` purescript
newtype ActionNameList
  = ActionNameList (Array String)
```

##### Instances
``` purescript
Newtype ActionNameList _
Generic ActionNameList _
Show ActionNameList
Decode ActionNameList
Encode ActionNameList
```

#### `AddPermissionRequest`

``` purescript
newtype AddPermissionRequest
  = AddPermissionRequest { "QueueUrl" :: String, "Label" :: String, "AWSAccountIds" :: AWSAccountIdList, "Actions" :: ActionNameList }
```

<p/>

##### Instances
``` purescript
Newtype AddPermissionRequest _
Generic AddPermissionRequest _
Show AddPermissionRequest
Decode AddPermissionRequest
Encode AddPermissionRequest
```

#### `newAddPermissionRequest`

``` purescript
newAddPermissionRequest :: AWSAccountIdList -> ActionNameList -> String -> String -> AddPermissionRequest
```

Constructs AddPermissionRequest from required parameters

#### `newAddPermissionRequest'`

``` purescript
newAddPermissionRequest' :: AWSAccountIdList -> ActionNameList -> String -> String -> ({ "QueueUrl" :: String, "Label" :: String, "AWSAccountIds" :: AWSAccountIdList, "Actions" :: ActionNameList } -> { "QueueUrl" :: String, "Label" :: String, "AWSAccountIds" :: AWSAccountIdList, "Actions" :: ActionNameList }) -> AddPermissionRequest
```

Constructs AddPermissionRequest's fields from required parameters

#### `AttributeNameList`

``` purescript
newtype AttributeNameList
  = AttributeNameList (Array QueueAttributeName)
```

##### Instances
``` purescript
Newtype AttributeNameList _
Generic AttributeNameList _
Show AttributeNameList
Decode AttributeNameList
Encode AttributeNameList
```

#### `BatchEntryIdsNotDistinct`

``` purescript
newtype BatchEntryIdsNotDistinct
  = BatchEntryIdsNotDistinct NoArguments
```

<p>Two or more batch entries in the request have the same <code>Id</code>.</p>

##### Instances
``` purescript
Newtype BatchEntryIdsNotDistinct _
Generic BatchEntryIdsNotDistinct _
Show BatchEntryIdsNotDistinct
Decode BatchEntryIdsNotDistinct
Encode BatchEntryIdsNotDistinct
```

#### `BatchRequestTooLong`

``` purescript
newtype BatchRequestTooLong
  = BatchRequestTooLong NoArguments
```

<p>The length of all the messages put together is more than the limit.</p>

##### Instances
``` purescript
Newtype BatchRequestTooLong _
Generic BatchRequestTooLong _
Show BatchRequestTooLong
Decode BatchRequestTooLong
Encode BatchRequestTooLong
```

#### `BatchResultErrorEntry`

``` purescript
newtype BatchResultErrorEntry
  = BatchResultErrorEntry { "Id" :: String, "SenderFault" :: Boolean, "Code" :: String, "Message" :: Maybe (String) }
```

<p>This is used in the responses of batch API to give a detailed description of the result of an action on each entry in the request.</p>

##### Instances
``` purescript
Newtype BatchResultErrorEntry _
Generic BatchResultErrorEntry _
Show BatchResultErrorEntry
Decode BatchResultErrorEntry
Encode BatchResultErrorEntry
```

#### `newBatchResultErrorEntry`

``` purescript
newBatchResultErrorEntry :: String -> String -> Boolean -> BatchResultErrorEntry
```

Constructs BatchResultErrorEntry from required parameters

#### `newBatchResultErrorEntry'`

``` purescript
newBatchResultErrorEntry' :: String -> String -> Boolean -> ({ "Id" :: String, "SenderFault" :: Boolean, "Code" :: String, "Message" :: Maybe (String) } -> { "Id" :: String, "SenderFault" :: Boolean, "Code" :: String, "Message" :: Maybe (String) }) -> BatchResultErrorEntry
```

Constructs BatchResultErrorEntry's fields from required parameters

#### `BatchResultErrorEntryList`

``` purescript
newtype BatchResultErrorEntryList
  = BatchResultErrorEntryList (Array BatchResultErrorEntry)
```

##### Instances
``` purescript
Newtype BatchResultErrorEntryList _
Generic BatchResultErrorEntryList _
Show BatchResultErrorEntryList
Decode BatchResultErrorEntryList
Encode BatchResultErrorEntryList
```

#### `Binary`

``` purescript
newtype Binary
  = Binary String
```

##### Instances
``` purescript
Newtype Binary _
Generic Binary _
Show Binary
Decode Binary
Encode Binary
```

#### `BinaryList`

``` purescript
newtype BinaryList
  = BinaryList (Array Binary)
```

##### Instances
``` purescript
Newtype BinaryList _
Generic BinaryList _
Show BinaryList
Decode BinaryList
Encode BinaryList
```

#### `ChangeMessageVisibilityBatchRequest`

``` purescript
newtype ChangeMessageVisibilityBatchRequest
  = ChangeMessageVisibilityBatchRequest { "QueueUrl" :: String, "Entries" :: ChangeMessageVisibilityBatchRequestEntryList }
```

<p/>

##### Instances
``` purescript
Newtype ChangeMessageVisibilityBatchRequest _
Generic ChangeMessageVisibilityBatchRequest _
Show ChangeMessageVisibilityBatchRequest
Decode ChangeMessageVisibilityBatchRequest
Encode ChangeMessageVisibilityBatchRequest
```

#### `newChangeMessageVisibilityBatchRequest`

``` purescript
newChangeMessageVisibilityBatchRequest :: ChangeMessageVisibilityBatchRequestEntryList -> String -> ChangeMessageVisibilityBatchRequest
```

Constructs ChangeMessageVisibilityBatchRequest from required parameters

#### `newChangeMessageVisibilityBatchRequest'`

``` purescript
newChangeMessageVisibilityBatchRequest' :: ChangeMessageVisibilityBatchRequestEntryList -> String -> ({ "QueueUrl" :: String, "Entries" :: ChangeMessageVisibilityBatchRequestEntryList } -> { "QueueUrl" :: String, "Entries" :: ChangeMessageVisibilityBatchRequestEntryList }) -> ChangeMessageVisibilityBatchRequest
```

Constructs ChangeMessageVisibilityBatchRequest's fields from required parameters

#### `ChangeMessageVisibilityBatchRequestEntry`

``` purescript
newtype ChangeMessageVisibilityBatchRequestEntry
  = ChangeMessageVisibilityBatchRequestEntry { "Id" :: String, "ReceiptHandle" :: String, "VisibilityTimeout" :: Maybe (Int) }
```

<p>Encloses a receipt handle and an entry id for each message in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p> <important> <p>All of the following list parameters must be prefixed with <code>ChangeMessageVisibilityBatchRequestEntry.n</code>, where <code>n</code> is an integer value starting with <code>1</code>. For example, a parameter list for this action might look like this:</p> </important> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2</code> </p> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=&lt;replaceable&gt;Your_Receipt_Handle&lt;/replaceable&gt;</code> </p> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45</code> </p>

##### Instances
``` purescript
Newtype ChangeMessageVisibilityBatchRequestEntry _
Generic ChangeMessageVisibilityBatchRequestEntry _
Show ChangeMessageVisibilityBatchRequestEntry
Decode ChangeMessageVisibilityBatchRequestEntry
Encode ChangeMessageVisibilityBatchRequestEntry
```

#### `newChangeMessageVisibilityBatchRequestEntry`

``` purescript
newChangeMessageVisibilityBatchRequestEntry :: String -> String -> ChangeMessageVisibilityBatchRequestEntry
```

Constructs ChangeMessageVisibilityBatchRequestEntry from required parameters

#### `newChangeMessageVisibilityBatchRequestEntry'`

``` purescript
newChangeMessageVisibilityBatchRequestEntry' :: String -> String -> ({ "Id" :: String, "ReceiptHandle" :: String, "VisibilityTimeout" :: Maybe (Int) } -> { "Id" :: String, "ReceiptHandle" :: String, "VisibilityTimeout" :: Maybe (Int) }) -> ChangeMessageVisibilityBatchRequestEntry
```

Constructs ChangeMessageVisibilityBatchRequestEntry's fields from required parameters

#### `ChangeMessageVisibilityBatchRequestEntryList`

``` purescript
newtype ChangeMessageVisibilityBatchRequestEntryList
  = ChangeMessageVisibilityBatchRequestEntryList (Array ChangeMessageVisibilityBatchRequestEntry)
```

##### Instances
``` purescript
Newtype ChangeMessageVisibilityBatchRequestEntryList _
Generic ChangeMessageVisibilityBatchRequestEntryList _
Show ChangeMessageVisibilityBatchRequestEntryList
Decode ChangeMessageVisibilityBatchRequestEntryList
Encode ChangeMessageVisibilityBatchRequestEntryList
```

#### `ChangeMessageVisibilityBatchResult`

``` purescript
newtype ChangeMessageVisibilityBatchResult
  = ChangeMessageVisibilityBatchResult { "Successful" :: ChangeMessageVisibilityBatchResultEntryList, "Failed" :: BatchResultErrorEntryList }
```

<p>For each message in the batch, the response contains a <code> <a>ChangeMessageVisibilityBatchResultEntry</a> </code> tag if the message succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.</p>

##### Instances
``` purescript
Newtype ChangeMessageVisibilityBatchResult _
Generic ChangeMessageVisibilityBatchResult _
Show ChangeMessageVisibilityBatchResult
Decode ChangeMessageVisibilityBatchResult
Encode ChangeMessageVisibilityBatchResult
```

#### `newChangeMessageVisibilityBatchResult`

``` purescript
newChangeMessageVisibilityBatchResult :: BatchResultErrorEntryList -> ChangeMessageVisibilityBatchResultEntryList -> ChangeMessageVisibilityBatchResult
```

Constructs ChangeMessageVisibilityBatchResult from required parameters

#### `newChangeMessageVisibilityBatchResult'`

``` purescript
newChangeMessageVisibilityBatchResult' :: BatchResultErrorEntryList -> ChangeMessageVisibilityBatchResultEntryList -> ({ "Successful" :: ChangeMessageVisibilityBatchResultEntryList, "Failed" :: BatchResultErrorEntryList } -> { "Successful" :: ChangeMessageVisibilityBatchResultEntryList, "Failed" :: BatchResultErrorEntryList }) -> ChangeMessageVisibilityBatchResult
```

Constructs ChangeMessageVisibilityBatchResult's fields from required parameters

#### `ChangeMessageVisibilityBatchResultEntry`

``` purescript
newtype ChangeMessageVisibilityBatchResultEntry
  = ChangeMessageVisibilityBatchResultEntry { "Id" :: String }
```

<p>Encloses the <code>Id</code> of an entry in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p>

##### Instances
``` purescript
Newtype ChangeMessageVisibilityBatchResultEntry _
Generic ChangeMessageVisibilityBatchResultEntry _
Show ChangeMessageVisibilityBatchResultEntry
Decode ChangeMessageVisibilityBatchResultEntry
Encode ChangeMessageVisibilityBatchResultEntry
```

#### `newChangeMessageVisibilityBatchResultEntry`

``` purescript
newChangeMessageVisibilityBatchResultEntry :: String -> ChangeMessageVisibilityBatchResultEntry
```

Constructs ChangeMessageVisibilityBatchResultEntry from required parameters

#### `newChangeMessageVisibilityBatchResultEntry'`

``` purescript
newChangeMessageVisibilityBatchResultEntry' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> ChangeMessageVisibilityBatchResultEntry
```

Constructs ChangeMessageVisibilityBatchResultEntry's fields from required parameters

#### `ChangeMessageVisibilityBatchResultEntryList`

``` purescript
newtype ChangeMessageVisibilityBatchResultEntryList
  = ChangeMessageVisibilityBatchResultEntryList (Array ChangeMessageVisibilityBatchResultEntry)
```

##### Instances
``` purescript
Newtype ChangeMessageVisibilityBatchResultEntryList _
Generic ChangeMessageVisibilityBatchResultEntryList _
Show ChangeMessageVisibilityBatchResultEntryList
Decode ChangeMessageVisibilityBatchResultEntryList
Encode ChangeMessageVisibilityBatchResultEntryList
```

#### `ChangeMessageVisibilityRequest`

``` purescript
newtype ChangeMessageVisibilityRequest
  = ChangeMessageVisibilityRequest { "QueueUrl" :: String, "ReceiptHandle" :: String, "VisibilityTimeout" :: Int }
```

##### Instances
``` purescript
Newtype ChangeMessageVisibilityRequest _
Generic ChangeMessageVisibilityRequest _
Show ChangeMessageVisibilityRequest
Decode ChangeMessageVisibilityRequest
Encode ChangeMessageVisibilityRequest
```

#### `newChangeMessageVisibilityRequest`

``` purescript
newChangeMessageVisibilityRequest :: String -> String -> Int -> ChangeMessageVisibilityRequest
```

Constructs ChangeMessageVisibilityRequest from required parameters

#### `newChangeMessageVisibilityRequest'`

``` purescript
newChangeMessageVisibilityRequest' :: String -> String -> Int -> ({ "QueueUrl" :: String, "ReceiptHandle" :: String, "VisibilityTimeout" :: Int } -> { "QueueUrl" :: String, "ReceiptHandle" :: String, "VisibilityTimeout" :: Int }) -> ChangeMessageVisibilityRequest
```

Constructs ChangeMessageVisibilityRequest's fields from required parameters

#### `CreateQueueRequest`

``` purescript
newtype CreateQueueRequest
  = CreateQueueRequest { "QueueName" :: String, "Attributes" :: Maybe (QueueAttributeMap) }
```

<p/>

##### Instances
``` purescript
Newtype CreateQueueRequest _
Generic CreateQueueRequest _
Show CreateQueueRequest
Decode CreateQueueRequest
Encode CreateQueueRequest
```

#### `newCreateQueueRequest`

``` purescript
newCreateQueueRequest :: String -> CreateQueueRequest
```

Constructs CreateQueueRequest from required parameters

#### `newCreateQueueRequest'`

``` purescript
newCreateQueueRequest' :: String -> ({ "QueueName" :: String, "Attributes" :: Maybe (QueueAttributeMap) } -> { "QueueName" :: String, "Attributes" :: Maybe (QueueAttributeMap) }) -> CreateQueueRequest
```

Constructs CreateQueueRequest's fields from required parameters

#### `CreateQueueResult`

``` purescript
newtype CreateQueueResult
  = CreateQueueResult { "QueueUrl" :: Maybe (String) }
```

<p>Returns the <code>QueueUrl</code> attribute of the created queue.</p>

##### Instances
``` purescript
Newtype CreateQueueResult _
Generic CreateQueueResult _
Show CreateQueueResult
Decode CreateQueueResult
Encode CreateQueueResult
```

#### `newCreateQueueResult`

``` purescript
newCreateQueueResult :: CreateQueueResult
```

Constructs CreateQueueResult from required parameters

#### `newCreateQueueResult'`

``` purescript
newCreateQueueResult' :: ({ "QueueUrl" :: Maybe (String) } -> { "QueueUrl" :: Maybe (String) }) -> CreateQueueResult
```

Constructs CreateQueueResult's fields from required parameters

#### `DeleteMessageBatchRequest`

``` purescript
newtype DeleteMessageBatchRequest
  = DeleteMessageBatchRequest { "QueueUrl" :: String, "Entries" :: DeleteMessageBatchRequestEntryList }
```

<p/>

##### Instances
``` purescript
Newtype DeleteMessageBatchRequest _
Generic DeleteMessageBatchRequest _
Show DeleteMessageBatchRequest
Decode DeleteMessageBatchRequest
Encode DeleteMessageBatchRequest
```

#### `newDeleteMessageBatchRequest`

``` purescript
newDeleteMessageBatchRequest :: DeleteMessageBatchRequestEntryList -> String -> DeleteMessageBatchRequest
```

Constructs DeleteMessageBatchRequest from required parameters

#### `newDeleteMessageBatchRequest'`

``` purescript
newDeleteMessageBatchRequest' :: DeleteMessageBatchRequestEntryList -> String -> ({ "QueueUrl" :: String, "Entries" :: DeleteMessageBatchRequestEntryList } -> { "QueueUrl" :: String, "Entries" :: DeleteMessageBatchRequestEntryList }) -> DeleteMessageBatchRequest
```

Constructs DeleteMessageBatchRequest's fields from required parameters

#### `DeleteMessageBatchRequestEntry`

``` purescript
newtype DeleteMessageBatchRequestEntry
  = DeleteMessageBatchRequestEntry { "Id" :: String, "ReceiptHandle" :: String }
```

<p>Encloses a receipt handle and an identifier for it.</p>

##### Instances
``` purescript
Newtype DeleteMessageBatchRequestEntry _
Generic DeleteMessageBatchRequestEntry _
Show DeleteMessageBatchRequestEntry
Decode DeleteMessageBatchRequestEntry
Encode DeleteMessageBatchRequestEntry
```

#### `newDeleteMessageBatchRequestEntry`

``` purescript
newDeleteMessageBatchRequestEntry :: String -> String -> DeleteMessageBatchRequestEntry
```

Constructs DeleteMessageBatchRequestEntry from required parameters

#### `newDeleteMessageBatchRequestEntry'`

``` purescript
newDeleteMessageBatchRequestEntry' :: String -> String -> ({ "Id" :: String, "ReceiptHandle" :: String } -> { "Id" :: String, "ReceiptHandle" :: String }) -> DeleteMessageBatchRequestEntry
```

Constructs DeleteMessageBatchRequestEntry's fields from required parameters

#### `DeleteMessageBatchRequestEntryList`

``` purescript
newtype DeleteMessageBatchRequestEntryList
  = DeleteMessageBatchRequestEntryList (Array DeleteMessageBatchRequestEntry)
```

##### Instances
``` purescript
Newtype DeleteMessageBatchRequestEntryList _
Generic DeleteMessageBatchRequestEntryList _
Show DeleteMessageBatchRequestEntryList
Decode DeleteMessageBatchRequestEntryList
Encode DeleteMessageBatchRequestEntryList
```

#### `DeleteMessageBatchResult`

``` purescript
newtype DeleteMessageBatchResult
  = DeleteMessageBatchResult { "Successful" :: DeleteMessageBatchResultEntryList, "Failed" :: BatchResultErrorEntryList }
```

<p>For each message in the batch, the response contains a <code> <a>DeleteMessageBatchResultEntry</a> </code> tag if the message is deleted or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message can't be deleted.</p>

##### Instances
``` purescript
Newtype DeleteMessageBatchResult _
Generic DeleteMessageBatchResult _
Show DeleteMessageBatchResult
Decode DeleteMessageBatchResult
Encode DeleteMessageBatchResult
```

#### `newDeleteMessageBatchResult`

``` purescript
newDeleteMessageBatchResult :: BatchResultErrorEntryList -> DeleteMessageBatchResultEntryList -> DeleteMessageBatchResult
```

Constructs DeleteMessageBatchResult from required parameters

#### `newDeleteMessageBatchResult'`

``` purescript
newDeleteMessageBatchResult' :: BatchResultErrorEntryList -> DeleteMessageBatchResultEntryList -> ({ "Successful" :: DeleteMessageBatchResultEntryList, "Failed" :: BatchResultErrorEntryList } -> { "Successful" :: DeleteMessageBatchResultEntryList, "Failed" :: BatchResultErrorEntryList }) -> DeleteMessageBatchResult
```

Constructs DeleteMessageBatchResult's fields from required parameters

#### `DeleteMessageBatchResultEntry`

``` purescript
newtype DeleteMessageBatchResultEntry
  = DeleteMessageBatchResultEntry { "Id" :: String }
```

<p>Encloses the <code>Id</code> of an entry in <code> <a>DeleteMessageBatch</a>.</code> </p>

##### Instances
``` purescript
Newtype DeleteMessageBatchResultEntry _
Generic DeleteMessageBatchResultEntry _
Show DeleteMessageBatchResultEntry
Decode DeleteMessageBatchResultEntry
Encode DeleteMessageBatchResultEntry
```

#### `newDeleteMessageBatchResultEntry`

``` purescript
newDeleteMessageBatchResultEntry :: String -> DeleteMessageBatchResultEntry
```

Constructs DeleteMessageBatchResultEntry from required parameters

#### `newDeleteMessageBatchResultEntry'`

``` purescript
newDeleteMessageBatchResultEntry' :: String -> ({ "Id" :: String } -> { "Id" :: String }) -> DeleteMessageBatchResultEntry
```

Constructs DeleteMessageBatchResultEntry's fields from required parameters

#### `DeleteMessageBatchResultEntryList`

``` purescript
newtype DeleteMessageBatchResultEntryList
  = DeleteMessageBatchResultEntryList (Array DeleteMessageBatchResultEntry)
```

##### Instances
``` purescript
Newtype DeleteMessageBatchResultEntryList _
Generic DeleteMessageBatchResultEntryList _
Show DeleteMessageBatchResultEntryList
Decode DeleteMessageBatchResultEntryList
Encode DeleteMessageBatchResultEntryList
```

#### `DeleteMessageRequest`

``` purescript
newtype DeleteMessageRequest
  = DeleteMessageRequest { "QueueUrl" :: String, "ReceiptHandle" :: String }
```

<p/>

##### Instances
``` purescript
Newtype DeleteMessageRequest _
Generic DeleteMessageRequest _
Show DeleteMessageRequest
Decode DeleteMessageRequest
Encode DeleteMessageRequest
```

#### `newDeleteMessageRequest`

``` purescript
newDeleteMessageRequest :: String -> String -> DeleteMessageRequest
```

Constructs DeleteMessageRequest from required parameters

#### `newDeleteMessageRequest'`

``` purescript
newDeleteMessageRequest' :: String -> String -> ({ "QueueUrl" :: String, "ReceiptHandle" :: String } -> { "QueueUrl" :: String, "ReceiptHandle" :: String }) -> DeleteMessageRequest
```

Constructs DeleteMessageRequest's fields from required parameters

#### `DeleteQueueRequest`

``` purescript
newtype DeleteQueueRequest
  = DeleteQueueRequest { "QueueUrl" :: String }
```

<p/>

##### Instances
``` purescript
Newtype DeleteQueueRequest _
Generic DeleteQueueRequest _
Show DeleteQueueRequest
Decode DeleteQueueRequest
Encode DeleteQueueRequest
```

#### `newDeleteQueueRequest`

``` purescript
newDeleteQueueRequest :: String -> DeleteQueueRequest
```

Constructs DeleteQueueRequest from required parameters

#### `newDeleteQueueRequest'`

``` purescript
newDeleteQueueRequest' :: String -> ({ "QueueUrl" :: String } -> { "QueueUrl" :: String }) -> DeleteQueueRequest
```

Constructs DeleteQueueRequest's fields from required parameters

#### `EmptyBatchRequest`

``` purescript
newtype EmptyBatchRequest
  = EmptyBatchRequest NoArguments
```

<p>The batch request doesn't contain any entries.</p>

##### Instances
``` purescript
Newtype EmptyBatchRequest _
Generic EmptyBatchRequest _
Show EmptyBatchRequest
Decode EmptyBatchRequest
Encode EmptyBatchRequest
```

#### `GetQueueAttributesRequest`

``` purescript
newtype GetQueueAttributesRequest
  = GetQueueAttributesRequest { "QueueUrl" :: String, "AttributeNames" :: Maybe (AttributeNameList) }
```

<p/>

##### Instances
``` purescript
Newtype GetQueueAttributesRequest _
Generic GetQueueAttributesRequest _
Show GetQueueAttributesRequest
Decode GetQueueAttributesRequest
Encode GetQueueAttributesRequest
```

#### `newGetQueueAttributesRequest`

``` purescript
newGetQueueAttributesRequest :: String -> GetQueueAttributesRequest
```

Constructs GetQueueAttributesRequest from required parameters

#### `newGetQueueAttributesRequest'`

``` purescript
newGetQueueAttributesRequest' :: String -> ({ "QueueUrl" :: String, "AttributeNames" :: Maybe (AttributeNameList) } -> { "QueueUrl" :: String, "AttributeNames" :: Maybe (AttributeNameList) }) -> GetQueueAttributesRequest
```

Constructs GetQueueAttributesRequest's fields from required parameters

#### `GetQueueAttributesResult`

``` purescript
newtype GetQueueAttributesResult
  = GetQueueAttributesResult { "Attributes" :: Maybe (QueueAttributeMap) }
```

<p>A list of returned queue attributes.</p>

##### Instances
``` purescript
Newtype GetQueueAttributesResult _
Generic GetQueueAttributesResult _
Show GetQueueAttributesResult
Decode GetQueueAttributesResult
Encode GetQueueAttributesResult
```

#### `newGetQueueAttributesResult`

``` purescript
newGetQueueAttributesResult :: GetQueueAttributesResult
```

Constructs GetQueueAttributesResult from required parameters

#### `newGetQueueAttributesResult'`

``` purescript
newGetQueueAttributesResult' :: ({ "Attributes" :: Maybe (QueueAttributeMap) } -> { "Attributes" :: Maybe (QueueAttributeMap) }) -> GetQueueAttributesResult
```

Constructs GetQueueAttributesResult's fields from required parameters

#### `GetQueueUrlRequest`

``` purescript
newtype GetQueueUrlRequest
  = GetQueueUrlRequest { "QueueName" :: String, "QueueOwnerAWSAccountId" :: Maybe (String) }
```

<p/>

##### Instances
``` purescript
Newtype GetQueueUrlRequest _
Generic GetQueueUrlRequest _
Show GetQueueUrlRequest
Decode GetQueueUrlRequest
Encode GetQueueUrlRequest
```

#### `newGetQueueUrlRequest`

``` purescript
newGetQueueUrlRequest :: String -> GetQueueUrlRequest
```

Constructs GetQueueUrlRequest from required parameters

#### `newGetQueueUrlRequest'`

``` purescript
newGetQueueUrlRequest' :: String -> ({ "QueueName" :: String, "QueueOwnerAWSAccountId" :: Maybe (String) } -> { "QueueName" :: String, "QueueOwnerAWSAccountId" :: Maybe (String) }) -> GetQueueUrlRequest
```

Constructs GetQueueUrlRequest's fields from required parameters

#### `GetQueueUrlResult`

``` purescript
newtype GetQueueUrlResult
  = GetQueueUrlResult { "QueueUrl" :: Maybe (String) }
```

<p>For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/UnderstandingResponses.html">Responses</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype GetQueueUrlResult _
Generic GetQueueUrlResult _
Show GetQueueUrlResult
Decode GetQueueUrlResult
Encode GetQueueUrlResult
```

#### `newGetQueueUrlResult`

``` purescript
newGetQueueUrlResult :: GetQueueUrlResult
```

Constructs GetQueueUrlResult from required parameters

#### `newGetQueueUrlResult'`

``` purescript
newGetQueueUrlResult' :: ({ "QueueUrl" :: Maybe (String) } -> { "QueueUrl" :: Maybe (String) }) -> GetQueueUrlResult
```

Constructs GetQueueUrlResult's fields from required parameters

#### `InvalidAttributeName`

``` purescript
newtype InvalidAttributeName
  = InvalidAttributeName NoArguments
```

<p>The attribute referred to doesn't exist.</p>

##### Instances
``` purescript
Newtype InvalidAttributeName _
Generic InvalidAttributeName _
Show InvalidAttributeName
Decode InvalidAttributeName
Encode InvalidAttributeName
```

#### `InvalidBatchEntryId`

``` purescript
newtype InvalidBatchEntryId
  = InvalidBatchEntryId NoArguments
```

<p>The <code>Id</code> of a batch entry in a batch request doesn't abide by the specification.</p>

##### Instances
``` purescript
Newtype InvalidBatchEntryId _
Generic InvalidBatchEntryId _
Show InvalidBatchEntryId
Decode InvalidBatchEntryId
Encode InvalidBatchEntryId
```

#### `InvalidIdFormat`

``` purescript
newtype InvalidIdFormat
  = InvalidIdFormat NoArguments
```

<p>The receipt handle isn't valid for the current version.</p>

##### Instances
``` purescript
Newtype InvalidIdFormat _
Generic InvalidIdFormat _
Show InvalidIdFormat
Decode InvalidIdFormat
Encode InvalidIdFormat
```

#### `InvalidMessageContents`

``` purescript
newtype InvalidMessageContents
  = InvalidMessageContents NoArguments
```

<p>The message contains characters outside the allowed set.</p>

##### Instances
``` purescript
Newtype InvalidMessageContents _
Generic InvalidMessageContents _
Show InvalidMessageContents
Decode InvalidMessageContents
Encode InvalidMessageContents
```

#### `ListDeadLetterSourceQueuesRequest`

``` purescript
newtype ListDeadLetterSourceQueuesRequest
  = ListDeadLetterSourceQueuesRequest { "QueueUrl" :: String }
```

<p/>

##### Instances
``` purescript
Newtype ListDeadLetterSourceQueuesRequest _
Generic ListDeadLetterSourceQueuesRequest _
Show ListDeadLetterSourceQueuesRequest
Decode ListDeadLetterSourceQueuesRequest
Encode ListDeadLetterSourceQueuesRequest
```

#### `newListDeadLetterSourceQueuesRequest`

``` purescript
newListDeadLetterSourceQueuesRequest :: String -> ListDeadLetterSourceQueuesRequest
```

Constructs ListDeadLetterSourceQueuesRequest from required parameters

#### `newListDeadLetterSourceQueuesRequest'`

``` purescript
newListDeadLetterSourceQueuesRequest' :: String -> ({ "QueueUrl" :: String } -> { "QueueUrl" :: String }) -> ListDeadLetterSourceQueuesRequest
```

Constructs ListDeadLetterSourceQueuesRequest's fields from required parameters

#### `ListDeadLetterSourceQueuesResult`

``` purescript
newtype ListDeadLetterSourceQueuesResult
  = ListDeadLetterSourceQueuesResult { queueUrls :: QueueUrlList }
```

<p>A list of your dead letter source queues.</p>

##### Instances
``` purescript
Newtype ListDeadLetterSourceQueuesResult _
Generic ListDeadLetterSourceQueuesResult _
Show ListDeadLetterSourceQueuesResult
Decode ListDeadLetterSourceQueuesResult
Encode ListDeadLetterSourceQueuesResult
```

#### `newListDeadLetterSourceQueuesResult`

``` purescript
newListDeadLetterSourceQueuesResult :: QueueUrlList -> ListDeadLetterSourceQueuesResult
```

Constructs ListDeadLetterSourceQueuesResult from required parameters

#### `newListDeadLetterSourceQueuesResult'`

``` purescript
newListDeadLetterSourceQueuesResult' :: QueueUrlList -> ({ queueUrls :: QueueUrlList } -> { queueUrls :: QueueUrlList }) -> ListDeadLetterSourceQueuesResult
```

Constructs ListDeadLetterSourceQueuesResult's fields from required parameters

#### `ListQueueTagsRequest`

``` purescript
newtype ListQueueTagsRequest
  = ListQueueTagsRequest { "QueueUrl" :: String }
```

##### Instances
``` purescript
Newtype ListQueueTagsRequest _
Generic ListQueueTagsRequest _
Show ListQueueTagsRequest
Decode ListQueueTagsRequest
Encode ListQueueTagsRequest
```

#### `newListQueueTagsRequest`

``` purescript
newListQueueTagsRequest :: String -> ListQueueTagsRequest
```

Constructs ListQueueTagsRequest from required parameters

#### `newListQueueTagsRequest'`

``` purescript
newListQueueTagsRequest' :: String -> ({ "QueueUrl" :: String } -> { "QueueUrl" :: String }) -> ListQueueTagsRequest
```

Constructs ListQueueTagsRequest's fields from required parameters

#### `ListQueueTagsResult`

``` purescript
newtype ListQueueTagsResult
  = ListQueueTagsResult { "Tags" :: Maybe (TagMap) }
```

##### Instances
``` purescript
Newtype ListQueueTagsResult _
Generic ListQueueTagsResult _
Show ListQueueTagsResult
Decode ListQueueTagsResult
Encode ListQueueTagsResult
```

#### `newListQueueTagsResult`

``` purescript
newListQueueTagsResult :: ListQueueTagsResult
```

Constructs ListQueueTagsResult from required parameters

#### `newListQueueTagsResult'`

``` purescript
newListQueueTagsResult' :: ({ "Tags" :: Maybe (TagMap) } -> { "Tags" :: Maybe (TagMap) }) -> ListQueueTagsResult
```

Constructs ListQueueTagsResult's fields from required parameters

#### `ListQueuesRequest`

``` purescript
newtype ListQueuesRequest
  = ListQueuesRequest { "QueueNamePrefix" :: Maybe (String) }
```

<p/>

##### Instances
``` purescript
Newtype ListQueuesRequest _
Generic ListQueuesRequest _
Show ListQueuesRequest
Decode ListQueuesRequest
Encode ListQueuesRequest
```

#### `newListQueuesRequest`

``` purescript
newListQueuesRequest :: ListQueuesRequest
```

Constructs ListQueuesRequest from required parameters

#### `newListQueuesRequest'`

``` purescript
newListQueuesRequest' :: ({ "QueueNamePrefix" :: Maybe (String) } -> { "QueueNamePrefix" :: Maybe (String) }) -> ListQueuesRequest
```

Constructs ListQueuesRequest's fields from required parameters

#### `ListQueuesResult`

``` purescript
newtype ListQueuesResult
  = ListQueuesResult { "QueueUrls" :: Maybe (QueueUrlList) }
```

<p>A list of your queues.</p>

##### Instances
``` purescript
Newtype ListQueuesResult _
Generic ListQueuesResult _
Show ListQueuesResult
Decode ListQueuesResult
Encode ListQueuesResult
```

#### `newListQueuesResult`

``` purescript
newListQueuesResult :: ListQueuesResult
```

Constructs ListQueuesResult from required parameters

#### `newListQueuesResult'`

``` purescript
newListQueuesResult' :: ({ "QueueUrls" :: Maybe (QueueUrlList) } -> { "QueueUrls" :: Maybe (QueueUrlList) }) -> ListQueuesResult
```

Constructs ListQueuesResult's fields from required parameters

#### `Message`

``` purescript
newtype Message
  = Message { "MessageId" :: Maybe (String), "ReceiptHandle" :: Maybe (String), "MD5OfBody" :: Maybe (String), "Body" :: Maybe (String), "Attributes" :: Maybe (MessageSystemAttributeMap), "MD5OfMessageAttributes" :: Maybe (String), "MessageAttributes" :: Maybe (MessageBodyAttributeMap) }
```

<p>An Amazon SQS message.</p>

##### Instances
``` purescript
Newtype Message _
Generic Message _
Show Message
Decode Message
Encode Message
```

#### `newMessage`

``` purescript
newMessage :: Message
```

Constructs Message from required parameters

#### `newMessage'`

``` purescript
newMessage' :: ({ "MessageId" :: Maybe (String), "ReceiptHandle" :: Maybe (String), "MD5OfBody" :: Maybe (String), "Body" :: Maybe (String), "Attributes" :: Maybe (MessageSystemAttributeMap), "MD5OfMessageAttributes" :: Maybe (String), "MessageAttributes" :: Maybe (MessageBodyAttributeMap) } -> { "MessageId" :: Maybe (String), "ReceiptHandle" :: Maybe (String), "MD5OfBody" :: Maybe (String), "Body" :: Maybe (String), "Attributes" :: Maybe (MessageSystemAttributeMap), "MD5OfMessageAttributes" :: Maybe (String), "MessageAttributes" :: Maybe (MessageBodyAttributeMap) }) -> Message
```

Constructs Message's fields from required parameters

#### `MessageAttributeName`

``` purescript
newtype MessageAttributeName
  = MessageAttributeName String
```

##### Instances
``` purescript
Newtype MessageAttributeName _
Generic MessageAttributeName _
Show MessageAttributeName
Decode MessageAttributeName
Encode MessageAttributeName
```

#### `MessageAttributeNameList`

``` purescript
newtype MessageAttributeNameList
  = MessageAttributeNameList (Array MessageAttributeName)
```

##### Instances
``` purescript
Newtype MessageAttributeNameList _
Generic MessageAttributeNameList _
Show MessageAttributeNameList
Decode MessageAttributeNameList
Encode MessageAttributeNameList
```

#### `MessageAttributeValue`

``` purescript
newtype MessageAttributeValue
  = MessageAttributeValue { "StringValue" :: Maybe (String), "BinaryValue" :: Maybe (Binary), "StringListValues" :: Maybe (StringList), "BinaryListValues" :: Maybe (BinaryList), "DataType" :: String }
```

<p>The user-specified message attribute value. For string data types, the <code>Value</code> attribute has the same restrictions on the content as the message body. For more information, see <code> <a>SendMessage</a>.</code> </p> <p> <code>Name</code>, <code>type</code>, <code>value</code> and the message body must not be empty or null. All parts of the message attribute, including <code>Name</code>, <code>Type</code>, and <code>Value</code>, are part of the message size restriction (256 KB or 262,144 bytes).</p>

##### Instances
``` purescript
Newtype MessageAttributeValue _
Generic MessageAttributeValue _
Show MessageAttributeValue
Decode MessageAttributeValue
Encode MessageAttributeValue
```

#### `newMessageAttributeValue`

``` purescript
newMessageAttributeValue :: String -> MessageAttributeValue
```

Constructs MessageAttributeValue from required parameters

#### `newMessageAttributeValue'`

``` purescript
newMessageAttributeValue' :: String -> ({ "StringValue" :: Maybe (String), "BinaryValue" :: Maybe (Binary), "StringListValues" :: Maybe (StringList), "BinaryListValues" :: Maybe (BinaryList), "DataType" :: String } -> { "StringValue" :: Maybe (String), "BinaryValue" :: Maybe (Binary), "StringListValues" :: Maybe (StringList), "BinaryListValues" :: Maybe (BinaryList), "DataType" :: String }) -> MessageAttributeValue
```

Constructs MessageAttributeValue's fields from required parameters

#### `MessageBodyAttributeMap`

``` purescript
newtype MessageBodyAttributeMap
  = MessageBodyAttributeMap (StrMap MessageAttributeValue)
```

##### Instances
``` purescript
Newtype MessageBodyAttributeMap _
Generic MessageBodyAttributeMap _
Show MessageBodyAttributeMap
Decode MessageBodyAttributeMap
Encode MessageBodyAttributeMap
```

#### `MessageList`

``` purescript
newtype MessageList
  = MessageList (Array Message)
```

##### Instances
``` purescript
Newtype MessageList _
Generic MessageList _
Show MessageList
Decode MessageList
Encode MessageList
```

#### `MessageNotInflight`

``` purescript
newtype MessageNotInflight
  = MessageNotInflight NoArguments
```

<p>The message referred to isn't in flight.</p>

##### Instances
``` purescript
Newtype MessageNotInflight _
Generic MessageNotInflight _
Show MessageNotInflight
Decode MessageNotInflight
Encode MessageNotInflight
```

#### `MessageSystemAttributeMap`

``` purescript
newtype MessageSystemAttributeMap
  = MessageSystemAttributeMap (StrMap String)
```

##### Instances
``` purescript
Newtype MessageSystemAttributeMap _
Generic MessageSystemAttributeMap _
Show MessageSystemAttributeMap
Decode MessageSystemAttributeMap
Encode MessageSystemAttributeMap
```

#### `MessageSystemAttributeName`

``` purescript
newtype MessageSystemAttributeName
  = MessageSystemAttributeName String
```

##### Instances
``` purescript
Newtype MessageSystemAttributeName _
Generic MessageSystemAttributeName _
Show MessageSystemAttributeName
Decode MessageSystemAttributeName
Encode MessageSystemAttributeName
```

#### `OverLimit`

``` purescript
newtype OverLimit
  = OverLimit NoArguments
```

<p>The action that you requested would violate a limit. For example, <code>ReceiveMessage</code> returns this error if the maximum number of inflight messages is reached. <code> <a>AddPermission</a> </code> returns this error if the maximum number of permissions for the queue is reached.</p>

##### Instances
``` purescript
Newtype OverLimit _
Generic OverLimit _
Show OverLimit
Decode OverLimit
Encode OverLimit
```

#### `PurgeQueueInProgress`

``` purescript
newtype PurgeQueueInProgress
  = PurgeQueueInProgress NoArguments
```

<p>Indicates that the specified queue previously received a <code>PurgeQueue</code> request within the last 60 seconds (the time it can take to delete the messages in the queue).</p>

##### Instances
``` purescript
Newtype PurgeQueueInProgress _
Generic PurgeQueueInProgress _
Show PurgeQueueInProgress
Decode PurgeQueueInProgress
Encode PurgeQueueInProgress
```

#### `PurgeQueueRequest`

``` purescript
newtype PurgeQueueRequest
  = PurgeQueueRequest { "QueueUrl" :: String }
```

<p/>

##### Instances
``` purescript
Newtype PurgeQueueRequest _
Generic PurgeQueueRequest _
Show PurgeQueueRequest
Decode PurgeQueueRequest
Encode PurgeQueueRequest
```

#### `newPurgeQueueRequest`

``` purescript
newPurgeQueueRequest :: String -> PurgeQueueRequest
```

Constructs PurgeQueueRequest from required parameters

#### `newPurgeQueueRequest'`

``` purescript
newPurgeQueueRequest' :: String -> ({ "QueueUrl" :: String } -> { "QueueUrl" :: String }) -> PurgeQueueRequest
```

Constructs PurgeQueueRequest's fields from required parameters

#### `QueueAttributeMap`

``` purescript
newtype QueueAttributeMap
  = QueueAttributeMap (StrMap String)
```

##### Instances
``` purescript
Newtype QueueAttributeMap _
Generic QueueAttributeMap _
Show QueueAttributeMap
Decode QueueAttributeMap
Encode QueueAttributeMap
```

#### `QueueAttributeName`

``` purescript
newtype QueueAttributeName
  = QueueAttributeName String
```

##### Instances
``` purescript
Newtype QueueAttributeName _
Generic QueueAttributeName _
Show QueueAttributeName
Decode QueueAttributeName
Encode QueueAttributeName
```

#### `QueueDeletedRecently`

``` purescript
newtype QueueDeletedRecently
  = QueueDeletedRecently NoArguments
```

<p>You must wait 60 seconds after deleting a queue before you can create another one with the same name.</p>

##### Instances
``` purescript
Newtype QueueDeletedRecently _
Generic QueueDeletedRecently _
Show QueueDeletedRecently
Decode QueueDeletedRecently
Encode QueueDeletedRecently
```

#### `QueueDoesNotExist`

``` purescript
newtype QueueDoesNotExist
  = QueueDoesNotExist NoArguments
```

<p>The queue referred to doesn't exist.</p>

##### Instances
``` purescript
Newtype QueueDoesNotExist _
Generic QueueDoesNotExist _
Show QueueDoesNotExist
Decode QueueDoesNotExist
Encode QueueDoesNotExist
```

#### `QueueNameExists`

``` purescript
newtype QueueNameExists
  = QueueNameExists NoArguments
```

<p>A queue already exists with this name. Amazon SQS returns this error only if the request includes attributes whose values differ from those of the existing queue.</p>

##### Instances
``` purescript
Newtype QueueNameExists _
Generic QueueNameExists _
Show QueueNameExists
Decode QueueNameExists
Encode QueueNameExists
```

#### `QueueUrlList`

``` purescript
newtype QueueUrlList
  = QueueUrlList (Array String)
```

##### Instances
``` purescript
Newtype QueueUrlList _
Generic QueueUrlList _
Show QueueUrlList
Decode QueueUrlList
Encode QueueUrlList
```

#### `ReceiptHandleIsInvalid`

``` purescript
newtype ReceiptHandleIsInvalid
  = ReceiptHandleIsInvalid NoArguments
```

<p>The receipt handle provided isn't valid.</p>

##### Instances
``` purescript
Newtype ReceiptHandleIsInvalid _
Generic ReceiptHandleIsInvalid _
Show ReceiptHandleIsInvalid
Decode ReceiptHandleIsInvalid
Encode ReceiptHandleIsInvalid
```

#### `ReceiveMessageRequest`

``` purescript
newtype ReceiveMessageRequest
  = ReceiveMessageRequest { "QueueUrl" :: String, "AttributeNames" :: Maybe (AttributeNameList), "MessageAttributeNames" :: Maybe (MessageAttributeNameList), "MaxNumberOfMessages" :: Maybe (Int), "VisibilityTimeout" :: Maybe (Int), "WaitTimeSeconds" :: Maybe (Int), "ReceiveRequestAttemptId" :: Maybe (String) }
```

<p/>

##### Instances
``` purescript
Newtype ReceiveMessageRequest _
Generic ReceiveMessageRequest _
Show ReceiveMessageRequest
Decode ReceiveMessageRequest
Encode ReceiveMessageRequest
```

#### `newReceiveMessageRequest`

``` purescript
newReceiveMessageRequest :: String -> ReceiveMessageRequest
```

Constructs ReceiveMessageRequest from required parameters

#### `newReceiveMessageRequest'`

``` purescript
newReceiveMessageRequest' :: String -> ({ "QueueUrl" :: String, "AttributeNames" :: Maybe (AttributeNameList), "MessageAttributeNames" :: Maybe (MessageAttributeNameList), "MaxNumberOfMessages" :: Maybe (Int), "VisibilityTimeout" :: Maybe (Int), "WaitTimeSeconds" :: Maybe (Int), "ReceiveRequestAttemptId" :: Maybe (String) } -> { "QueueUrl" :: String, "AttributeNames" :: Maybe (AttributeNameList), "MessageAttributeNames" :: Maybe (MessageAttributeNameList), "MaxNumberOfMessages" :: Maybe (Int), "VisibilityTimeout" :: Maybe (Int), "WaitTimeSeconds" :: Maybe (Int), "ReceiveRequestAttemptId" :: Maybe (String) }) -> ReceiveMessageRequest
```

Constructs ReceiveMessageRequest's fields from required parameters

#### `ReceiveMessageResult`

``` purescript
newtype ReceiveMessageResult
  = ReceiveMessageResult { "Messages" :: Maybe (MessageList) }
```

<p>A list of received messages.</p>

##### Instances
``` purescript
Newtype ReceiveMessageResult _
Generic ReceiveMessageResult _
Show ReceiveMessageResult
Decode ReceiveMessageResult
Encode ReceiveMessageResult
```

#### `newReceiveMessageResult`

``` purescript
newReceiveMessageResult :: ReceiveMessageResult
```

Constructs ReceiveMessageResult from required parameters

#### `newReceiveMessageResult'`

``` purescript
newReceiveMessageResult' :: ({ "Messages" :: Maybe (MessageList) } -> { "Messages" :: Maybe (MessageList) }) -> ReceiveMessageResult
```

Constructs ReceiveMessageResult's fields from required parameters

#### `RemovePermissionRequest`

``` purescript
newtype RemovePermissionRequest
  = RemovePermissionRequest { "QueueUrl" :: String, "Label" :: String }
```

<p/>

##### Instances
``` purescript
Newtype RemovePermissionRequest _
Generic RemovePermissionRequest _
Show RemovePermissionRequest
Decode RemovePermissionRequest
Encode RemovePermissionRequest
```

#### `newRemovePermissionRequest`

``` purescript
newRemovePermissionRequest :: String -> String -> RemovePermissionRequest
```

Constructs RemovePermissionRequest from required parameters

#### `newRemovePermissionRequest'`

``` purescript
newRemovePermissionRequest' :: String -> String -> ({ "QueueUrl" :: String, "Label" :: String } -> { "QueueUrl" :: String, "Label" :: String }) -> RemovePermissionRequest
```

Constructs RemovePermissionRequest's fields from required parameters

#### `SendMessageBatchRequest`

``` purescript
newtype SendMessageBatchRequest
  = SendMessageBatchRequest { "QueueUrl" :: String, "Entries" :: SendMessageBatchRequestEntryList }
```

<p/>

##### Instances
``` purescript
Newtype SendMessageBatchRequest _
Generic SendMessageBatchRequest _
Show SendMessageBatchRequest
Decode SendMessageBatchRequest
Encode SendMessageBatchRequest
```

#### `newSendMessageBatchRequest`

``` purescript
newSendMessageBatchRequest :: SendMessageBatchRequestEntryList -> String -> SendMessageBatchRequest
```

Constructs SendMessageBatchRequest from required parameters

#### `newSendMessageBatchRequest'`

``` purescript
newSendMessageBatchRequest' :: SendMessageBatchRequestEntryList -> String -> ({ "QueueUrl" :: String, "Entries" :: SendMessageBatchRequestEntryList } -> { "QueueUrl" :: String, "Entries" :: SendMessageBatchRequestEntryList }) -> SendMessageBatchRequest
```

Constructs SendMessageBatchRequest's fields from required parameters

#### `SendMessageBatchRequestEntry`

``` purescript
newtype SendMessageBatchRequestEntry
  = SendMessageBatchRequestEntry { "Id" :: String, "MessageBody" :: String, "DelaySeconds" :: Maybe (Int), "MessageAttributes" :: Maybe (MessageBodyAttributeMap), "MessageDeduplicationId" :: Maybe (String), "MessageGroupId" :: Maybe (String) }
```

<p>Contains the details of a single Amazon SQS message along with an <code>Id</code>.</p>

##### Instances
``` purescript
Newtype SendMessageBatchRequestEntry _
Generic SendMessageBatchRequestEntry _
Show SendMessageBatchRequestEntry
Decode SendMessageBatchRequestEntry
Encode SendMessageBatchRequestEntry
```

#### `newSendMessageBatchRequestEntry`

``` purescript
newSendMessageBatchRequestEntry :: String -> String -> SendMessageBatchRequestEntry
```

Constructs SendMessageBatchRequestEntry from required parameters

#### `newSendMessageBatchRequestEntry'`

``` purescript
newSendMessageBatchRequestEntry' :: String -> String -> ({ "Id" :: String, "MessageBody" :: String, "DelaySeconds" :: Maybe (Int), "MessageAttributes" :: Maybe (MessageBodyAttributeMap), "MessageDeduplicationId" :: Maybe (String), "MessageGroupId" :: Maybe (String) } -> { "Id" :: String, "MessageBody" :: String, "DelaySeconds" :: Maybe (Int), "MessageAttributes" :: Maybe (MessageBodyAttributeMap), "MessageDeduplicationId" :: Maybe (String), "MessageGroupId" :: Maybe (String) }) -> SendMessageBatchRequestEntry
```

Constructs SendMessageBatchRequestEntry's fields from required parameters

#### `SendMessageBatchRequestEntryList`

``` purescript
newtype SendMessageBatchRequestEntryList
  = SendMessageBatchRequestEntryList (Array SendMessageBatchRequestEntry)
```

##### Instances
``` purescript
Newtype SendMessageBatchRequestEntryList _
Generic SendMessageBatchRequestEntryList _
Show SendMessageBatchRequestEntryList
Decode SendMessageBatchRequestEntryList
Encode SendMessageBatchRequestEntryList
```

#### `SendMessageBatchResult`

``` purescript
newtype SendMessageBatchResult
  = SendMessageBatchResult { "Successful" :: SendMessageBatchResultEntryList, "Failed" :: BatchResultErrorEntryList }
```

<p>For each message in the batch, the response contains a <code> <a>SendMessageBatchResultEntry</a> </code> tag if the message succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.</p>

##### Instances
``` purescript
Newtype SendMessageBatchResult _
Generic SendMessageBatchResult _
Show SendMessageBatchResult
Decode SendMessageBatchResult
Encode SendMessageBatchResult
```

#### `newSendMessageBatchResult`

``` purescript
newSendMessageBatchResult :: BatchResultErrorEntryList -> SendMessageBatchResultEntryList -> SendMessageBatchResult
```

Constructs SendMessageBatchResult from required parameters

#### `newSendMessageBatchResult'`

``` purescript
newSendMessageBatchResult' :: BatchResultErrorEntryList -> SendMessageBatchResultEntryList -> ({ "Successful" :: SendMessageBatchResultEntryList, "Failed" :: BatchResultErrorEntryList } -> { "Successful" :: SendMessageBatchResultEntryList, "Failed" :: BatchResultErrorEntryList }) -> SendMessageBatchResult
```

Constructs SendMessageBatchResult's fields from required parameters

#### `SendMessageBatchResultEntry`

``` purescript
newtype SendMessageBatchResultEntry
  = SendMessageBatchResultEntry { "Id" :: String, "MessageId" :: String, "MD5OfMessageBody" :: String, "MD5OfMessageAttributes" :: Maybe (String), "SequenceNumber" :: Maybe (String) }
```

<p>Encloses a <code>MessageId</code> for a successfully-enqueued message in a <code> <a>SendMessageBatch</a>.</code> </p>

##### Instances
``` purescript
Newtype SendMessageBatchResultEntry _
Generic SendMessageBatchResultEntry _
Show SendMessageBatchResultEntry
Decode SendMessageBatchResultEntry
Encode SendMessageBatchResultEntry
```

#### `newSendMessageBatchResultEntry`

``` purescript
newSendMessageBatchResultEntry :: String -> String -> String -> SendMessageBatchResultEntry
```

Constructs SendMessageBatchResultEntry from required parameters

#### `newSendMessageBatchResultEntry'`

``` purescript
newSendMessageBatchResultEntry' :: String -> String -> String -> ({ "Id" :: String, "MessageId" :: String, "MD5OfMessageBody" :: String, "MD5OfMessageAttributes" :: Maybe (String), "SequenceNumber" :: Maybe (String) } -> { "Id" :: String, "MessageId" :: String, "MD5OfMessageBody" :: String, "MD5OfMessageAttributes" :: Maybe (String), "SequenceNumber" :: Maybe (String) }) -> SendMessageBatchResultEntry
```

Constructs SendMessageBatchResultEntry's fields from required parameters

#### `SendMessageBatchResultEntryList`

``` purescript
newtype SendMessageBatchResultEntryList
  = SendMessageBatchResultEntryList (Array SendMessageBatchResultEntry)
```

##### Instances
``` purescript
Newtype SendMessageBatchResultEntryList _
Generic SendMessageBatchResultEntryList _
Show SendMessageBatchResultEntryList
Decode SendMessageBatchResultEntryList
Encode SendMessageBatchResultEntryList
```

#### `SendMessageRequest`

``` purescript
newtype SendMessageRequest
  = SendMessageRequest { "QueueUrl" :: String, "MessageBody" :: String, "DelaySeconds" :: Maybe (Int), "MessageAttributes" :: Maybe (MessageBodyAttributeMap), "MessageDeduplicationId" :: Maybe (String), "MessageGroupId" :: Maybe (String) }
```

<p/>

##### Instances
``` purescript
Newtype SendMessageRequest _
Generic SendMessageRequest _
Show SendMessageRequest
Decode SendMessageRequest
Encode SendMessageRequest
```

#### `newSendMessageRequest`

``` purescript
newSendMessageRequest :: String -> String -> SendMessageRequest
```

Constructs SendMessageRequest from required parameters

#### `newSendMessageRequest'`

``` purescript
newSendMessageRequest' :: String -> String -> ({ "QueueUrl" :: String, "MessageBody" :: String, "DelaySeconds" :: Maybe (Int), "MessageAttributes" :: Maybe (MessageBodyAttributeMap), "MessageDeduplicationId" :: Maybe (String), "MessageGroupId" :: Maybe (String) } -> { "QueueUrl" :: String, "MessageBody" :: String, "DelaySeconds" :: Maybe (Int), "MessageAttributes" :: Maybe (MessageBodyAttributeMap), "MessageDeduplicationId" :: Maybe (String), "MessageGroupId" :: Maybe (String) }) -> SendMessageRequest
```

Constructs SendMessageRequest's fields from required parameters

#### `SendMessageResult`

``` purescript
newtype SendMessageResult
  = SendMessageResult { "MD5OfMessageBody" :: Maybe (String), "MD5OfMessageAttributes" :: Maybe (String), "MessageId" :: Maybe (String), "SequenceNumber" :: Maybe (String) }
```

<p>The <code>MD5OfMessageBody</code> and <code>MessageId</code> elements.</p>

##### Instances
``` purescript
Newtype SendMessageResult _
Generic SendMessageResult _
Show SendMessageResult
Decode SendMessageResult
Encode SendMessageResult
```

#### `newSendMessageResult`

``` purescript
newSendMessageResult :: SendMessageResult
```

Constructs SendMessageResult from required parameters

#### `newSendMessageResult'`

``` purescript
newSendMessageResult' :: ({ "MD5OfMessageBody" :: Maybe (String), "MD5OfMessageAttributes" :: Maybe (String), "MessageId" :: Maybe (String), "SequenceNumber" :: Maybe (String) } -> { "MD5OfMessageBody" :: Maybe (String), "MD5OfMessageAttributes" :: Maybe (String), "MessageId" :: Maybe (String), "SequenceNumber" :: Maybe (String) }) -> SendMessageResult
```

Constructs SendMessageResult's fields from required parameters

#### `SetQueueAttributesRequest`

``` purescript
newtype SetQueueAttributesRequest
  = SetQueueAttributesRequest { "QueueUrl" :: String, "Attributes" :: QueueAttributeMap }
```

<p/>

##### Instances
``` purescript
Newtype SetQueueAttributesRequest _
Generic SetQueueAttributesRequest _
Show SetQueueAttributesRequest
Decode SetQueueAttributesRequest
Encode SetQueueAttributesRequest
```

#### `newSetQueueAttributesRequest`

``` purescript
newSetQueueAttributesRequest :: QueueAttributeMap -> String -> SetQueueAttributesRequest
```

Constructs SetQueueAttributesRequest from required parameters

#### `newSetQueueAttributesRequest'`

``` purescript
newSetQueueAttributesRequest' :: QueueAttributeMap -> String -> ({ "QueueUrl" :: String, "Attributes" :: QueueAttributeMap } -> { "QueueUrl" :: String, "Attributes" :: QueueAttributeMap }) -> SetQueueAttributesRequest
```

Constructs SetQueueAttributesRequest's fields from required parameters

#### `StringList`

``` purescript
newtype StringList
  = StringList (Array String)
```

##### Instances
``` purescript
Newtype StringList _
Generic StringList _
Show StringList
Decode StringList
Encode StringList
```

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeyList`

``` purescript
newtype TagKeyList
  = TagKeyList (Array TagKey)
```

##### Instances
``` purescript
Newtype TagKeyList _
Generic TagKeyList _
Show TagKeyList
Decode TagKeyList
Encode TagKeyList
```

#### `TagMap`

``` purescript
newtype TagMap
  = TagMap (StrMap TagValue)
```

##### Instances
``` purescript
Newtype TagMap _
Generic TagMap _
Show TagMap
Decode TagMap
Encode TagMap
```

#### `TagQueueRequest`

``` purescript
newtype TagQueueRequest
  = TagQueueRequest { "QueueUrl" :: String, "Tags" :: TagMap }
```

##### Instances
``` purescript
Newtype TagQueueRequest _
Generic TagQueueRequest _
Show TagQueueRequest
Decode TagQueueRequest
Encode TagQueueRequest
```

#### `newTagQueueRequest`

``` purescript
newTagQueueRequest :: String -> TagMap -> TagQueueRequest
```

Constructs TagQueueRequest from required parameters

#### `newTagQueueRequest'`

``` purescript
newTagQueueRequest' :: String -> TagMap -> ({ "QueueUrl" :: String, "Tags" :: TagMap } -> { "QueueUrl" :: String, "Tags" :: TagMap }) -> TagQueueRequest
```

Constructs TagQueueRequest's fields from required parameters

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `TooManyEntriesInBatchRequest`

``` purescript
newtype TooManyEntriesInBatchRequest
  = TooManyEntriesInBatchRequest NoArguments
```

<p>The batch request contains more entries than permissible.</p>

##### Instances
``` purescript
Newtype TooManyEntriesInBatchRequest _
Generic TooManyEntriesInBatchRequest _
Show TooManyEntriesInBatchRequest
Decode TooManyEntriesInBatchRequest
Encode TooManyEntriesInBatchRequest
```

#### `UnsupportedOperation`

``` purescript
newtype UnsupportedOperation
  = UnsupportedOperation NoArguments
```

<p>Error code 400. Unsupported operation.</p>

##### Instances
``` purescript
Newtype UnsupportedOperation _
Generic UnsupportedOperation _
Show UnsupportedOperation
Decode UnsupportedOperation
Encode UnsupportedOperation
```

#### `UntagQueueRequest`

``` purescript
newtype UntagQueueRequest
  = UntagQueueRequest { "QueueUrl" :: String, "TagKeys" :: TagKeyList }
```

##### Instances
``` purescript
Newtype UntagQueueRequest _
Generic UntagQueueRequest _
Show UntagQueueRequest
Decode UntagQueueRequest
Encode UntagQueueRequest
```

#### `newUntagQueueRequest`

``` purescript
newUntagQueueRequest :: String -> TagKeyList -> UntagQueueRequest
```

Constructs UntagQueueRequest from required parameters

#### `newUntagQueueRequest'`

``` purescript
newUntagQueueRequest' :: String -> TagKeyList -> ({ "QueueUrl" :: String, "TagKeys" :: TagKeyList } -> { "QueueUrl" :: String, "TagKeys" :: TagKeyList }) -> UntagQueueRequest
```

Constructs UntagQueueRequest's fields from required parameters


