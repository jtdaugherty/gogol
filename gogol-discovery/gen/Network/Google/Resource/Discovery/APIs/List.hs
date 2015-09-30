{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Discovery.APIs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve the list of APIs supported at this endpoint.
--
-- /See:/ <https://developers.google.com/discovery/ APIs Discovery Service Reference> for @DiscoveryAPIsList@.
module Discovery.APIs.List
    (
    -- * REST Resource
      ApisListAPI

    -- * Creating a Request
    , aPIsList
    , APIsList

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alPreferred
    , alUserIp
    , alKey
    , alName
    , alOauthToken
    , alFields
    , alAlt
    ) where

import           Network.Google.Discovery.Types
import           Network.Google.Prelude

-- | A resource alias for @DiscoveryAPIsList@ which the
-- 'APIsList' request conforms to.
type ApisListAPI =
     "apis" :>
       QueryParam "preferred" Bool :>
         QueryParam "name" Text :> Get '[JSON] DirectoryList

-- | Retrieve the list of APIs supported at this endpoint.
--
-- /See:/ 'aPIsList' smart constructor.
data APIsList = APIsList
    { _alQuotaUser   :: !(Maybe Text)
    , _alPrettyPrint :: !Bool
    , _alPreferred   :: !Bool
    , _alUserIp      :: !(Maybe Text)
    , _alKey         :: !(Maybe Text)
    , _alName        :: !(Maybe Text)
    , _alOauthToken  :: !(Maybe Text)
    , _alFields      :: !(Maybe Text)
    , _alAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'APIsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alPreferred'
--
-- * 'alUserIp'
--
-- * 'alKey'
--
-- * 'alName'
--
-- * 'alOauthToken'
--
-- * 'alFields'
--
-- * 'alAlt'
aPIsList
    :: APIsList
aPIsList =
    APIsList
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alPreferred = False
    , _alUserIp = Nothing
    , _alKey = Nothing
    , _alName = Nothing
    , _alOauthToken = Nothing
    , _alFields = Nothing
    , _alAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' APIsList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' APIsList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | Return only the preferred version of an API.
alPreferred :: Lens' APIsList' Bool
alPreferred
  = lens _alPreferred (\ s a -> s{_alPreferred = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIp :: Lens' APIsList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' APIsList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | Only include APIs with the given name.
alName :: Lens' APIsList' (Maybe Text)
alName = lens _alName (\ s a -> s{_alName = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' APIsList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' APIsList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' APIsList' Text
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest APIsList' where
        type Rs APIsList' = DirectoryList
        request = requestWithRoute defReq discoveryURL
        requestWithRoute r u APIsList{..}
          = go _alQuotaUser _alPrettyPrint (Just _alPreferred)
              _alUserIp
              _alKey
              _alName
              _alOauthToken
              _alFields
              _alAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ApisListAPI) r u