
module AWS.SQS.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.SQS as SQS
import AWS.SQS.Types as SQSTypes


-- | <p>Adds a permission to a queue for a specific <a href="http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P">principal</a>. This allows sharing access to the queue.</p> <p>When you create a queue, you have full control access rights for the queue. Only you, the owner of the queue, can grant or deny permissions to the queue. For more information about these permissions, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html">Shared Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <note> <p> <code>AddPermission</code> writes an Amazon-SQS-generated policy. If you want to write your own policy, use <code> <a>SetQueueAttributes</a> </code> to upload your policy. For more information about writing your own policy, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AccessPolicyLanguage.html">Using The Access Policy Language</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=this</code> </p> <p> <code>&amp;Attribute.2=that</code> </p> </note>
addPermission :: forall eff. SQS.Service -> SQSTypes.AddPermissionRequest -> Aff (exception :: EXCEPTION | eff) Unit
addPermission (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addPermission"


-- | <p>Changes the visibility timeout of a specified message in a queue to a new value. The maximum allowed timeout value is 12 hours. Thus, you can't extend the timeout of a message in an existing queue to more than a total visibility timeout of 12 hours. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>For example, you have a message with a visibility timeout of 5 minutes. After 3 minutes, you call <code>ChangeMessageVisiblity</code> with a timeout of 10 minutes. At that time, the timeout for the message is extended by 10 minutes beyond the time of the <code>ChangeMessageVisibility</code> action. This results in a total visibility timeout of 13 minutes. You can continue to call the <code>ChangeMessageVisibility</code> to extend the visibility timeout to a maximum of 12 hours. If you try to extend the visibility timeout beyond 12 hours, your request is rejected.</p> <p>A message is considered to be <i>in flight</i> after it's received from a queue by a consumer, but not yet deleted from the queue.</p> <p>For standard queues, there can be a maximum of 120,000 inflight messages per queue. If you reach this limit, Amazon SQS returns the <code>OverLimit</code> error message. To avoid reaching the limit, you should delete messages from the queue after they're processed. You can also increase the number of queues you use to process your messages.</p> <p>For FIFO queues, there can be a maximum of 20,000 inflight messages per queue. If you reach this limit, Amazon SQS returns no error messages.</p> <important> <p>If you attempt to set the <code>VisibilityTimeout</code> to a value greater than the maximum time left, Amazon SQS returns an error. Amazon SQS doesn't automatically recalculate and increase the timeout to the maximum remaining time.</p> <p>Unlike with a queue, when you change the visibility timeout for a specific message the timeout value is applied immediately but isn't saved in memory for that message. If you don't delete a message after it is received, the visibility timeout for the message reverts to the original timeout value (not to the value you set using the <code>ChangeMessageVisibility</code> action) the next time the message is received.</p> </important>
changeMessageVisibility :: forall eff. SQS.Service -> SQSTypes.ChangeMessageVisibilityRequest -> Aff (exception :: EXCEPTION | eff) Unit
changeMessageVisibility (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "changeMessageVisibility"


-- | <p>Changes the visibility timeout of multiple messages. This is a batch version of <code> <a>ChangeMessageVisibility</a>.</code> The result of the action on each message is reported individually in the response. You can send up to 10 <code> <a>ChangeMessageVisibility</a> </code> requests with each <code>ChangeMessageVisibilityBatch</code> action.</p> <important> <p>Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p> </important> <note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=this</code> </p> <p> <code>&amp;Attribute.2=that</code> </p> </note>
changeMessageVisibilityBatch :: forall eff. SQS.Service -> SQSTypes.ChangeMessageVisibilityBatchRequest -> Aff (exception :: EXCEPTION | eff) SQSTypes.ChangeMessageVisibilityBatchResult
changeMessageVisibilityBatch (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "changeMessageVisibilityBatch"


-- | <p>Creates a new standard or FIFO queue. You can pass one or more attributes in the request. Keep the following caveats in mind:</p> <ul> <li> <p>If you don't specify the <code>FifoQueue</code> attribute, Amazon SQS creates a standard queue.</p> <note> <p> You can't change the queue type after you create it and you can't convert an existing standard queue into a FIFO queue. You must either create a new FIFO queue for your application or delete your existing standard queue and recreate it as a FIFO queue. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-moving"> Moving From a Standard Queue to a FIFO Queue</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p> </note> </li> <li> <p>If you don't provide a value for an attribute, the queue is created with the default value for the attribute.</p> </li> <li> <p>If you delete a queue, you must wait at least 60 seconds before creating a queue with the same name.</p> </li> </ul> <p>To successfully create a new queue, you must provide a queue name that adheres to the <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html">limits related to queues</a> and is unique within the scope of your queues.</p> <p>To get the queue URL, use the <code> <a>GetQueueUrl</a> </code> action. <code> <a>GetQueueUrl</a> </code> requires only the <code>QueueName</code> parameter. be aware of existing queue names:</p> <ul> <li> <p>If you provide the name of an existing queue along with the exact names and values of all the queue's attributes, <code>CreateQueue</code> returns the queue URL for the existing queue.</p> </li> <li> <p>If the queue name, attribute names, or attribute values don't match an existing queue, <code>CreateQueue</code> returns an error.</p> </li> </ul> <note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=this</code> </p> <p> <code>&amp;Attribute.2=that</code> </p> </note>
createQueue :: forall eff. SQS.Service -> SQSTypes.CreateQueueRequest -> Aff (exception :: EXCEPTION | eff) SQSTypes.CreateQueueResult
createQueue (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createQueue"


-- | <p>Deletes the specified message from the specified queue. You specify the message by using the message's <i>receipt handle</i> and not the <i>MessageId</i> you receive when you send the message. Even if the message is locked by another reader due to the visibility timeout setting, it is still deleted from the queue. If you leave a message in the queue for longer than the queue's configured retention period, Amazon SQS automatically deletes the message. </p> <note> <p> The receipt handle is associated with a specific instance of receiving the message. If you receive a message more than once, the receipt handle you get each time you receive the message is different. If you don't provide the most recently received receipt handle for the message when you use the <code>DeleteMessage</code> action, the request succeeds, but the message might not be deleted.</p> <p>For standard queues, it is possible to receive a message even after you delete it. This might happen on rare occasions if one of the servers storing a copy of the message is unavailable when you send the request to delete the message. The copy remains on the server and might be returned to you on a subsequent receive request. You should ensure that your application is idempotent, so that receiving a message more than once does not cause issues.</p> </note>
deleteMessage :: forall eff. SQS.Service -> SQSTypes.DeleteMessageRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteMessage (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteMessage"


-- | <p>Deletes up to ten messages from the specified queue. This is a batch version of <code> <a>DeleteMessage</a>.</code> The result of the action on each message is reported individually in the response.</p> <important> <p>Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p> </important> <note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=this</code> </p> <p> <code>&amp;Attribute.2=that</code> </p> </note>
deleteMessageBatch :: forall eff. SQS.Service -> SQSTypes.DeleteMessageBatchRequest -> Aff (exception :: EXCEPTION | eff) SQSTypes.DeleteMessageBatchResult
deleteMessageBatch (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteMessageBatch"


-- | <p>Deletes the queue specified by the <code>QueueUrl</code>, regardless of the queue's contents. If the specified queue doesn't exist, Amazon SQS returns a successful response.</p> <important> <p>Be careful with the <code>DeleteQueue</code> action: When you delete a queue, any messages in the queue are no longer available. </p> </important> <p>When you delete a queue, the deletion process takes up to 60 seconds. Requests you send involving that queue during the 60 seconds might succeed. For example, a <code> <a>SendMessage</a> </code> request might succeed, but after 60 seconds the queue and the message you sent no longer exist.</p> <p>When you delete a queue, you must wait at least 60 seconds before creating a queue with the same name. </p>
deleteQueue :: forall eff. SQS.Service -> SQSTypes.DeleteQueueRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteQueue (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteQueue"


-- | <p>Gets attributes for the specified queue.</p> <note> <p>To determine whether a queue is <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO</a>, you can check whether <code>QueueName</code> ends with the <code>.fifo</code> suffix.</p> </note> <note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=this</code> </p> <p> <code>&amp;Attribute.2=that</code> </p> </note>
getQueueAttributes :: forall eff. SQS.Service -> SQSTypes.GetQueueAttributesRequest -> Aff (exception :: EXCEPTION | eff) SQSTypes.GetQueueAttributesResult
getQueueAttributes (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getQueueAttributes"


-- | <p>Returns the URL of an existing queue. This action provides a simple way to retrieve the URL of an Amazon SQS queue.</p> <p>To access a queue that belongs to another AWS account, use the <code>QueueOwnerAWSAccountId</code> parameter to specify the account ID of the queue's owner. The queue's owner must grant you permission to access the queue. For more information about shared queue access, see <code> <a>AddPermission</a> </code> or see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html">Shared Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p>
getQueueUrl :: forall eff. SQS.Service -> SQSTypes.GetQueueUrlRequest -> Aff (exception :: EXCEPTION | eff) SQSTypes.GetQueueUrlResult
getQueueUrl (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getQueueUrl"


-- | <p>Returns a list of your queues that have the <code>RedrivePolicy</code> queue attribute configured with a dead-letter queue.</p> <p>For more information about using dead-letter queues, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead-Letter Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
listDeadLetterSourceQueues :: forall eff. SQS.Service -> SQSTypes.ListDeadLetterSourceQueuesRequest -> Aff (exception :: EXCEPTION | eff) SQSTypes.ListDeadLetterSourceQueuesResult
listDeadLetterSourceQueues (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listDeadLetterSourceQueues"


-- | <p>List all cost allocation tags added to the specified Amazon SQS queue. For an overview, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-tagging-queues.html">Tagging Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>When you use queue tags, keep the following guidelines in mind:</p> <ul> <li> <p>Adding more than 50 tags to a queue isn't recommended.</p> </li> <li> <p>Tags don't have any semantic meaning. Amazon SQS interprets tags as character strings.</p> </li> <li> <p>Tags are case-sensitive.</p> </li> <li> <p>A new tag with a key identical to that of an existing tag overwrites the existing tag.</p> </li> <li> <p>Tagging API actions are limited to 5 TPS per AWS account. If your application requires a higher throughput, file a <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=technical">technical support request</a>.</p> </li> </ul> <p>For a full list of tag restrictions, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html">Limits Related to Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
listQueueTags :: forall eff. SQS.Service -> SQSTypes.ListQueueTagsRequest -> Aff (exception :: EXCEPTION | eff) SQSTypes.ListQueueTagsResult
listQueueTags (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listQueueTags"


-- | <p>Returns a list of your queues. The maximum number of queues that can be returned is 1,000. If you specify a value for the optional <code>QueueNamePrefix</code> parameter, only queues with a name that begins with the specified value are returned.</p>
listQueues :: forall eff. SQS.Service -> SQSTypes.ListQueuesRequest -> Aff (exception :: EXCEPTION | eff) SQSTypes.ListQueuesResult
listQueues (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listQueues"


-- | <p>Deletes the messages in a queue specified by the <code>QueueURL</code> parameter.</p> <important> <p>When you use the <code>PurgeQueue</code> action, you can't retrieve a message deleted from a queue.</p> </important> <p>When you purge a queue, the message deletion process takes up to 60 seconds. All messages sent to the queue before calling the <code>PurgeQueue</code> action are deleted. Messages sent to the queue while it is being purged might be deleted. While the queue is being purged, messages sent to the queue before <code>PurgeQueue</code> is called might be received, but are deleted within the next minute.</p>
purgeQueue :: forall eff. SQS.Service -> SQSTypes.PurgeQueueRequest -> Aff (exception :: EXCEPTION | eff) Unit
purgeQueue (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "purgeQueue"


-- | <p>Retrieves one or more messages (up to 10), from the specified queue. Using the <code>WaitTimeSeconds</code> parameter enables long-poll support. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html">Amazon SQS Long Polling</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p> <p>Short poll is the default behavior where a weighted random set of machines is sampled on a <code>ReceiveMessage</code> call. Thus, only the messages on the sampled machines are returned. If the number of messages in the queue is small (fewer than 1,000), you most likely get fewer messages than you requested per <code>ReceiveMessage</code> call. If the number of messages in the queue is extremely small, you might not receive any messages in a particular <code>ReceiveMessage</code> response. If this happens, repeat the request. </p> <p>For each message returned, the response includes the following:</p> <ul> <li> <p>The message body.</p> </li> <li> <p>An MD5 digest of the message body. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p> </li> <li> <p>The <code>MessageId</code> you received when you sent the message to the queue.</p> </li> <li> <p>The receipt handle.</p> </li> <li> <p>The message attributes.</p> </li> <li> <p>An MD5 digest of the message attributes.</p> </li> </ul> <p>The receipt handle is the identifier you must provide when deleting the message. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html">Queue and Message Identifiers</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>You can provide the <code>VisibilityTimeout</code> parameter in your request. The parameter is applied to the messages that Amazon SQS returns in the response. If you don't include the parameter, the overall visibility timeout for the queue is used for the returned messages. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>A message that isn't deleted or a message whose visibility isn't extended before the visibility timeout expires counts as a failed receive. Depending on the configuration of the queue, the message might be sent to the dead-letter queue.</p> <note> <p>In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.</p> </note>
receiveMessage :: forall eff. SQS.Service -> SQSTypes.ReceiveMessageRequest -> Aff (exception :: EXCEPTION | eff) SQSTypes.ReceiveMessageResult
receiveMessage (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "receiveMessage"


-- | <p>Revokes any permissions in the queue policy that matches the specified <code>Label</code> parameter. Only the owner of the queue can remove permissions.</p>
removePermission :: forall eff. SQS.Service -> SQSTypes.RemovePermissionRequest -> Aff (exception :: EXCEPTION | eff) Unit
removePermission (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removePermission"


-- | <p>Delivers a message to the specified queue.</p> <important> <p>A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:</p> <p> <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code> to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> | <code>#x10000</code> to <code>#x10FFFF</code> </p> <p>Any characters not included in this list will be rejected. For more information, see the <a href="http://www.w3.org/TR/REC-xml/#charsets">W3C specification for characters</a>.</p> </important>
sendMessage :: forall eff. SQS.Service -> SQSTypes.SendMessageRequest -> Aff (exception :: EXCEPTION | eff) SQSTypes.SendMessageResult
sendMessage (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "sendMessage"


-- | <p>Delivers up to ten messages to the specified queue. This is a batch version of <code> <a>SendMessage</a>.</code> For a FIFO queue, multiple messages within a single batch are enqueued in the order they are sent.</p> <p>The result of sending each message is reported individually in the response. Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p> <p>The maximum allowed individual message size and the maximum total payload size (the sum of the individual lengths of all of the batched messages) are both 256 KB (262,144 bytes).</p> <important> <p>A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:</p> <p> <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code> to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> | <code>#x10000</code> to <code>#x10FFFF</code> </p> <p>Any characters not included in this list will be rejected. For more information, see the <a href="http://www.w3.org/TR/REC-xml/#charsets">W3C specification for characters</a>.</p> </important> <p>If you don't specify the <code>DelaySeconds</code> parameter for an entry, Amazon SQS uses the default value for the queue.</p> <note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=this</code> </p> <p> <code>&amp;Attribute.2=that</code> </p> </note>
sendMessageBatch :: forall eff. SQS.Service -> SQSTypes.SendMessageBatchRequest -> Aff (exception :: EXCEPTION | eff) SQSTypes.SendMessageBatchResult
sendMessageBatch (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "sendMessageBatch"


-- | <p>Sets the value of one or more queue attributes. When you change a queue's attributes, the change can take up to 60 seconds for most of the attributes to propagate throughout the Amazon SQS system. Changes made to the <code>MessageRetentionPeriod</code> attribute can take up to 15 minutes.</p> <note> <p>In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.</p> </note>
setQueueAttributes :: forall eff. SQS.Service -> SQSTypes.SetQueueAttributesRequest -> Aff (exception :: EXCEPTION | eff) Unit
setQueueAttributes (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setQueueAttributes"


-- | <p>Add cost allocation tags to the specified Amazon SQS queue. For an overview, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-tagging-queues.html">Tagging Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>When you use queue tags, keep the following guidelines in mind:</p> <ul> <li> <p>Adding more than 50 tags to a queue isn't recommended.</p> </li> <li> <p>Tags don't have any semantic meaning. Amazon SQS interprets tags as character strings.</p> </li> <li> <p>Tags are case-sensitive.</p> </li> <li> <p>A new tag with a key identical to that of an existing tag overwrites the existing tag.</p> </li> <li> <p>Tagging API actions are limited to 5 TPS per AWS account. If your application requires a higher throughput, file a <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=technical">technical support request</a>.</p> </li> </ul> <p>For a full list of tag restrictions, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html">Limits Related to Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
tagQueue :: forall eff. SQS.Service -> SQSTypes.TagQueueRequest -> Aff (exception :: EXCEPTION | eff) Unit
tagQueue (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "tagQueue"


-- | <p>Remove cost allocation tags from the specified Amazon SQS queue. For an overview, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-tagging-queues.html">Tagging Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>When you use queue tags, keep the following guidelines in mind:</p> <ul> <li> <p>Adding more than 50 tags to a queue isn't recommended.</p> </li> <li> <p>Tags don't have any semantic meaning. Amazon SQS interprets tags as character strings.</p> </li> <li> <p>Tags are case-sensitive.</p> </li> <li> <p>A new tag with a key identical to that of an existing tag overwrites the existing tag.</p> </li> <li> <p>Tagging API actions are limited to 5 TPS per AWS account. If your application requires a higher throughput, file a <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=technical">technical support request</a>.</p> </li> </ul> <p>For a full list of tag restrictions, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html">Limits Related to Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
untagQueue :: forall eff. SQS.Service -> SQSTypes.UntagQueueRequest -> Aff (exception :: EXCEPTION | eff) Unit
untagQueue (SQS.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "untagQueue"
