{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.ClientAccess.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientAccessList@.
module Network.Google.Resource.AdExchangeBuyer.ClientAccess.List
    (
    -- * REST Resource
      ClientAccessListResource

    -- * Creating a Request
    , clientAccessList'
    , ClientAccessList'

    -- * Request Lenses
    , calQuotaUser
    , calPrettyPrint
    , calUserIP
    , calKey
    , calListClientAccessCapabilitiesRequest
    , calOAuthToken
    , calFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientAccessList@ which the
-- 'ClientAccessList'' request conforms to.
type ClientAccessListResource =
     "clientAccess" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ListClientAccessCapabilitiesRequest
                       :> Get '[JSON] ListClientAccessCapabilitiesResponse

--
-- /See:/ 'clientAccessList'' smart constructor.
data ClientAccessList' = ClientAccessList'
    { _calQuotaUser                           :: !(Maybe Text)
    , _calPrettyPrint                         :: !Bool
    , _calUserIP                              :: !(Maybe Text)
    , _calKey                                 :: !(Maybe Key)
    , _calListClientAccessCapabilitiesRequest :: !ListClientAccessCapabilitiesRequest
    , _calOAuthToken                          :: !(Maybe OAuthToken)
    , _calFields                              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'calQuotaUser'
--
-- * 'calPrettyPrint'
--
-- * 'calUserIP'
--
-- * 'calKey'
--
-- * 'calListClientAccessCapabilitiesRequest'
--
-- * 'calOAuthToken'
--
-- * 'calFields'
clientAccessList'
    :: ListClientAccessCapabilitiesRequest -- ^ 'ListClientAccessCapabilitiesRequest'
    -> ClientAccessList'
clientAccessList' pCalListClientAccessCapabilitiesRequest_ =
    ClientAccessList'
    { _calQuotaUser = Nothing
    , _calPrettyPrint = True
    , _calUserIP = Nothing
    , _calKey = Nothing
    , _calListClientAccessCapabilitiesRequest = pCalListClientAccessCapabilitiesRequest_
    , _calOAuthToken = Nothing
    , _calFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
calQuotaUser :: Lens' ClientAccessList' (Maybe Text)
calQuotaUser
  = lens _calQuotaUser (\ s a -> s{_calQuotaUser = a})

-- | Returns response with indentations and line breaks.
calPrettyPrint :: Lens' ClientAccessList' Bool
calPrettyPrint
  = lens _calPrettyPrint
      (\ s a -> s{_calPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
calUserIP :: Lens' ClientAccessList' (Maybe Text)
calUserIP
  = lens _calUserIP (\ s a -> s{_calUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
calKey :: Lens' ClientAccessList' (Maybe Key)
calKey = lens _calKey (\ s a -> s{_calKey = a})

-- | Multipart request metadata.
calListClientAccessCapabilitiesRequest :: Lens' ClientAccessList' ListClientAccessCapabilitiesRequest
calListClientAccessCapabilitiesRequest
  = lens _calListClientAccessCapabilitiesRequest
      (\ s a ->
         s{_calListClientAccessCapabilitiesRequest = a})

-- | OAuth 2.0 token for the current user.
calOAuthToken :: Lens' ClientAccessList' (Maybe OAuthToken)
calOAuthToken
  = lens _calOAuthToken
      (\ s a -> s{_calOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
calFields :: Lens' ClientAccessList' (Maybe Text)
calFields
  = lens _calFields (\ s a -> s{_calFields = a})

instance GoogleAuth ClientAccessList' where
        authKey = calKey . _Just
        authToken = calOAuthToken . _Just

instance GoogleRequest ClientAccessList' where
        type Rs ClientAccessList' =
             ListClientAccessCapabilitiesResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u ClientAccessList'{..}
          = go _calQuotaUser (Just _calPrettyPrint) _calUserIP
              _calKey
              _calOAuthToken
              _calFields
              (Just AltJSON)
              _calListClientAccessCapabilitiesRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ClientAccessListResource)
                      r
                      u