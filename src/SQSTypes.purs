
module AWS.SQS.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AWSAccountIdList = AWSAccountIdList (Array String)
derive instance newtypeAWSAccountIdList :: Newtype AWSAccountIdList _
derive instance repGenericAWSAccountIdList :: Generic AWSAccountIdList _
instance showAWSAccountIdList :: Show AWSAccountIdList where show = genericShow
instance decodeAWSAccountIdList :: Decode AWSAccountIdList where decode = genericDecode options
instance encodeAWSAccountIdList :: Encode AWSAccountIdList where encode = genericEncode options



newtype ActionNameList = ActionNameList (Array String)
derive instance newtypeActionNameList :: Newtype ActionNameList _
derive instance repGenericActionNameList :: Generic ActionNameList _
instance showActionNameList :: Show ActionNameList where show = genericShow
instance decodeActionNameList :: Decode ActionNameList where decode = genericDecode options
instance encodeActionNameList :: Encode ActionNameList where encode = genericEncode options



-- | <p/>
newtype AddPermissionRequest = AddPermissionRequest 
  { "QueueUrl" :: (String)
  , "Label" :: (String)
  , "AWSAccountIds" :: (AWSAccountIdList)
  , "Actions" :: (ActionNameList)
  }
derive instance newtypeAddPermissionRequest :: Newtype AddPermissionRequest _
derive instance repGenericAddPermissionRequest :: Generic AddPermissionRequest _
instance showAddPermissionRequest :: Show AddPermissionRequest where show = genericShow
instance decodeAddPermissionRequest :: Decode AddPermissionRequest where decode = genericDecode options
instance encodeAddPermissionRequest :: Encode AddPermissionRequest where encode = genericEncode options

-- | Constructs AddPermissionRequest from required parameters
newAddPermissionRequest :: AWSAccountIdList -> ActionNameList -> String -> String -> AddPermissionRequest
newAddPermissionRequest _AWSAccountIds _Actions _Label _QueueUrl = AddPermissionRequest { "AWSAccountIds": _AWSAccountIds, "Actions": _Actions, "Label": _Label, "QueueUrl": _QueueUrl }

-- | Constructs AddPermissionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddPermissionRequest' :: AWSAccountIdList -> ActionNameList -> String -> String -> ( { "QueueUrl" :: (String) , "Label" :: (String) , "AWSAccountIds" :: (AWSAccountIdList) , "Actions" :: (ActionNameList) } -> {"QueueUrl" :: (String) , "Label" :: (String) , "AWSAccountIds" :: (AWSAccountIdList) , "Actions" :: (ActionNameList) } ) -> AddPermissionRequest
newAddPermissionRequest' _AWSAccountIds _Actions _Label _QueueUrl customize = (AddPermissionRequest <<< customize) { "AWSAccountIds": _AWSAccountIds, "Actions": _Actions, "Label": _Label, "QueueUrl": _QueueUrl }



newtype AttributeNameList = AttributeNameList (Array QueueAttributeName)
derive instance newtypeAttributeNameList :: Newtype AttributeNameList _
derive instance repGenericAttributeNameList :: Generic AttributeNameList _
instance showAttributeNameList :: Show AttributeNameList where show = genericShow
instance decodeAttributeNameList :: Decode AttributeNameList where decode = genericDecode options
instance encodeAttributeNameList :: Encode AttributeNameList where encode = genericEncode options



-- | <p>Two or more batch entries in the request have the same <code>Id</code>.</p>
newtype BatchEntryIdsNotDistinct = BatchEntryIdsNotDistinct Types.NoArguments
derive instance newtypeBatchEntryIdsNotDistinct :: Newtype BatchEntryIdsNotDistinct _
derive instance repGenericBatchEntryIdsNotDistinct :: Generic BatchEntryIdsNotDistinct _
instance showBatchEntryIdsNotDistinct :: Show BatchEntryIdsNotDistinct where show = genericShow
instance decodeBatchEntryIdsNotDistinct :: Decode BatchEntryIdsNotDistinct where decode = genericDecode options
instance encodeBatchEntryIdsNotDistinct :: Encode BatchEntryIdsNotDistinct where encode = genericEncode options



-- | <p>The length of all the messages put together is more than the limit.</p>
newtype BatchRequestTooLong = BatchRequestTooLong Types.NoArguments
derive instance newtypeBatchRequestTooLong :: Newtype BatchRequestTooLong _
derive instance repGenericBatchRequestTooLong :: Generic BatchRequestTooLong _
instance showBatchRequestTooLong :: Show BatchRequestTooLong where show = genericShow
instance decodeBatchRequestTooLong :: Decode BatchRequestTooLong where decode = genericDecode options
instance encodeBatchRequestTooLong :: Encode BatchRequestTooLong where encode = genericEncode options



-- | <p>This is used in the responses of batch API to give a detailed description of the result of an action on each entry in the request.</p>
newtype BatchResultErrorEntry = BatchResultErrorEntry 
  { "Id" :: (String)
  , "SenderFault" :: (Boolean)
  , "Code" :: (String)
  , "Message" :: NullOrUndefined (String)
  }
derive instance newtypeBatchResultErrorEntry :: Newtype BatchResultErrorEntry _
derive instance repGenericBatchResultErrorEntry :: Generic BatchResultErrorEntry _
instance showBatchResultErrorEntry :: Show BatchResultErrorEntry where show = genericShow
instance decodeBatchResultErrorEntry :: Decode BatchResultErrorEntry where decode = genericDecode options
instance encodeBatchResultErrorEntry :: Encode BatchResultErrorEntry where encode = genericEncode options

-- | Constructs BatchResultErrorEntry from required parameters
newBatchResultErrorEntry :: String -> String -> Boolean -> BatchResultErrorEntry
newBatchResultErrorEntry _Code _Id _SenderFault = BatchResultErrorEntry { "Code": _Code, "Id": _Id, "SenderFault": _SenderFault, "Message": (NullOrUndefined Nothing) }

-- | Constructs BatchResultErrorEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchResultErrorEntry' :: String -> String -> Boolean -> ( { "Id" :: (String) , "SenderFault" :: (Boolean) , "Code" :: (String) , "Message" :: NullOrUndefined (String) } -> {"Id" :: (String) , "SenderFault" :: (Boolean) , "Code" :: (String) , "Message" :: NullOrUndefined (String) } ) -> BatchResultErrorEntry
newBatchResultErrorEntry' _Code _Id _SenderFault customize = (BatchResultErrorEntry <<< customize) { "Code": _Code, "Id": _Id, "SenderFault": _SenderFault, "Message": (NullOrUndefined Nothing) }



newtype BatchResultErrorEntryList = BatchResultErrorEntryList (Array BatchResultErrorEntry)
derive instance newtypeBatchResultErrorEntryList :: Newtype BatchResultErrorEntryList _
derive instance repGenericBatchResultErrorEntryList :: Generic BatchResultErrorEntryList _
instance showBatchResultErrorEntryList :: Show BatchResultErrorEntryList where show = genericShow
instance decodeBatchResultErrorEntryList :: Decode BatchResultErrorEntryList where decode = genericDecode options
instance encodeBatchResultErrorEntryList :: Encode BatchResultErrorEntryList where encode = genericEncode options



newtype Binary = Binary String
derive instance newtypeBinary :: Newtype Binary _
derive instance repGenericBinary :: Generic Binary _
instance showBinary :: Show Binary where show = genericShow
instance decodeBinary :: Decode Binary where decode = genericDecode options
instance encodeBinary :: Encode Binary where encode = genericEncode options



newtype BinaryList = BinaryList (Array Binary)
derive instance newtypeBinaryList :: Newtype BinaryList _
derive instance repGenericBinaryList :: Generic BinaryList _
instance showBinaryList :: Show BinaryList where show = genericShow
instance decodeBinaryList :: Decode BinaryList where decode = genericDecode options
instance encodeBinaryList :: Encode BinaryList where encode = genericEncode options



-- | <p/>
newtype ChangeMessageVisibilityBatchRequest = ChangeMessageVisibilityBatchRequest 
  { "QueueUrl" :: (String)
  , "Entries" :: (ChangeMessageVisibilityBatchRequestEntryList)
  }
derive instance newtypeChangeMessageVisibilityBatchRequest :: Newtype ChangeMessageVisibilityBatchRequest _
derive instance repGenericChangeMessageVisibilityBatchRequest :: Generic ChangeMessageVisibilityBatchRequest _
instance showChangeMessageVisibilityBatchRequest :: Show ChangeMessageVisibilityBatchRequest where show = genericShow
instance decodeChangeMessageVisibilityBatchRequest :: Decode ChangeMessageVisibilityBatchRequest where decode = genericDecode options
instance encodeChangeMessageVisibilityBatchRequest :: Encode ChangeMessageVisibilityBatchRequest where encode = genericEncode options

-- | Constructs ChangeMessageVisibilityBatchRequest from required parameters
newChangeMessageVisibilityBatchRequest :: ChangeMessageVisibilityBatchRequestEntryList -> String -> ChangeMessageVisibilityBatchRequest
newChangeMessageVisibilityBatchRequest _Entries _QueueUrl = ChangeMessageVisibilityBatchRequest { "Entries": _Entries, "QueueUrl": _QueueUrl }

-- | Constructs ChangeMessageVisibilityBatchRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangeMessageVisibilityBatchRequest' :: ChangeMessageVisibilityBatchRequestEntryList -> String -> ( { "QueueUrl" :: (String) , "Entries" :: (ChangeMessageVisibilityBatchRequestEntryList) } -> {"QueueUrl" :: (String) , "Entries" :: (ChangeMessageVisibilityBatchRequestEntryList) } ) -> ChangeMessageVisibilityBatchRequest
newChangeMessageVisibilityBatchRequest' _Entries _QueueUrl customize = (ChangeMessageVisibilityBatchRequest <<< customize) { "Entries": _Entries, "QueueUrl": _QueueUrl }



-- | <p>Encloses a receipt handle and an entry id for each message in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p> <important> <p>All of the following list parameters must be prefixed with <code>ChangeMessageVisibilityBatchRequestEntry.n</code>, where <code>n</code> is an integer value starting with <code>1</code>. For example, a parameter list for this action might look like this:</p> </important> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2</code> </p> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=&lt;replaceable&gt;Your_Receipt_Handle&lt;/replaceable&gt;</code> </p> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45</code> </p>
newtype ChangeMessageVisibilityBatchRequestEntry = ChangeMessageVisibilityBatchRequestEntry 
  { "Id" :: (String)
  , "ReceiptHandle" :: (String)
  , "VisibilityTimeout" :: NullOrUndefined (Int)
  }
derive instance newtypeChangeMessageVisibilityBatchRequestEntry :: Newtype ChangeMessageVisibilityBatchRequestEntry _
derive instance repGenericChangeMessageVisibilityBatchRequestEntry :: Generic ChangeMessageVisibilityBatchRequestEntry _
instance showChangeMessageVisibilityBatchRequestEntry :: Show ChangeMessageVisibilityBatchRequestEntry where show = genericShow
instance decodeChangeMessageVisibilityBatchRequestEntry :: Decode ChangeMessageVisibilityBatchRequestEntry where decode = genericDecode options
instance encodeChangeMessageVisibilityBatchRequestEntry :: Encode ChangeMessageVisibilityBatchRequestEntry where encode = genericEncode options

-- | Constructs ChangeMessageVisibilityBatchRequestEntry from required parameters
newChangeMessageVisibilityBatchRequestEntry :: String -> String -> ChangeMessageVisibilityBatchRequestEntry
newChangeMessageVisibilityBatchRequestEntry _Id _ReceiptHandle = ChangeMessageVisibilityBatchRequestEntry { "Id": _Id, "ReceiptHandle": _ReceiptHandle, "VisibilityTimeout": (NullOrUndefined Nothing) }

-- | Constructs ChangeMessageVisibilityBatchRequestEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangeMessageVisibilityBatchRequestEntry' :: String -> String -> ( { "Id" :: (String) , "ReceiptHandle" :: (String) , "VisibilityTimeout" :: NullOrUndefined (Int) } -> {"Id" :: (String) , "ReceiptHandle" :: (String) , "VisibilityTimeout" :: NullOrUndefined (Int) } ) -> ChangeMessageVisibilityBatchRequestEntry
newChangeMessageVisibilityBatchRequestEntry' _Id _ReceiptHandle customize = (ChangeMessageVisibilityBatchRequestEntry <<< customize) { "Id": _Id, "ReceiptHandle": _ReceiptHandle, "VisibilityTimeout": (NullOrUndefined Nothing) }



newtype ChangeMessageVisibilityBatchRequestEntryList = ChangeMessageVisibilityBatchRequestEntryList (Array ChangeMessageVisibilityBatchRequestEntry)
derive instance newtypeChangeMessageVisibilityBatchRequestEntryList :: Newtype ChangeMessageVisibilityBatchRequestEntryList _
derive instance repGenericChangeMessageVisibilityBatchRequestEntryList :: Generic ChangeMessageVisibilityBatchRequestEntryList _
instance showChangeMessageVisibilityBatchRequestEntryList :: Show ChangeMessageVisibilityBatchRequestEntryList where show = genericShow
instance decodeChangeMessageVisibilityBatchRequestEntryList :: Decode ChangeMessageVisibilityBatchRequestEntryList where decode = genericDecode options
instance encodeChangeMessageVisibilityBatchRequestEntryList :: Encode ChangeMessageVisibilityBatchRequestEntryList where encode = genericEncode options



-- | <p>For each message in the batch, the response contains a <code> <a>ChangeMessageVisibilityBatchResultEntry</a> </code> tag if the message succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.</p>
newtype ChangeMessageVisibilityBatchResult = ChangeMessageVisibilityBatchResult 
  { "Successful" :: (ChangeMessageVisibilityBatchResultEntryList)
  , "Failed" :: (BatchResultErrorEntryList)
  }
derive instance newtypeChangeMessageVisibilityBatchResult :: Newtype ChangeMessageVisibilityBatchResult _
derive instance repGenericChangeMessageVisibilityBatchResult :: Generic ChangeMessageVisibilityBatchResult _
instance showChangeMessageVisibilityBatchResult :: Show ChangeMessageVisibilityBatchResult where show = genericShow
instance decodeChangeMessageVisibilityBatchResult :: Decode ChangeMessageVisibilityBatchResult where decode = genericDecode options
instance encodeChangeMessageVisibilityBatchResult :: Encode ChangeMessageVisibilityBatchResult where encode = genericEncode options

-- | Constructs ChangeMessageVisibilityBatchResult from required parameters
newChangeMessageVisibilityBatchResult :: BatchResultErrorEntryList -> ChangeMessageVisibilityBatchResultEntryList -> ChangeMessageVisibilityBatchResult
newChangeMessageVisibilityBatchResult _Failed _Successful = ChangeMessageVisibilityBatchResult { "Failed": _Failed, "Successful": _Successful }

-- | Constructs ChangeMessageVisibilityBatchResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangeMessageVisibilityBatchResult' :: BatchResultErrorEntryList -> ChangeMessageVisibilityBatchResultEntryList -> ( { "Successful" :: (ChangeMessageVisibilityBatchResultEntryList) , "Failed" :: (BatchResultErrorEntryList) } -> {"Successful" :: (ChangeMessageVisibilityBatchResultEntryList) , "Failed" :: (BatchResultErrorEntryList) } ) -> ChangeMessageVisibilityBatchResult
newChangeMessageVisibilityBatchResult' _Failed _Successful customize = (ChangeMessageVisibilityBatchResult <<< customize) { "Failed": _Failed, "Successful": _Successful }



-- | <p>Encloses the <code>Id</code> of an entry in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p>
newtype ChangeMessageVisibilityBatchResultEntry = ChangeMessageVisibilityBatchResultEntry 
  { "Id" :: (String)
  }
derive instance newtypeChangeMessageVisibilityBatchResultEntry :: Newtype ChangeMessageVisibilityBatchResultEntry _
derive instance repGenericChangeMessageVisibilityBatchResultEntry :: Generic ChangeMessageVisibilityBatchResultEntry _
instance showChangeMessageVisibilityBatchResultEntry :: Show ChangeMessageVisibilityBatchResultEntry where show = genericShow
instance decodeChangeMessageVisibilityBatchResultEntry :: Decode ChangeMessageVisibilityBatchResultEntry where decode = genericDecode options
instance encodeChangeMessageVisibilityBatchResultEntry :: Encode ChangeMessageVisibilityBatchResultEntry where encode = genericEncode options

-- | Constructs ChangeMessageVisibilityBatchResultEntry from required parameters
newChangeMessageVisibilityBatchResultEntry :: String -> ChangeMessageVisibilityBatchResultEntry
newChangeMessageVisibilityBatchResultEntry _Id = ChangeMessageVisibilityBatchResultEntry { "Id": _Id }

-- | Constructs ChangeMessageVisibilityBatchResultEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangeMessageVisibilityBatchResultEntry' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> ChangeMessageVisibilityBatchResultEntry
newChangeMessageVisibilityBatchResultEntry' _Id customize = (ChangeMessageVisibilityBatchResultEntry <<< customize) { "Id": _Id }



newtype ChangeMessageVisibilityBatchResultEntryList = ChangeMessageVisibilityBatchResultEntryList (Array ChangeMessageVisibilityBatchResultEntry)
derive instance newtypeChangeMessageVisibilityBatchResultEntryList :: Newtype ChangeMessageVisibilityBatchResultEntryList _
derive instance repGenericChangeMessageVisibilityBatchResultEntryList :: Generic ChangeMessageVisibilityBatchResultEntryList _
instance showChangeMessageVisibilityBatchResultEntryList :: Show ChangeMessageVisibilityBatchResultEntryList where show = genericShow
instance decodeChangeMessageVisibilityBatchResultEntryList :: Decode ChangeMessageVisibilityBatchResultEntryList where decode = genericDecode options
instance encodeChangeMessageVisibilityBatchResultEntryList :: Encode ChangeMessageVisibilityBatchResultEntryList where encode = genericEncode options



newtype ChangeMessageVisibilityRequest = ChangeMessageVisibilityRequest 
  { "QueueUrl" :: (String)
  , "ReceiptHandle" :: (String)
  , "VisibilityTimeout" :: (Int)
  }
derive instance newtypeChangeMessageVisibilityRequest :: Newtype ChangeMessageVisibilityRequest _
derive instance repGenericChangeMessageVisibilityRequest :: Generic ChangeMessageVisibilityRequest _
instance showChangeMessageVisibilityRequest :: Show ChangeMessageVisibilityRequest where show = genericShow
instance decodeChangeMessageVisibilityRequest :: Decode ChangeMessageVisibilityRequest where decode = genericDecode options
instance encodeChangeMessageVisibilityRequest :: Encode ChangeMessageVisibilityRequest where encode = genericEncode options

-- | Constructs ChangeMessageVisibilityRequest from required parameters
newChangeMessageVisibilityRequest :: String -> String -> Int -> ChangeMessageVisibilityRequest
newChangeMessageVisibilityRequest _QueueUrl _ReceiptHandle _VisibilityTimeout = ChangeMessageVisibilityRequest { "QueueUrl": _QueueUrl, "ReceiptHandle": _ReceiptHandle, "VisibilityTimeout": _VisibilityTimeout }

-- | Constructs ChangeMessageVisibilityRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangeMessageVisibilityRequest' :: String -> String -> Int -> ( { "QueueUrl" :: (String) , "ReceiptHandle" :: (String) , "VisibilityTimeout" :: (Int) } -> {"QueueUrl" :: (String) , "ReceiptHandle" :: (String) , "VisibilityTimeout" :: (Int) } ) -> ChangeMessageVisibilityRequest
newChangeMessageVisibilityRequest' _QueueUrl _ReceiptHandle _VisibilityTimeout customize = (ChangeMessageVisibilityRequest <<< customize) { "QueueUrl": _QueueUrl, "ReceiptHandle": _ReceiptHandle, "VisibilityTimeout": _VisibilityTimeout }



-- | <p/>
newtype CreateQueueRequest = CreateQueueRequest 
  { "QueueName" :: (String)
  , "Attributes" :: NullOrUndefined (QueueAttributeMap)
  }
derive instance newtypeCreateQueueRequest :: Newtype CreateQueueRequest _
derive instance repGenericCreateQueueRequest :: Generic CreateQueueRequest _
instance showCreateQueueRequest :: Show CreateQueueRequest where show = genericShow
instance decodeCreateQueueRequest :: Decode CreateQueueRequest where decode = genericDecode options
instance encodeCreateQueueRequest :: Encode CreateQueueRequest where encode = genericEncode options

-- | Constructs CreateQueueRequest from required parameters
newCreateQueueRequest :: String -> CreateQueueRequest
newCreateQueueRequest _QueueName = CreateQueueRequest { "QueueName": _QueueName, "Attributes": (NullOrUndefined Nothing) }

-- | Constructs CreateQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateQueueRequest' :: String -> ( { "QueueName" :: (String) , "Attributes" :: NullOrUndefined (QueueAttributeMap) } -> {"QueueName" :: (String) , "Attributes" :: NullOrUndefined (QueueAttributeMap) } ) -> CreateQueueRequest
newCreateQueueRequest' _QueueName customize = (CreateQueueRequest <<< customize) { "QueueName": _QueueName, "Attributes": (NullOrUndefined Nothing) }



-- | <p>Returns the <code>QueueUrl</code> attribute of the created queue.</p>
newtype CreateQueueResult = CreateQueueResult 
  { "QueueUrl" :: NullOrUndefined (String)
  }
derive instance newtypeCreateQueueResult :: Newtype CreateQueueResult _
derive instance repGenericCreateQueueResult :: Generic CreateQueueResult _
instance showCreateQueueResult :: Show CreateQueueResult where show = genericShow
instance decodeCreateQueueResult :: Decode CreateQueueResult where decode = genericDecode options
instance encodeCreateQueueResult :: Encode CreateQueueResult where encode = genericEncode options

-- | Constructs CreateQueueResult from required parameters
newCreateQueueResult :: CreateQueueResult
newCreateQueueResult  = CreateQueueResult { "QueueUrl": (NullOrUndefined Nothing) }

-- | Constructs CreateQueueResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateQueueResult' :: ( { "QueueUrl" :: NullOrUndefined (String) } -> {"QueueUrl" :: NullOrUndefined (String) } ) -> CreateQueueResult
newCreateQueueResult'  customize = (CreateQueueResult <<< customize) { "QueueUrl": (NullOrUndefined Nothing) }



-- | <p/>
newtype DeleteMessageBatchRequest = DeleteMessageBatchRequest 
  { "QueueUrl" :: (String)
  , "Entries" :: (DeleteMessageBatchRequestEntryList)
  }
derive instance newtypeDeleteMessageBatchRequest :: Newtype DeleteMessageBatchRequest _
derive instance repGenericDeleteMessageBatchRequest :: Generic DeleteMessageBatchRequest _
instance showDeleteMessageBatchRequest :: Show DeleteMessageBatchRequest where show = genericShow
instance decodeDeleteMessageBatchRequest :: Decode DeleteMessageBatchRequest where decode = genericDecode options
instance encodeDeleteMessageBatchRequest :: Encode DeleteMessageBatchRequest where encode = genericEncode options

-- | Constructs DeleteMessageBatchRequest from required parameters
newDeleteMessageBatchRequest :: DeleteMessageBatchRequestEntryList -> String -> DeleteMessageBatchRequest
newDeleteMessageBatchRequest _Entries _QueueUrl = DeleteMessageBatchRequest { "Entries": _Entries, "QueueUrl": _QueueUrl }

-- | Constructs DeleteMessageBatchRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMessageBatchRequest' :: DeleteMessageBatchRequestEntryList -> String -> ( { "QueueUrl" :: (String) , "Entries" :: (DeleteMessageBatchRequestEntryList) } -> {"QueueUrl" :: (String) , "Entries" :: (DeleteMessageBatchRequestEntryList) } ) -> DeleteMessageBatchRequest
newDeleteMessageBatchRequest' _Entries _QueueUrl customize = (DeleteMessageBatchRequest <<< customize) { "Entries": _Entries, "QueueUrl": _QueueUrl }



-- | <p>Encloses a receipt handle and an identifier for it.</p>
newtype DeleteMessageBatchRequestEntry = DeleteMessageBatchRequestEntry 
  { "Id" :: (String)
  , "ReceiptHandle" :: (String)
  }
derive instance newtypeDeleteMessageBatchRequestEntry :: Newtype DeleteMessageBatchRequestEntry _
derive instance repGenericDeleteMessageBatchRequestEntry :: Generic DeleteMessageBatchRequestEntry _
instance showDeleteMessageBatchRequestEntry :: Show DeleteMessageBatchRequestEntry where show = genericShow
instance decodeDeleteMessageBatchRequestEntry :: Decode DeleteMessageBatchRequestEntry where decode = genericDecode options
instance encodeDeleteMessageBatchRequestEntry :: Encode DeleteMessageBatchRequestEntry where encode = genericEncode options

-- | Constructs DeleteMessageBatchRequestEntry from required parameters
newDeleteMessageBatchRequestEntry :: String -> String -> DeleteMessageBatchRequestEntry
newDeleteMessageBatchRequestEntry _Id _ReceiptHandle = DeleteMessageBatchRequestEntry { "Id": _Id, "ReceiptHandle": _ReceiptHandle }

-- | Constructs DeleteMessageBatchRequestEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMessageBatchRequestEntry' :: String -> String -> ( { "Id" :: (String) , "ReceiptHandle" :: (String) } -> {"Id" :: (String) , "ReceiptHandle" :: (String) } ) -> DeleteMessageBatchRequestEntry
newDeleteMessageBatchRequestEntry' _Id _ReceiptHandle customize = (DeleteMessageBatchRequestEntry <<< customize) { "Id": _Id, "ReceiptHandle": _ReceiptHandle }



newtype DeleteMessageBatchRequestEntryList = DeleteMessageBatchRequestEntryList (Array DeleteMessageBatchRequestEntry)
derive instance newtypeDeleteMessageBatchRequestEntryList :: Newtype DeleteMessageBatchRequestEntryList _
derive instance repGenericDeleteMessageBatchRequestEntryList :: Generic DeleteMessageBatchRequestEntryList _
instance showDeleteMessageBatchRequestEntryList :: Show DeleteMessageBatchRequestEntryList where show = genericShow
instance decodeDeleteMessageBatchRequestEntryList :: Decode DeleteMessageBatchRequestEntryList where decode = genericDecode options
instance encodeDeleteMessageBatchRequestEntryList :: Encode DeleteMessageBatchRequestEntryList where encode = genericEncode options



-- | <p>For each message in the batch, the response contains a <code> <a>DeleteMessageBatchResultEntry</a> </code> tag if the message is deleted or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message can't be deleted.</p>
newtype DeleteMessageBatchResult = DeleteMessageBatchResult 
  { "Successful" :: (DeleteMessageBatchResultEntryList)
  , "Failed" :: (BatchResultErrorEntryList)
  }
derive instance newtypeDeleteMessageBatchResult :: Newtype DeleteMessageBatchResult _
derive instance repGenericDeleteMessageBatchResult :: Generic DeleteMessageBatchResult _
instance showDeleteMessageBatchResult :: Show DeleteMessageBatchResult where show = genericShow
instance decodeDeleteMessageBatchResult :: Decode DeleteMessageBatchResult where decode = genericDecode options
instance encodeDeleteMessageBatchResult :: Encode DeleteMessageBatchResult where encode = genericEncode options

-- | Constructs DeleteMessageBatchResult from required parameters
newDeleteMessageBatchResult :: BatchResultErrorEntryList -> DeleteMessageBatchResultEntryList -> DeleteMessageBatchResult
newDeleteMessageBatchResult _Failed _Successful = DeleteMessageBatchResult { "Failed": _Failed, "Successful": _Successful }

-- | Constructs DeleteMessageBatchResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMessageBatchResult' :: BatchResultErrorEntryList -> DeleteMessageBatchResultEntryList -> ( { "Successful" :: (DeleteMessageBatchResultEntryList) , "Failed" :: (BatchResultErrorEntryList) } -> {"Successful" :: (DeleteMessageBatchResultEntryList) , "Failed" :: (BatchResultErrorEntryList) } ) -> DeleteMessageBatchResult
newDeleteMessageBatchResult' _Failed _Successful customize = (DeleteMessageBatchResult <<< customize) { "Failed": _Failed, "Successful": _Successful }



-- | <p>Encloses the <code>Id</code> of an entry in <code> <a>DeleteMessageBatch</a>.</code> </p>
newtype DeleteMessageBatchResultEntry = DeleteMessageBatchResultEntry 
  { "Id" :: (String)
  }
derive instance newtypeDeleteMessageBatchResultEntry :: Newtype DeleteMessageBatchResultEntry _
derive instance repGenericDeleteMessageBatchResultEntry :: Generic DeleteMessageBatchResultEntry _
instance showDeleteMessageBatchResultEntry :: Show DeleteMessageBatchResultEntry where show = genericShow
instance decodeDeleteMessageBatchResultEntry :: Decode DeleteMessageBatchResultEntry where decode = genericDecode options
instance encodeDeleteMessageBatchResultEntry :: Encode DeleteMessageBatchResultEntry where encode = genericEncode options

-- | Constructs DeleteMessageBatchResultEntry from required parameters
newDeleteMessageBatchResultEntry :: String -> DeleteMessageBatchResultEntry
newDeleteMessageBatchResultEntry _Id = DeleteMessageBatchResultEntry { "Id": _Id }

-- | Constructs DeleteMessageBatchResultEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMessageBatchResultEntry' :: String -> ( { "Id" :: (String) } -> {"Id" :: (String) } ) -> DeleteMessageBatchResultEntry
newDeleteMessageBatchResultEntry' _Id customize = (DeleteMessageBatchResultEntry <<< customize) { "Id": _Id }



newtype DeleteMessageBatchResultEntryList = DeleteMessageBatchResultEntryList (Array DeleteMessageBatchResultEntry)
derive instance newtypeDeleteMessageBatchResultEntryList :: Newtype DeleteMessageBatchResultEntryList _
derive instance repGenericDeleteMessageBatchResultEntryList :: Generic DeleteMessageBatchResultEntryList _
instance showDeleteMessageBatchResultEntryList :: Show DeleteMessageBatchResultEntryList where show = genericShow
instance decodeDeleteMessageBatchResultEntryList :: Decode DeleteMessageBatchResultEntryList where decode = genericDecode options
instance encodeDeleteMessageBatchResultEntryList :: Encode DeleteMessageBatchResultEntryList where encode = genericEncode options



-- | <p/>
newtype DeleteMessageRequest = DeleteMessageRequest 
  { "QueueUrl" :: (String)
  , "ReceiptHandle" :: (String)
  }
derive instance newtypeDeleteMessageRequest :: Newtype DeleteMessageRequest _
derive instance repGenericDeleteMessageRequest :: Generic DeleteMessageRequest _
instance showDeleteMessageRequest :: Show DeleteMessageRequest where show = genericShow
instance decodeDeleteMessageRequest :: Decode DeleteMessageRequest where decode = genericDecode options
instance encodeDeleteMessageRequest :: Encode DeleteMessageRequest where encode = genericEncode options

-- | Constructs DeleteMessageRequest from required parameters
newDeleteMessageRequest :: String -> String -> DeleteMessageRequest
newDeleteMessageRequest _QueueUrl _ReceiptHandle = DeleteMessageRequest { "QueueUrl": _QueueUrl, "ReceiptHandle": _ReceiptHandle }

-- | Constructs DeleteMessageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteMessageRequest' :: String -> String -> ( { "QueueUrl" :: (String) , "ReceiptHandle" :: (String) } -> {"QueueUrl" :: (String) , "ReceiptHandle" :: (String) } ) -> DeleteMessageRequest
newDeleteMessageRequest' _QueueUrl _ReceiptHandle customize = (DeleteMessageRequest <<< customize) { "QueueUrl": _QueueUrl, "ReceiptHandle": _ReceiptHandle }



-- | <p/>
newtype DeleteQueueRequest = DeleteQueueRequest 
  { "QueueUrl" :: (String)
  }
derive instance newtypeDeleteQueueRequest :: Newtype DeleteQueueRequest _
derive instance repGenericDeleteQueueRequest :: Generic DeleteQueueRequest _
instance showDeleteQueueRequest :: Show DeleteQueueRequest where show = genericShow
instance decodeDeleteQueueRequest :: Decode DeleteQueueRequest where decode = genericDecode options
instance encodeDeleteQueueRequest :: Encode DeleteQueueRequest where encode = genericEncode options

-- | Constructs DeleteQueueRequest from required parameters
newDeleteQueueRequest :: String -> DeleteQueueRequest
newDeleteQueueRequest _QueueUrl = DeleteQueueRequest { "QueueUrl": _QueueUrl }

-- | Constructs DeleteQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteQueueRequest' :: String -> ( { "QueueUrl" :: (String) } -> {"QueueUrl" :: (String) } ) -> DeleteQueueRequest
newDeleteQueueRequest' _QueueUrl customize = (DeleteQueueRequest <<< customize) { "QueueUrl": _QueueUrl }



-- | <p>The batch request doesn't contain any entries.</p>
newtype EmptyBatchRequest = EmptyBatchRequest Types.NoArguments
derive instance newtypeEmptyBatchRequest :: Newtype EmptyBatchRequest _
derive instance repGenericEmptyBatchRequest :: Generic EmptyBatchRequest _
instance showEmptyBatchRequest :: Show EmptyBatchRequest where show = genericShow
instance decodeEmptyBatchRequest :: Decode EmptyBatchRequest where decode = genericDecode options
instance encodeEmptyBatchRequest :: Encode EmptyBatchRequest where encode = genericEncode options



-- | <p/>
newtype GetQueueAttributesRequest = GetQueueAttributesRequest 
  { "QueueUrl" :: (String)
  , "AttributeNames" :: NullOrUndefined (AttributeNameList)
  }
derive instance newtypeGetQueueAttributesRequest :: Newtype GetQueueAttributesRequest _
derive instance repGenericGetQueueAttributesRequest :: Generic GetQueueAttributesRequest _
instance showGetQueueAttributesRequest :: Show GetQueueAttributesRequest where show = genericShow
instance decodeGetQueueAttributesRequest :: Decode GetQueueAttributesRequest where decode = genericDecode options
instance encodeGetQueueAttributesRequest :: Encode GetQueueAttributesRequest where encode = genericEncode options

-- | Constructs GetQueueAttributesRequest from required parameters
newGetQueueAttributesRequest :: String -> GetQueueAttributesRequest
newGetQueueAttributesRequest _QueueUrl = GetQueueAttributesRequest { "QueueUrl": _QueueUrl, "AttributeNames": (NullOrUndefined Nothing) }

-- | Constructs GetQueueAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQueueAttributesRequest' :: String -> ( { "QueueUrl" :: (String) , "AttributeNames" :: NullOrUndefined (AttributeNameList) } -> {"QueueUrl" :: (String) , "AttributeNames" :: NullOrUndefined (AttributeNameList) } ) -> GetQueueAttributesRequest
newGetQueueAttributesRequest' _QueueUrl customize = (GetQueueAttributesRequest <<< customize) { "QueueUrl": _QueueUrl, "AttributeNames": (NullOrUndefined Nothing) }



-- | <p>A list of returned queue attributes.</p>
newtype GetQueueAttributesResult = GetQueueAttributesResult 
  { "Attributes" :: NullOrUndefined (QueueAttributeMap)
  }
derive instance newtypeGetQueueAttributesResult :: Newtype GetQueueAttributesResult _
derive instance repGenericGetQueueAttributesResult :: Generic GetQueueAttributesResult _
instance showGetQueueAttributesResult :: Show GetQueueAttributesResult where show = genericShow
instance decodeGetQueueAttributesResult :: Decode GetQueueAttributesResult where decode = genericDecode options
instance encodeGetQueueAttributesResult :: Encode GetQueueAttributesResult where encode = genericEncode options

-- | Constructs GetQueueAttributesResult from required parameters
newGetQueueAttributesResult :: GetQueueAttributesResult
newGetQueueAttributesResult  = GetQueueAttributesResult { "Attributes": (NullOrUndefined Nothing) }

-- | Constructs GetQueueAttributesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQueueAttributesResult' :: ( { "Attributes" :: NullOrUndefined (QueueAttributeMap) } -> {"Attributes" :: NullOrUndefined (QueueAttributeMap) } ) -> GetQueueAttributesResult
newGetQueueAttributesResult'  customize = (GetQueueAttributesResult <<< customize) { "Attributes": (NullOrUndefined Nothing) }



-- | <p/>
newtype GetQueueUrlRequest = GetQueueUrlRequest 
  { "QueueName" :: (String)
  , "QueueOwnerAWSAccountId" :: NullOrUndefined (String)
  }
derive instance newtypeGetQueueUrlRequest :: Newtype GetQueueUrlRequest _
derive instance repGenericGetQueueUrlRequest :: Generic GetQueueUrlRequest _
instance showGetQueueUrlRequest :: Show GetQueueUrlRequest where show = genericShow
instance decodeGetQueueUrlRequest :: Decode GetQueueUrlRequest where decode = genericDecode options
instance encodeGetQueueUrlRequest :: Encode GetQueueUrlRequest where encode = genericEncode options

-- | Constructs GetQueueUrlRequest from required parameters
newGetQueueUrlRequest :: String -> GetQueueUrlRequest
newGetQueueUrlRequest _QueueName = GetQueueUrlRequest { "QueueName": _QueueName, "QueueOwnerAWSAccountId": (NullOrUndefined Nothing) }

-- | Constructs GetQueueUrlRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQueueUrlRequest' :: String -> ( { "QueueName" :: (String) , "QueueOwnerAWSAccountId" :: NullOrUndefined (String) } -> {"QueueName" :: (String) , "QueueOwnerAWSAccountId" :: NullOrUndefined (String) } ) -> GetQueueUrlRequest
newGetQueueUrlRequest' _QueueName customize = (GetQueueUrlRequest <<< customize) { "QueueName": _QueueName, "QueueOwnerAWSAccountId": (NullOrUndefined Nothing) }



-- | <p>For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/UnderstandingResponses.html">Responses</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
newtype GetQueueUrlResult = GetQueueUrlResult 
  { "QueueUrl" :: NullOrUndefined (String)
  }
derive instance newtypeGetQueueUrlResult :: Newtype GetQueueUrlResult _
derive instance repGenericGetQueueUrlResult :: Generic GetQueueUrlResult _
instance showGetQueueUrlResult :: Show GetQueueUrlResult where show = genericShow
instance decodeGetQueueUrlResult :: Decode GetQueueUrlResult where decode = genericDecode options
instance encodeGetQueueUrlResult :: Encode GetQueueUrlResult where encode = genericEncode options

-- | Constructs GetQueueUrlResult from required parameters
newGetQueueUrlResult :: GetQueueUrlResult
newGetQueueUrlResult  = GetQueueUrlResult { "QueueUrl": (NullOrUndefined Nothing) }

-- | Constructs GetQueueUrlResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetQueueUrlResult' :: ( { "QueueUrl" :: NullOrUndefined (String) } -> {"QueueUrl" :: NullOrUndefined (String) } ) -> GetQueueUrlResult
newGetQueueUrlResult'  customize = (GetQueueUrlResult <<< customize) { "QueueUrl": (NullOrUndefined Nothing) }



-- | <p>The attribute referred to doesn't exist.</p>
newtype InvalidAttributeName = InvalidAttributeName Types.NoArguments
derive instance newtypeInvalidAttributeName :: Newtype InvalidAttributeName _
derive instance repGenericInvalidAttributeName :: Generic InvalidAttributeName _
instance showInvalidAttributeName :: Show InvalidAttributeName where show = genericShow
instance decodeInvalidAttributeName :: Decode InvalidAttributeName where decode = genericDecode options
instance encodeInvalidAttributeName :: Encode InvalidAttributeName where encode = genericEncode options



-- | <p>The <code>Id</code> of a batch entry in a batch request doesn't abide by the specification.</p>
newtype InvalidBatchEntryId = InvalidBatchEntryId Types.NoArguments
derive instance newtypeInvalidBatchEntryId :: Newtype InvalidBatchEntryId _
derive instance repGenericInvalidBatchEntryId :: Generic InvalidBatchEntryId _
instance showInvalidBatchEntryId :: Show InvalidBatchEntryId where show = genericShow
instance decodeInvalidBatchEntryId :: Decode InvalidBatchEntryId where decode = genericDecode options
instance encodeInvalidBatchEntryId :: Encode InvalidBatchEntryId where encode = genericEncode options



-- | <p>The receipt handle isn't valid for the current version.</p>
newtype InvalidIdFormat = InvalidIdFormat Types.NoArguments
derive instance newtypeInvalidIdFormat :: Newtype InvalidIdFormat _
derive instance repGenericInvalidIdFormat :: Generic InvalidIdFormat _
instance showInvalidIdFormat :: Show InvalidIdFormat where show = genericShow
instance decodeInvalidIdFormat :: Decode InvalidIdFormat where decode = genericDecode options
instance encodeInvalidIdFormat :: Encode InvalidIdFormat where encode = genericEncode options



-- | <p>The message contains characters outside the allowed set.</p>
newtype InvalidMessageContents = InvalidMessageContents Types.NoArguments
derive instance newtypeInvalidMessageContents :: Newtype InvalidMessageContents _
derive instance repGenericInvalidMessageContents :: Generic InvalidMessageContents _
instance showInvalidMessageContents :: Show InvalidMessageContents where show = genericShow
instance decodeInvalidMessageContents :: Decode InvalidMessageContents where decode = genericDecode options
instance encodeInvalidMessageContents :: Encode InvalidMessageContents where encode = genericEncode options



-- | <p/>
newtype ListDeadLetterSourceQueuesRequest = ListDeadLetterSourceQueuesRequest 
  { "QueueUrl" :: (String)
  }
derive instance newtypeListDeadLetterSourceQueuesRequest :: Newtype ListDeadLetterSourceQueuesRequest _
derive instance repGenericListDeadLetterSourceQueuesRequest :: Generic ListDeadLetterSourceQueuesRequest _
instance showListDeadLetterSourceQueuesRequest :: Show ListDeadLetterSourceQueuesRequest where show = genericShow
instance decodeListDeadLetterSourceQueuesRequest :: Decode ListDeadLetterSourceQueuesRequest where decode = genericDecode options
instance encodeListDeadLetterSourceQueuesRequest :: Encode ListDeadLetterSourceQueuesRequest where encode = genericEncode options

-- | Constructs ListDeadLetterSourceQueuesRequest from required parameters
newListDeadLetterSourceQueuesRequest :: String -> ListDeadLetterSourceQueuesRequest
newListDeadLetterSourceQueuesRequest _QueueUrl = ListDeadLetterSourceQueuesRequest { "QueueUrl": _QueueUrl }

-- | Constructs ListDeadLetterSourceQueuesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDeadLetterSourceQueuesRequest' :: String -> ( { "QueueUrl" :: (String) } -> {"QueueUrl" :: (String) } ) -> ListDeadLetterSourceQueuesRequest
newListDeadLetterSourceQueuesRequest' _QueueUrl customize = (ListDeadLetterSourceQueuesRequest <<< customize) { "QueueUrl": _QueueUrl }



-- | <p>A list of your dead letter source queues.</p>
newtype ListDeadLetterSourceQueuesResult = ListDeadLetterSourceQueuesResult 
  { "queueUrls" :: (QueueUrlList)
  }
derive instance newtypeListDeadLetterSourceQueuesResult :: Newtype ListDeadLetterSourceQueuesResult _
derive instance repGenericListDeadLetterSourceQueuesResult :: Generic ListDeadLetterSourceQueuesResult _
instance showListDeadLetterSourceQueuesResult :: Show ListDeadLetterSourceQueuesResult where show = genericShow
instance decodeListDeadLetterSourceQueuesResult :: Decode ListDeadLetterSourceQueuesResult where decode = genericDecode options
instance encodeListDeadLetterSourceQueuesResult :: Encode ListDeadLetterSourceQueuesResult where encode = genericEncode options

-- | Constructs ListDeadLetterSourceQueuesResult from required parameters
newListDeadLetterSourceQueuesResult :: QueueUrlList -> ListDeadLetterSourceQueuesResult
newListDeadLetterSourceQueuesResult _queueUrls = ListDeadLetterSourceQueuesResult { "queueUrls": _queueUrls }

-- | Constructs ListDeadLetterSourceQueuesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDeadLetterSourceQueuesResult' :: QueueUrlList -> ( { "queueUrls" :: (QueueUrlList) } -> {"queueUrls" :: (QueueUrlList) } ) -> ListDeadLetterSourceQueuesResult
newListDeadLetterSourceQueuesResult' _queueUrls customize = (ListDeadLetterSourceQueuesResult <<< customize) { "queueUrls": _queueUrls }



newtype ListQueueTagsRequest = ListQueueTagsRequest 
  { "QueueUrl" :: (String)
  }
derive instance newtypeListQueueTagsRequest :: Newtype ListQueueTagsRequest _
derive instance repGenericListQueueTagsRequest :: Generic ListQueueTagsRequest _
instance showListQueueTagsRequest :: Show ListQueueTagsRequest where show = genericShow
instance decodeListQueueTagsRequest :: Decode ListQueueTagsRequest where decode = genericDecode options
instance encodeListQueueTagsRequest :: Encode ListQueueTagsRequest where encode = genericEncode options

-- | Constructs ListQueueTagsRequest from required parameters
newListQueueTagsRequest :: String -> ListQueueTagsRequest
newListQueueTagsRequest _QueueUrl = ListQueueTagsRequest { "QueueUrl": _QueueUrl }

-- | Constructs ListQueueTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQueueTagsRequest' :: String -> ( { "QueueUrl" :: (String) } -> {"QueueUrl" :: (String) } ) -> ListQueueTagsRequest
newListQueueTagsRequest' _QueueUrl customize = (ListQueueTagsRequest <<< customize) { "QueueUrl": _QueueUrl }



newtype ListQueueTagsResult = ListQueueTagsResult 
  { "Tags" :: NullOrUndefined (TagMap)
  }
derive instance newtypeListQueueTagsResult :: Newtype ListQueueTagsResult _
derive instance repGenericListQueueTagsResult :: Generic ListQueueTagsResult _
instance showListQueueTagsResult :: Show ListQueueTagsResult where show = genericShow
instance decodeListQueueTagsResult :: Decode ListQueueTagsResult where decode = genericDecode options
instance encodeListQueueTagsResult :: Encode ListQueueTagsResult where encode = genericEncode options

-- | Constructs ListQueueTagsResult from required parameters
newListQueueTagsResult :: ListQueueTagsResult
newListQueueTagsResult  = ListQueueTagsResult { "Tags": (NullOrUndefined Nothing) }

-- | Constructs ListQueueTagsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQueueTagsResult' :: ( { "Tags" :: NullOrUndefined (TagMap) } -> {"Tags" :: NullOrUndefined (TagMap) } ) -> ListQueueTagsResult
newListQueueTagsResult'  customize = (ListQueueTagsResult <<< customize) { "Tags": (NullOrUndefined Nothing) }



-- | <p/>
newtype ListQueuesRequest = ListQueuesRequest 
  { "QueueNamePrefix" :: NullOrUndefined (String)
  }
derive instance newtypeListQueuesRequest :: Newtype ListQueuesRequest _
derive instance repGenericListQueuesRequest :: Generic ListQueuesRequest _
instance showListQueuesRequest :: Show ListQueuesRequest where show = genericShow
instance decodeListQueuesRequest :: Decode ListQueuesRequest where decode = genericDecode options
instance encodeListQueuesRequest :: Encode ListQueuesRequest where encode = genericEncode options

-- | Constructs ListQueuesRequest from required parameters
newListQueuesRequest :: ListQueuesRequest
newListQueuesRequest  = ListQueuesRequest { "QueueNamePrefix": (NullOrUndefined Nothing) }

-- | Constructs ListQueuesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQueuesRequest' :: ( { "QueueNamePrefix" :: NullOrUndefined (String) } -> {"QueueNamePrefix" :: NullOrUndefined (String) } ) -> ListQueuesRequest
newListQueuesRequest'  customize = (ListQueuesRequest <<< customize) { "QueueNamePrefix": (NullOrUndefined Nothing) }



-- | <p>A list of your queues.</p>
newtype ListQueuesResult = ListQueuesResult 
  { "QueueUrls" :: NullOrUndefined (QueueUrlList)
  }
derive instance newtypeListQueuesResult :: Newtype ListQueuesResult _
derive instance repGenericListQueuesResult :: Generic ListQueuesResult _
instance showListQueuesResult :: Show ListQueuesResult where show = genericShow
instance decodeListQueuesResult :: Decode ListQueuesResult where decode = genericDecode options
instance encodeListQueuesResult :: Encode ListQueuesResult where encode = genericEncode options

-- | Constructs ListQueuesResult from required parameters
newListQueuesResult :: ListQueuesResult
newListQueuesResult  = ListQueuesResult { "QueueUrls": (NullOrUndefined Nothing) }

-- | Constructs ListQueuesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListQueuesResult' :: ( { "QueueUrls" :: NullOrUndefined (QueueUrlList) } -> {"QueueUrls" :: NullOrUndefined (QueueUrlList) } ) -> ListQueuesResult
newListQueuesResult'  customize = (ListQueuesResult <<< customize) { "QueueUrls": (NullOrUndefined Nothing) }



-- | <p>An Amazon SQS message.</p>
newtype Message = Message 
  { "MessageId" :: NullOrUndefined (String)
  , "ReceiptHandle" :: NullOrUndefined (String)
  , "MD5OfBody" :: NullOrUndefined (String)
  , "Body" :: NullOrUndefined (String)
  , "Attributes" :: NullOrUndefined (MessageSystemAttributeMap)
  , "MD5OfMessageAttributes" :: NullOrUndefined (String)
  , "MessageAttributes" :: NullOrUndefined (MessageBodyAttributeMap)
  }
derive instance newtypeMessage :: Newtype Message _
derive instance repGenericMessage :: Generic Message _
instance showMessage :: Show Message where show = genericShow
instance decodeMessage :: Decode Message where decode = genericDecode options
instance encodeMessage :: Encode Message where encode = genericEncode options

-- | Constructs Message from required parameters
newMessage :: Message
newMessage  = Message { "Attributes": (NullOrUndefined Nothing), "Body": (NullOrUndefined Nothing), "MD5OfBody": (NullOrUndefined Nothing), "MD5OfMessageAttributes": (NullOrUndefined Nothing), "MessageAttributes": (NullOrUndefined Nothing), "MessageId": (NullOrUndefined Nothing), "ReceiptHandle": (NullOrUndefined Nothing) }

-- | Constructs Message's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMessage' :: ( { "MessageId" :: NullOrUndefined (String) , "ReceiptHandle" :: NullOrUndefined (String) , "MD5OfBody" :: NullOrUndefined (String) , "Body" :: NullOrUndefined (String) , "Attributes" :: NullOrUndefined (MessageSystemAttributeMap) , "MD5OfMessageAttributes" :: NullOrUndefined (String) , "MessageAttributes" :: NullOrUndefined (MessageBodyAttributeMap) } -> {"MessageId" :: NullOrUndefined (String) , "ReceiptHandle" :: NullOrUndefined (String) , "MD5OfBody" :: NullOrUndefined (String) , "Body" :: NullOrUndefined (String) , "Attributes" :: NullOrUndefined (MessageSystemAttributeMap) , "MD5OfMessageAttributes" :: NullOrUndefined (String) , "MessageAttributes" :: NullOrUndefined (MessageBodyAttributeMap) } ) -> Message
newMessage'  customize = (Message <<< customize) { "Attributes": (NullOrUndefined Nothing), "Body": (NullOrUndefined Nothing), "MD5OfBody": (NullOrUndefined Nothing), "MD5OfMessageAttributes": (NullOrUndefined Nothing), "MessageAttributes": (NullOrUndefined Nothing), "MessageId": (NullOrUndefined Nothing), "ReceiptHandle": (NullOrUndefined Nothing) }



newtype MessageAttributeName = MessageAttributeName String
derive instance newtypeMessageAttributeName :: Newtype MessageAttributeName _
derive instance repGenericMessageAttributeName :: Generic MessageAttributeName _
instance showMessageAttributeName :: Show MessageAttributeName where show = genericShow
instance decodeMessageAttributeName :: Decode MessageAttributeName where decode = genericDecode options
instance encodeMessageAttributeName :: Encode MessageAttributeName where encode = genericEncode options



newtype MessageAttributeNameList = MessageAttributeNameList (Array MessageAttributeName)
derive instance newtypeMessageAttributeNameList :: Newtype MessageAttributeNameList _
derive instance repGenericMessageAttributeNameList :: Generic MessageAttributeNameList _
instance showMessageAttributeNameList :: Show MessageAttributeNameList where show = genericShow
instance decodeMessageAttributeNameList :: Decode MessageAttributeNameList where decode = genericDecode options
instance encodeMessageAttributeNameList :: Encode MessageAttributeNameList where encode = genericEncode options



-- | <p>The user-specified message attribute value. For string data types, the <code>Value</code> attribute has the same restrictions on the content as the message body. For more information, see <code> <a>SendMessage</a>.</code> </p> <p> <code>Name</code>, <code>type</code>, <code>value</code> and the message body must not be empty or null. All parts of the message attribute, including <code>Name</code>, <code>Type</code>, and <code>Value</code>, are part of the message size restriction (256 KB or 262,144 bytes).</p>
newtype MessageAttributeValue = MessageAttributeValue 
  { "StringValue" :: NullOrUndefined (String)
  , "BinaryValue" :: NullOrUndefined (Binary)
  , "StringListValues" :: NullOrUndefined (StringList)
  , "BinaryListValues" :: NullOrUndefined (BinaryList)
  , "DataType" :: (String)
  }
derive instance newtypeMessageAttributeValue :: Newtype MessageAttributeValue _
derive instance repGenericMessageAttributeValue :: Generic MessageAttributeValue _
instance showMessageAttributeValue :: Show MessageAttributeValue where show = genericShow
instance decodeMessageAttributeValue :: Decode MessageAttributeValue where decode = genericDecode options
instance encodeMessageAttributeValue :: Encode MessageAttributeValue where encode = genericEncode options

-- | Constructs MessageAttributeValue from required parameters
newMessageAttributeValue :: String -> MessageAttributeValue
newMessageAttributeValue _DataType = MessageAttributeValue { "DataType": _DataType, "BinaryListValues": (NullOrUndefined Nothing), "BinaryValue": (NullOrUndefined Nothing), "StringListValues": (NullOrUndefined Nothing), "StringValue": (NullOrUndefined Nothing) }

-- | Constructs MessageAttributeValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMessageAttributeValue' :: String -> ( { "StringValue" :: NullOrUndefined (String) , "BinaryValue" :: NullOrUndefined (Binary) , "StringListValues" :: NullOrUndefined (StringList) , "BinaryListValues" :: NullOrUndefined (BinaryList) , "DataType" :: (String) } -> {"StringValue" :: NullOrUndefined (String) , "BinaryValue" :: NullOrUndefined (Binary) , "StringListValues" :: NullOrUndefined (StringList) , "BinaryListValues" :: NullOrUndefined (BinaryList) , "DataType" :: (String) } ) -> MessageAttributeValue
newMessageAttributeValue' _DataType customize = (MessageAttributeValue <<< customize) { "DataType": _DataType, "BinaryListValues": (NullOrUndefined Nothing), "BinaryValue": (NullOrUndefined Nothing), "StringListValues": (NullOrUndefined Nothing), "StringValue": (NullOrUndefined Nothing) }



newtype MessageBodyAttributeMap = MessageBodyAttributeMap (StrMap.StrMap MessageAttributeValue)
derive instance newtypeMessageBodyAttributeMap :: Newtype MessageBodyAttributeMap _
derive instance repGenericMessageBodyAttributeMap :: Generic MessageBodyAttributeMap _
instance showMessageBodyAttributeMap :: Show MessageBodyAttributeMap where show = genericShow
instance decodeMessageBodyAttributeMap :: Decode MessageBodyAttributeMap where decode = genericDecode options
instance encodeMessageBodyAttributeMap :: Encode MessageBodyAttributeMap where encode = genericEncode options



newtype MessageList = MessageList (Array Message)
derive instance newtypeMessageList :: Newtype MessageList _
derive instance repGenericMessageList :: Generic MessageList _
instance showMessageList :: Show MessageList where show = genericShow
instance decodeMessageList :: Decode MessageList where decode = genericDecode options
instance encodeMessageList :: Encode MessageList where encode = genericEncode options



-- | <p>The message referred to isn't in flight.</p>
newtype MessageNotInflight = MessageNotInflight Types.NoArguments
derive instance newtypeMessageNotInflight :: Newtype MessageNotInflight _
derive instance repGenericMessageNotInflight :: Generic MessageNotInflight _
instance showMessageNotInflight :: Show MessageNotInflight where show = genericShow
instance decodeMessageNotInflight :: Decode MessageNotInflight where decode = genericDecode options
instance encodeMessageNotInflight :: Encode MessageNotInflight where encode = genericEncode options



newtype MessageSystemAttributeMap = MessageSystemAttributeMap (StrMap.StrMap String)
derive instance newtypeMessageSystemAttributeMap :: Newtype MessageSystemAttributeMap _
derive instance repGenericMessageSystemAttributeMap :: Generic MessageSystemAttributeMap _
instance showMessageSystemAttributeMap :: Show MessageSystemAttributeMap where show = genericShow
instance decodeMessageSystemAttributeMap :: Decode MessageSystemAttributeMap where decode = genericDecode options
instance encodeMessageSystemAttributeMap :: Encode MessageSystemAttributeMap where encode = genericEncode options



newtype MessageSystemAttributeName = MessageSystemAttributeName String
derive instance newtypeMessageSystemAttributeName :: Newtype MessageSystemAttributeName _
derive instance repGenericMessageSystemAttributeName :: Generic MessageSystemAttributeName _
instance showMessageSystemAttributeName :: Show MessageSystemAttributeName where show = genericShow
instance decodeMessageSystemAttributeName :: Decode MessageSystemAttributeName where decode = genericDecode options
instance encodeMessageSystemAttributeName :: Encode MessageSystemAttributeName where encode = genericEncode options



-- | <p>The action that you requested would violate a limit. For example, <code>ReceiveMessage</code> returns this error if the maximum number of inflight messages is reached. <code> <a>AddPermission</a> </code> returns this error if the maximum number of permissions for the queue is reached.</p>
newtype OverLimit = OverLimit Types.NoArguments
derive instance newtypeOverLimit :: Newtype OverLimit _
derive instance repGenericOverLimit :: Generic OverLimit _
instance showOverLimit :: Show OverLimit where show = genericShow
instance decodeOverLimit :: Decode OverLimit where decode = genericDecode options
instance encodeOverLimit :: Encode OverLimit where encode = genericEncode options



-- | <p>Indicates that the specified queue previously received a <code>PurgeQueue</code> request within the last 60 seconds (the time it can take to delete the messages in the queue).</p>
newtype PurgeQueueInProgress = PurgeQueueInProgress Types.NoArguments
derive instance newtypePurgeQueueInProgress :: Newtype PurgeQueueInProgress _
derive instance repGenericPurgeQueueInProgress :: Generic PurgeQueueInProgress _
instance showPurgeQueueInProgress :: Show PurgeQueueInProgress where show = genericShow
instance decodePurgeQueueInProgress :: Decode PurgeQueueInProgress where decode = genericDecode options
instance encodePurgeQueueInProgress :: Encode PurgeQueueInProgress where encode = genericEncode options



-- | <p/>
newtype PurgeQueueRequest = PurgeQueueRequest 
  { "QueueUrl" :: (String)
  }
derive instance newtypePurgeQueueRequest :: Newtype PurgeQueueRequest _
derive instance repGenericPurgeQueueRequest :: Generic PurgeQueueRequest _
instance showPurgeQueueRequest :: Show PurgeQueueRequest where show = genericShow
instance decodePurgeQueueRequest :: Decode PurgeQueueRequest where decode = genericDecode options
instance encodePurgeQueueRequest :: Encode PurgeQueueRequest where encode = genericEncode options

-- | Constructs PurgeQueueRequest from required parameters
newPurgeQueueRequest :: String -> PurgeQueueRequest
newPurgeQueueRequest _QueueUrl = PurgeQueueRequest { "QueueUrl": _QueueUrl }

-- | Constructs PurgeQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPurgeQueueRequest' :: String -> ( { "QueueUrl" :: (String) } -> {"QueueUrl" :: (String) } ) -> PurgeQueueRequest
newPurgeQueueRequest' _QueueUrl customize = (PurgeQueueRequest <<< customize) { "QueueUrl": _QueueUrl }



newtype QueueAttributeMap = QueueAttributeMap (StrMap.StrMap String)
derive instance newtypeQueueAttributeMap :: Newtype QueueAttributeMap _
derive instance repGenericQueueAttributeMap :: Generic QueueAttributeMap _
instance showQueueAttributeMap :: Show QueueAttributeMap where show = genericShow
instance decodeQueueAttributeMap :: Decode QueueAttributeMap where decode = genericDecode options
instance encodeQueueAttributeMap :: Encode QueueAttributeMap where encode = genericEncode options



newtype QueueAttributeName = QueueAttributeName String
derive instance newtypeQueueAttributeName :: Newtype QueueAttributeName _
derive instance repGenericQueueAttributeName :: Generic QueueAttributeName _
instance showQueueAttributeName :: Show QueueAttributeName where show = genericShow
instance decodeQueueAttributeName :: Decode QueueAttributeName where decode = genericDecode options
instance encodeQueueAttributeName :: Encode QueueAttributeName where encode = genericEncode options



-- | <p>You must wait 60 seconds after deleting a queue before you can create another one with the same name.</p>
newtype QueueDeletedRecently = QueueDeletedRecently Types.NoArguments
derive instance newtypeQueueDeletedRecently :: Newtype QueueDeletedRecently _
derive instance repGenericQueueDeletedRecently :: Generic QueueDeletedRecently _
instance showQueueDeletedRecently :: Show QueueDeletedRecently where show = genericShow
instance decodeQueueDeletedRecently :: Decode QueueDeletedRecently where decode = genericDecode options
instance encodeQueueDeletedRecently :: Encode QueueDeletedRecently where encode = genericEncode options



-- | <p>The queue referred to doesn't exist.</p>
newtype QueueDoesNotExist = QueueDoesNotExist Types.NoArguments
derive instance newtypeQueueDoesNotExist :: Newtype QueueDoesNotExist _
derive instance repGenericQueueDoesNotExist :: Generic QueueDoesNotExist _
instance showQueueDoesNotExist :: Show QueueDoesNotExist where show = genericShow
instance decodeQueueDoesNotExist :: Decode QueueDoesNotExist where decode = genericDecode options
instance encodeQueueDoesNotExist :: Encode QueueDoesNotExist where encode = genericEncode options



-- | <p>A queue already exists with this name. Amazon SQS returns this error only if the request includes attributes whose values differ from those of the existing queue.</p>
newtype QueueNameExists = QueueNameExists Types.NoArguments
derive instance newtypeQueueNameExists :: Newtype QueueNameExists _
derive instance repGenericQueueNameExists :: Generic QueueNameExists _
instance showQueueNameExists :: Show QueueNameExists where show = genericShow
instance decodeQueueNameExists :: Decode QueueNameExists where decode = genericDecode options
instance encodeQueueNameExists :: Encode QueueNameExists where encode = genericEncode options



newtype QueueUrlList = QueueUrlList (Array String)
derive instance newtypeQueueUrlList :: Newtype QueueUrlList _
derive instance repGenericQueueUrlList :: Generic QueueUrlList _
instance showQueueUrlList :: Show QueueUrlList where show = genericShow
instance decodeQueueUrlList :: Decode QueueUrlList where decode = genericDecode options
instance encodeQueueUrlList :: Encode QueueUrlList where encode = genericEncode options



-- | <p>The receipt handle provided isn't valid.</p>
newtype ReceiptHandleIsInvalid = ReceiptHandleIsInvalid Types.NoArguments
derive instance newtypeReceiptHandleIsInvalid :: Newtype ReceiptHandleIsInvalid _
derive instance repGenericReceiptHandleIsInvalid :: Generic ReceiptHandleIsInvalid _
instance showReceiptHandleIsInvalid :: Show ReceiptHandleIsInvalid where show = genericShow
instance decodeReceiptHandleIsInvalid :: Decode ReceiptHandleIsInvalid where decode = genericDecode options
instance encodeReceiptHandleIsInvalid :: Encode ReceiptHandleIsInvalid where encode = genericEncode options



-- | <p/>
newtype ReceiveMessageRequest = ReceiveMessageRequest 
  { "QueueUrl" :: (String)
  , "AttributeNames" :: NullOrUndefined (AttributeNameList)
  , "MessageAttributeNames" :: NullOrUndefined (MessageAttributeNameList)
  , "MaxNumberOfMessages" :: NullOrUndefined (Int)
  , "VisibilityTimeout" :: NullOrUndefined (Int)
  , "WaitTimeSeconds" :: NullOrUndefined (Int)
  , "ReceiveRequestAttemptId" :: NullOrUndefined (String)
  }
derive instance newtypeReceiveMessageRequest :: Newtype ReceiveMessageRequest _
derive instance repGenericReceiveMessageRequest :: Generic ReceiveMessageRequest _
instance showReceiveMessageRequest :: Show ReceiveMessageRequest where show = genericShow
instance decodeReceiveMessageRequest :: Decode ReceiveMessageRequest where decode = genericDecode options
instance encodeReceiveMessageRequest :: Encode ReceiveMessageRequest where encode = genericEncode options

-- | Constructs ReceiveMessageRequest from required parameters
newReceiveMessageRequest :: String -> ReceiveMessageRequest
newReceiveMessageRequest _QueueUrl = ReceiveMessageRequest { "QueueUrl": _QueueUrl, "AttributeNames": (NullOrUndefined Nothing), "MaxNumberOfMessages": (NullOrUndefined Nothing), "MessageAttributeNames": (NullOrUndefined Nothing), "ReceiveRequestAttemptId": (NullOrUndefined Nothing), "VisibilityTimeout": (NullOrUndefined Nothing), "WaitTimeSeconds": (NullOrUndefined Nothing) }

-- | Constructs ReceiveMessageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReceiveMessageRequest' :: String -> ( { "QueueUrl" :: (String) , "AttributeNames" :: NullOrUndefined (AttributeNameList) , "MessageAttributeNames" :: NullOrUndefined (MessageAttributeNameList) , "MaxNumberOfMessages" :: NullOrUndefined (Int) , "VisibilityTimeout" :: NullOrUndefined (Int) , "WaitTimeSeconds" :: NullOrUndefined (Int) , "ReceiveRequestAttemptId" :: NullOrUndefined (String) } -> {"QueueUrl" :: (String) , "AttributeNames" :: NullOrUndefined (AttributeNameList) , "MessageAttributeNames" :: NullOrUndefined (MessageAttributeNameList) , "MaxNumberOfMessages" :: NullOrUndefined (Int) , "VisibilityTimeout" :: NullOrUndefined (Int) , "WaitTimeSeconds" :: NullOrUndefined (Int) , "ReceiveRequestAttemptId" :: NullOrUndefined (String) } ) -> ReceiveMessageRequest
newReceiveMessageRequest' _QueueUrl customize = (ReceiveMessageRequest <<< customize) { "QueueUrl": _QueueUrl, "AttributeNames": (NullOrUndefined Nothing), "MaxNumberOfMessages": (NullOrUndefined Nothing), "MessageAttributeNames": (NullOrUndefined Nothing), "ReceiveRequestAttemptId": (NullOrUndefined Nothing), "VisibilityTimeout": (NullOrUndefined Nothing), "WaitTimeSeconds": (NullOrUndefined Nothing) }



-- | <p>A list of received messages.</p>
newtype ReceiveMessageResult = ReceiveMessageResult 
  { "Messages" :: NullOrUndefined (MessageList)
  }
derive instance newtypeReceiveMessageResult :: Newtype ReceiveMessageResult _
derive instance repGenericReceiveMessageResult :: Generic ReceiveMessageResult _
instance showReceiveMessageResult :: Show ReceiveMessageResult where show = genericShow
instance decodeReceiveMessageResult :: Decode ReceiveMessageResult where decode = genericDecode options
instance encodeReceiveMessageResult :: Encode ReceiveMessageResult where encode = genericEncode options

-- | Constructs ReceiveMessageResult from required parameters
newReceiveMessageResult :: ReceiveMessageResult
newReceiveMessageResult  = ReceiveMessageResult { "Messages": (NullOrUndefined Nothing) }

-- | Constructs ReceiveMessageResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newReceiveMessageResult' :: ( { "Messages" :: NullOrUndefined (MessageList) } -> {"Messages" :: NullOrUndefined (MessageList) } ) -> ReceiveMessageResult
newReceiveMessageResult'  customize = (ReceiveMessageResult <<< customize) { "Messages": (NullOrUndefined Nothing) }



-- | <p/>
newtype RemovePermissionRequest = RemovePermissionRequest 
  { "QueueUrl" :: (String)
  , "Label" :: (String)
  }
derive instance newtypeRemovePermissionRequest :: Newtype RemovePermissionRequest _
derive instance repGenericRemovePermissionRequest :: Generic RemovePermissionRequest _
instance showRemovePermissionRequest :: Show RemovePermissionRequest where show = genericShow
instance decodeRemovePermissionRequest :: Decode RemovePermissionRequest where decode = genericDecode options
instance encodeRemovePermissionRequest :: Encode RemovePermissionRequest where encode = genericEncode options

-- | Constructs RemovePermissionRequest from required parameters
newRemovePermissionRequest :: String -> String -> RemovePermissionRequest
newRemovePermissionRequest _Label _QueueUrl = RemovePermissionRequest { "Label": _Label, "QueueUrl": _QueueUrl }

-- | Constructs RemovePermissionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemovePermissionRequest' :: String -> String -> ( { "QueueUrl" :: (String) , "Label" :: (String) } -> {"QueueUrl" :: (String) , "Label" :: (String) } ) -> RemovePermissionRequest
newRemovePermissionRequest' _Label _QueueUrl customize = (RemovePermissionRequest <<< customize) { "Label": _Label, "QueueUrl": _QueueUrl }



-- | <p/>
newtype SendMessageBatchRequest = SendMessageBatchRequest 
  { "QueueUrl" :: (String)
  , "Entries" :: (SendMessageBatchRequestEntryList)
  }
derive instance newtypeSendMessageBatchRequest :: Newtype SendMessageBatchRequest _
derive instance repGenericSendMessageBatchRequest :: Generic SendMessageBatchRequest _
instance showSendMessageBatchRequest :: Show SendMessageBatchRequest where show = genericShow
instance decodeSendMessageBatchRequest :: Decode SendMessageBatchRequest where decode = genericDecode options
instance encodeSendMessageBatchRequest :: Encode SendMessageBatchRequest where encode = genericEncode options

-- | Constructs SendMessageBatchRequest from required parameters
newSendMessageBatchRequest :: SendMessageBatchRequestEntryList -> String -> SendMessageBatchRequest
newSendMessageBatchRequest _Entries _QueueUrl = SendMessageBatchRequest { "Entries": _Entries, "QueueUrl": _QueueUrl }

-- | Constructs SendMessageBatchRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendMessageBatchRequest' :: SendMessageBatchRequestEntryList -> String -> ( { "QueueUrl" :: (String) , "Entries" :: (SendMessageBatchRequestEntryList) } -> {"QueueUrl" :: (String) , "Entries" :: (SendMessageBatchRequestEntryList) } ) -> SendMessageBatchRequest
newSendMessageBatchRequest' _Entries _QueueUrl customize = (SendMessageBatchRequest <<< customize) { "Entries": _Entries, "QueueUrl": _QueueUrl }



-- | <p>Contains the details of a single Amazon SQS message along with an <code>Id</code>.</p>
newtype SendMessageBatchRequestEntry = SendMessageBatchRequestEntry 
  { "Id" :: (String)
  , "MessageBody" :: (String)
  , "DelaySeconds" :: NullOrUndefined (Int)
  , "MessageAttributes" :: NullOrUndefined (MessageBodyAttributeMap)
  , "MessageDeduplicationId" :: NullOrUndefined (String)
  , "MessageGroupId" :: NullOrUndefined (String)
  }
derive instance newtypeSendMessageBatchRequestEntry :: Newtype SendMessageBatchRequestEntry _
derive instance repGenericSendMessageBatchRequestEntry :: Generic SendMessageBatchRequestEntry _
instance showSendMessageBatchRequestEntry :: Show SendMessageBatchRequestEntry where show = genericShow
instance decodeSendMessageBatchRequestEntry :: Decode SendMessageBatchRequestEntry where decode = genericDecode options
instance encodeSendMessageBatchRequestEntry :: Encode SendMessageBatchRequestEntry where encode = genericEncode options

-- | Constructs SendMessageBatchRequestEntry from required parameters
newSendMessageBatchRequestEntry :: String -> String -> SendMessageBatchRequestEntry
newSendMessageBatchRequestEntry _Id _MessageBody = SendMessageBatchRequestEntry { "Id": _Id, "MessageBody": _MessageBody, "DelaySeconds": (NullOrUndefined Nothing), "MessageAttributes": (NullOrUndefined Nothing), "MessageDeduplicationId": (NullOrUndefined Nothing), "MessageGroupId": (NullOrUndefined Nothing) }

-- | Constructs SendMessageBatchRequestEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendMessageBatchRequestEntry' :: String -> String -> ( { "Id" :: (String) , "MessageBody" :: (String) , "DelaySeconds" :: NullOrUndefined (Int) , "MessageAttributes" :: NullOrUndefined (MessageBodyAttributeMap) , "MessageDeduplicationId" :: NullOrUndefined (String) , "MessageGroupId" :: NullOrUndefined (String) } -> {"Id" :: (String) , "MessageBody" :: (String) , "DelaySeconds" :: NullOrUndefined (Int) , "MessageAttributes" :: NullOrUndefined (MessageBodyAttributeMap) , "MessageDeduplicationId" :: NullOrUndefined (String) , "MessageGroupId" :: NullOrUndefined (String) } ) -> SendMessageBatchRequestEntry
newSendMessageBatchRequestEntry' _Id _MessageBody customize = (SendMessageBatchRequestEntry <<< customize) { "Id": _Id, "MessageBody": _MessageBody, "DelaySeconds": (NullOrUndefined Nothing), "MessageAttributes": (NullOrUndefined Nothing), "MessageDeduplicationId": (NullOrUndefined Nothing), "MessageGroupId": (NullOrUndefined Nothing) }



newtype SendMessageBatchRequestEntryList = SendMessageBatchRequestEntryList (Array SendMessageBatchRequestEntry)
derive instance newtypeSendMessageBatchRequestEntryList :: Newtype SendMessageBatchRequestEntryList _
derive instance repGenericSendMessageBatchRequestEntryList :: Generic SendMessageBatchRequestEntryList _
instance showSendMessageBatchRequestEntryList :: Show SendMessageBatchRequestEntryList where show = genericShow
instance decodeSendMessageBatchRequestEntryList :: Decode SendMessageBatchRequestEntryList where decode = genericDecode options
instance encodeSendMessageBatchRequestEntryList :: Encode SendMessageBatchRequestEntryList where encode = genericEncode options



-- | <p>For each message in the batch, the response contains a <code> <a>SendMessageBatchResultEntry</a> </code> tag if the message succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.</p>
newtype SendMessageBatchResult = SendMessageBatchResult 
  { "Successful" :: (SendMessageBatchResultEntryList)
  , "Failed" :: (BatchResultErrorEntryList)
  }
derive instance newtypeSendMessageBatchResult :: Newtype SendMessageBatchResult _
derive instance repGenericSendMessageBatchResult :: Generic SendMessageBatchResult _
instance showSendMessageBatchResult :: Show SendMessageBatchResult where show = genericShow
instance decodeSendMessageBatchResult :: Decode SendMessageBatchResult where decode = genericDecode options
instance encodeSendMessageBatchResult :: Encode SendMessageBatchResult where encode = genericEncode options

-- | Constructs SendMessageBatchResult from required parameters
newSendMessageBatchResult :: BatchResultErrorEntryList -> SendMessageBatchResultEntryList -> SendMessageBatchResult
newSendMessageBatchResult _Failed _Successful = SendMessageBatchResult { "Failed": _Failed, "Successful": _Successful }

-- | Constructs SendMessageBatchResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendMessageBatchResult' :: BatchResultErrorEntryList -> SendMessageBatchResultEntryList -> ( { "Successful" :: (SendMessageBatchResultEntryList) , "Failed" :: (BatchResultErrorEntryList) } -> {"Successful" :: (SendMessageBatchResultEntryList) , "Failed" :: (BatchResultErrorEntryList) } ) -> SendMessageBatchResult
newSendMessageBatchResult' _Failed _Successful customize = (SendMessageBatchResult <<< customize) { "Failed": _Failed, "Successful": _Successful }



-- | <p>Encloses a <code>MessageId</code> for a successfully-enqueued message in a <code> <a>SendMessageBatch</a>.</code> </p>
newtype SendMessageBatchResultEntry = SendMessageBatchResultEntry 
  { "Id" :: (String)
  , "MessageId" :: (String)
  , "MD5OfMessageBody" :: (String)
  , "MD5OfMessageAttributes" :: NullOrUndefined (String)
  , "SequenceNumber" :: NullOrUndefined (String)
  }
derive instance newtypeSendMessageBatchResultEntry :: Newtype SendMessageBatchResultEntry _
derive instance repGenericSendMessageBatchResultEntry :: Generic SendMessageBatchResultEntry _
instance showSendMessageBatchResultEntry :: Show SendMessageBatchResultEntry where show = genericShow
instance decodeSendMessageBatchResultEntry :: Decode SendMessageBatchResultEntry where decode = genericDecode options
instance encodeSendMessageBatchResultEntry :: Encode SendMessageBatchResultEntry where encode = genericEncode options

-- | Constructs SendMessageBatchResultEntry from required parameters
newSendMessageBatchResultEntry :: String -> String -> String -> SendMessageBatchResultEntry
newSendMessageBatchResultEntry _Id _MD5OfMessageBody _MessageId = SendMessageBatchResultEntry { "Id": _Id, "MD5OfMessageBody": _MD5OfMessageBody, "MessageId": _MessageId, "MD5OfMessageAttributes": (NullOrUndefined Nothing), "SequenceNumber": (NullOrUndefined Nothing) }

-- | Constructs SendMessageBatchResultEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendMessageBatchResultEntry' :: String -> String -> String -> ( { "Id" :: (String) , "MessageId" :: (String) , "MD5OfMessageBody" :: (String) , "MD5OfMessageAttributes" :: NullOrUndefined (String) , "SequenceNumber" :: NullOrUndefined (String) } -> {"Id" :: (String) , "MessageId" :: (String) , "MD5OfMessageBody" :: (String) , "MD5OfMessageAttributes" :: NullOrUndefined (String) , "SequenceNumber" :: NullOrUndefined (String) } ) -> SendMessageBatchResultEntry
newSendMessageBatchResultEntry' _Id _MD5OfMessageBody _MessageId customize = (SendMessageBatchResultEntry <<< customize) { "Id": _Id, "MD5OfMessageBody": _MD5OfMessageBody, "MessageId": _MessageId, "MD5OfMessageAttributes": (NullOrUndefined Nothing), "SequenceNumber": (NullOrUndefined Nothing) }



newtype SendMessageBatchResultEntryList = SendMessageBatchResultEntryList (Array SendMessageBatchResultEntry)
derive instance newtypeSendMessageBatchResultEntryList :: Newtype SendMessageBatchResultEntryList _
derive instance repGenericSendMessageBatchResultEntryList :: Generic SendMessageBatchResultEntryList _
instance showSendMessageBatchResultEntryList :: Show SendMessageBatchResultEntryList where show = genericShow
instance decodeSendMessageBatchResultEntryList :: Decode SendMessageBatchResultEntryList where decode = genericDecode options
instance encodeSendMessageBatchResultEntryList :: Encode SendMessageBatchResultEntryList where encode = genericEncode options



-- | <p/>
newtype SendMessageRequest = SendMessageRequest 
  { "QueueUrl" :: (String)
  , "MessageBody" :: (String)
  , "DelaySeconds" :: NullOrUndefined (Int)
  , "MessageAttributes" :: NullOrUndefined (MessageBodyAttributeMap)
  , "MessageDeduplicationId" :: NullOrUndefined (String)
  , "MessageGroupId" :: NullOrUndefined (String)
  }
derive instance newtypeSendMessageRequest :: Newtype SendMessageRequest _
derive instance repGenericSendMessageRequest :: Generic SendMessageRequest _
instance showSendMessageRequest :: Show SendMessageRequest where show = genericShow
instance decodeSendMessageRequest :: Decode SendMessageRequest where decode = genericDecode options
instance encodeSendMessageRequest :: Encode SendMessageRequest where encode = genericEncode options

-- | Constructs SendMessageRequest from required parameters
newSendMessageRequest :: String -> String -> SendMessageRequest
newSendMessageRequest _MessageBody _QueueUrl = SendMessageRequest { "MessageBody": _MessageBody, "QueueUrl": _QueueUrl, "DelaySeconds": (NullOrUndefined Nothing), "MessageAttributes": (NullOrUndefined Nothing), "MessageDeduplicationId": (NullOrUndefined Nothing), "MessageGroupId": (NullOrUndefined Nothing) }

-- | Constructs SendMessageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendMessageRequest' :: String -> String -> ( { "QueueUrl" :: (String) , "MessageBody" :: (String) , "DelaySeconds" :: NullOrUndefined (Int) , "MessageAttributes" :: NullOrUndefined (MessageBodyAttributeMap) , "MessageDeduplicationId" :: NullOrUndefined (String) , "MessageGroupId" :: NullOrUndefined (String) } -> {"QueueUrl" :: (String) , "MessageBody" :: (String) , "DelaySeconds" :: NullOrUndefined (Int) , "MessageAttributes" :: NullOrUndefined (MessageBodyAttributeMap) , "MessageDeduplicationId" :: NullOrUndefined (String) , "MessageGroupId" :: NullOrUndefined (String) } ) -> SendMessageRequest
newSendMessageRequest' _MessageBody _QueueUrl customize = (SendMessageRequest <<< customize) { "MessageBody": _MessageBody, "QueueUrl": _QueueUrl, "DelaySeconds": (NullOrUndefined Nothing), "MessageAttributes": (NullOrUndefined Nothing), "MessageDeduplicationId": (NullOrUndefined Nothing), "MessageGroupId": (NullOrUndefined Nothing) }



-- | <p>The <code>MD5OfMessageBody</code> and <code>MessageId</code> elements.</p>
newtype SendMessageResult = SendMessageResult 
  { "MD5OfMessageBody" :: NullOrUndefined (String)
  , "MD5OfMessageAttributes" :: NullOrUndefined (String)
  , "MessageId" :: NullOrUndefined (String)
  , "SequenceNumber" :: NullOrUndefined (String)
  }
derive instance newtypeSendMessageResult :: Newtype SendMessageResult _
derive instance repGenericSendMessageResult :: Generic SendMessageResult _
instance showSendMessageResult :: Show SendMessageResult where show = genericShow
instance decodeSendMessageResult :: Decode SendMessageResult where decode = genericDecode options
instance encodeSendMessageResult :: Encode SendMessageResult where encode = genericEncode options

-- | Constructs SendMessageResult from required parameters
newSendMessageResult :: SendMessageResult
newSendMessageResult  = SendMessageResult { "MD5OfMessageAttributes": (NullOrUndefined Nothing), "MD5OfMessageBody": (NullOrUndefined Nothing), "MessageId": (NullOrUndefined Nothing), "SequenceNumber": (NullOrUndefined Nothing) }

-- | Constructs SendMessageResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSendMessageResult' :: ( { "MD5OfMessageBody" :: NullOrUndefined (String) , "MD5OfMessageAttributes" :: NullOrUndefined (String) , "MessageId" :: NullOrUndefined (String) , "SequenceNumber" :: NullOrUndefined (String) } -> {"MD5OfMessageBody" :: NullOrUndefined (String) , "MD5OfMessageAttributes" :: NullOrUndefined (String) , "MessageId" :: NullOrUndefined (String) , "SequenceNumber" :: NullOrUndefined (String) } ) -> SendMessageResult
newSendMessageResult'  customize = (SendMessageResult <<< customize) { "MD5OfMessageAttributes": (NullOrUndefined Nothing), "MD5OfMessageBody": (NullOrUndefined Nothing), "MessageId": (NullOrUndefined Nothing), "SequenceNumber": (NullOrUndefined Nothing) }



-- | <p/>
newtype SetQueueAttributesRequest = SetQueueAttributesRequest 
  { "QueueUrl" :: (String)
  , "Attributes" :: (QueueAttributeMap)
  }
derive instance newtypeSetQueueAttributesRequest :: Newtype SetQueueAttributesRequest _
derive instance repGenericSetQueueAttributesRequest :: Generic SetQueueAttributesRequest _
instance showSetQueueAttributesRequest :: Show SetQueueAttributesRequest where show = genericShow
instance decodeSetQueueAttributesRequest :: Decode SetQueueAttributesRequest where decode = genericDecode options
instance encodeSetQueueAttributesRequest :: Encode SetQueueAttributesRequest where encode = genericEncode options

-- | Constructs SetQueueAttributesRequest from required parameters
newSetQueueAttributesRequest :: QueueAttributeMap -> String -> SetQueueAttributesRequest
newSetQueueAttributesRequest _Attributes _QueueUrl = SetQueueAttributesRequest { "Attributes": _Attributes, "QueueUrl": _QueueUrl }

-- | Constructs SetQueueAttributesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetQueueAttributesRequest' :: QueueAttributeMap -> String -> ( { "QueueUrl" :: (String) , "Attributes" :: (QueueAttributeMap) } -> {"QueueUrl" :: (String) , "Attributes" :: (QueueAttributeMap) } ) -> SetQueueAttributesRequest
newSetQueueAttributesRequest' _Attributes _QueueUrl customize = (SetQueueAttributesRequest <<< customize) { "Attributes": _Attributes, "QueueUrl": _QueueUrl }



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where show = genericShow
instance decodeStringList :: Decode StringList where decode = genericDecode options
instance encodeStringList :: Encode StringList where encode = genericEncode options



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeyList = TagKeyList (Array TagKey)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where decode = genericDecode options
instance encodeTagKeyList :: Encode TagKeyList where encode = genericEncode options



newtype TagMap = TagMap (StrMap.StrMap TagValue)
derive instance newtypeTagMap :: Newtype TagMap _
derive instance repGenericTagMap :: Generic TagMap _
instance showTagMap :: Show TagMap where show = genericShow
instance decodeTagMap :: Decode TagMap where decode = genericDecode options
instance encodeTagMap :: Encode TagMap where encode = genericEncode options



newtype TagQueueRequest = TagQueueRequest 
  { "QueueUrl" :: (String)
  , "Tags" :: (TagMap)
  }
derive instance newtypeTagQueueRequest :: Newtype TagQueueRequest _
derive instance repGenericTagQueueRequest :: Generic TagQueueRequest _
instance showTagQueueRequest :: Show TagQueueRequest where show = genericShow
instance decodeTagQueueRequest :: Decode TagQueueRequest where decode = genericDecode options
instance encodeTagQueueRequest :: Encode TagQueueRequest where encode = genericEncode options

-- | Constructs TagQueueRequest from required parameters
newTagQueueRequest :: String -> TagMap -> TagQueueRequest
newTagQueueRequest _QueueUrl _Tags = TagQueueRequest { "QueueUrl": _QueueUrl, "Tags": _Tags }

-- | Constructs TagQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagQueueRequest' :: String -> TagMap -> ( { "QueueUrl" :: (String) , "Tags" :: (TagMap) } -> {"QueueUrl" :: (String) , "Tags" :: (TagMap) } ) -> TagQueueRequest
newTagQueueRequest' _QueueUrl _Tags customize = (TagQueueRequest <<< customize) { "QueueUrl": _QueueUrl, "Tags": _Tags }



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



-- | <p>The batch request contains more entries than permissible.</p>
newtype TooManyEntriesInBatchRequest = TooManyEntriesInBatchRequest Types.NoArguments
derive instance newtypeTooManyEntriesInBatchRequest :: Newtype TooManyEntriesInBatchRequest _
derive instance repGenericTooManyEntriesInBatchRequest :: Generic TooManyEntriesInBatchRequest _
instance showTooManyEntriesInBatchRequest :: Show TooManyEntriesInBatchRequest where show = genericShow
instance decodeTooManyEntriesInBatchRequest :: Decode TooManyEntriesInBatchRequest where decode = genericDecode options
instance encodeTooManyEntriesInBatchRequest :: Encode TooManyEntriesInBatchRequest where encode = genericEncode options



-- | <p>Error code 400. Unsupported operation.</p>
newtype UnsupportedOperation = UnsupportedOperation Types.NoArguments
derive instance newtypeUnsupportedOperation :: Newtype UnsupportedOperation _
derive instance repGenericUnsupportedOperation :: Generic UnsupportedOperation _
instance showUnsupportedOperation :: Show UnsupportedOperation where show = genericShow
instance decodeUnsupportedOperation :: Decode UnsupportedOperation where decode = genericDecode options
instance encodeUnsupportedOperation :: Encode UnsupportedOperation where encode = genericEncode options



newtype UntagQueueRequest = UntagQueueRequest 
  { "QueueUrl" :: (String)
  , "TagKeys" :: (TagKeyList)
  }
derive instance newtypeUntagQueueRequest :: Newtype UntagQueueRequest _
derive instance repGenericUntagQueueRequest :: Generic UntagQueueRequest _
instance showUntagQueueRequest :: Show UntagQueueRequest where show = genericShow
instance decodeUntagQueueRequest :: Decode UntagQueueRequest where decode = genericDecode options
instance encodeUntagQueueRequest :: Encode UntagQueueRequest where encode = genericEncode options

-- | Constructs UntagQueueRequest from required parameters
newUntagQueueRequest :: String -> TagKeyList -> UntagQueueRequest
newUntagQueueRequest _QueueUrl _TagKeys = UntagQueueRequest { "QueueUrl": _QueueUrl, "TagKeys": _TagKeys }

-- | Constructs UntagQueueRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagQueueRequest' :: String -> TagKeyList -> ( { "QueueUrl" :: (String) , "TagKeys" :: (TagKeyList) } -> {"QueueUrl" :: (String) , "TagKeys" :: (TagKeyList) } ) -> UntagQueueRequest
newUntagQueueRequest' _QueueUrl _TagKeys customize = (UntagQueueRequest <<< customize) { "QueueUrl": _QueueUrl, "TagKeys": _TagKeys }

