{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the jobs of a project
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @DataflowProjectsJobsList@.
module Dataflow.Projects.Jobs.List
    (
    -- * REST Resource
      ProjectsJobsListAPI

    -- * Creating a Request
    , projectsJobsList
    , ProjectsJobsList

    -- * Request Lenses
    , pjlXgafv
    , pjlQuotaUser
    , pjlPrettyPrint
    , pjlUploadProtocol
    , pjlPp
    , pjlAccessToken
    , pjlUploadType
    , pjlBearerToken
    , pjlKey
    , pjlView
    , pjlPageToken
    , pjlProjectId
    , pjlOauthToken
    , pjlPageSize
    , pjlFields
    , pjlCallback
    , pjlAlt
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @DataflowProjectsJobsList@ which the
-- 'ProjectsJobsList' request conforms to.
type ProjectsJobsListAPI =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             QueryParam "view" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "pageSize" Int32 :>
                   Get '[JSON] ListJobsResponse

-- | List the jobs of a project
--
-- /See:/ 'projectsJobsList' smart constructor.
data ProjectsJobsList = ProjectsJobsList
    { _pjlXgafv          :: !(Maybe Text)
    , _pjlQuotaUser      :: !(Maybe Text)
    , _pjlPrettyPrint    :: !Bool
    , _pjlUploadProtocol :: !(Maybe Text)
    , _pjlPp             :: !Bool
    , _pjlAccessToken    :: !(Maybe Text)
    , _pjlUploadType     :: !(Maybe Text)
    , _pjlBearerToken    :: !(Maybe Text)
    , _pjlKey            :: !(Maybe Text)
    , _pjlView           :: !(Maybe Text)
    , _pjlPageToken      :: !(Maybe Text)
    , _pjlProjectId      :: !Text
    , _pjlOauthToken     :: !(Maybe Text)
    , _pjlPageSize       :: !(Maybe Int32)
    , _pjlFields         :: !(Maybe Text)
    , _pjlCallback       :: !(Maybe Text)
    , _pjlAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjlXgafv'
--
-- * 'pjlQuotaUser'
--
-- * 'pjlPrettyPrint'
--
-- * 'pjlUploadProtocol'
--
-- * 'pjlPp'
--
-- * 'pjlAccessToken'
--
-- * 'pjlUploadType'
--
-- * 'pjlBearerToken'
--
-- * 'pjlKey'
--
-- * 'pjlView'
--
-- * 'pjlPageToken'
--
-- * 'pjlProjectId'
--
-- * 'pjlOauthToken'
--
-- * 'pjlPageSize'
--
-- * 'pjlFields'
--
-- * 'pjlCallback'
--
-- * 'pjlAlt'
projectsJobsList
    :: Text -- ^ 'projectId'
    -> ProjectsJobsList
projectsJobsList pPjlProjectId_ =
    ProjectsJobsList
    { _pjlXgafv = Nothing
    , _pjlQuotaUser = Nothing
    , _pjlPrettyPrint = True
    , _pjlUploadProtocol = Nothing
    , _pjlPp = True
    , _pjlAccessToken = Nothing
    , _pjlUploadType = Nothing
    , _pjlBearerToken = Nothing
    , _pjlKey = Nothing
    , _pjlView = Nothing
    , _pjlPageToken = Nothing
    , _pjlProjectId = pPjlProjectId_
    , _pjlOauthToken = Nothing
    , _pjlPageSize = Nothing
    , _pjlFields = Nothing
    , _pjlCallback = Nothing
    , _pjlAlt = "json"
    }

-- | V1 error format.
pjlXgafv :: Lens' ProjectsJobsList' (Maybe Text)
pjlXgafv = lens _pjlXgafv (\ s a -> s{_pjlXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pjlQuotaUser :: Lens' ProjectsJobsList' (Maybe Text)
pjlQuotaUser
  = lens _pjlQuotaUser (\ s a -> s{_pjlQuotaUser = a})

-- | Returns response with indentations and line breaks.
pjlPrettyPrint :: Lens' ProjectsJobsList' Bool
pjlPrettyPrint
  = lens _pjlPrettyPrint
      (\ s a -> s{_pjlPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjlUploadProtocol :: Lens' ProjectsJobsList' (Maybe Text)
pjlUploadProtocol
  = lens _pjlUploadProtocol
      (\ s a -> s{_pjlUploadProtocol = a})

-- | Pretty-print response.
pjlPp :: Lens' ProjectsJobsList' Bool
pjlPp = lens _pjlPp (\ s a -> s{_pjlPp = a})

-- | OAuth access token.
pjlAccessToken :: Lens' ProjectsJobsList' (Maybe Text)
pjlAccessToken
  = lens _pjlAccessToken
      (\ s a -> s{_pjlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjlUploadType :: Lens' ProjectsJobsList' (Maybe Text)
pjlUploadType
  = lens _pjlUploadType
      (\ s a -> s{_pjlUploadType = a})

-- | OAuth bearer token.
pjlBearerToken :: Lens' ProjectsJobsList' (Maybe Text)
pjlBearerToken
  = lens _pjlBearerToken
      (\ s a -> s{_pjlBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pjlKey :: Lens' ProjectsJobsList' (Maybe Text)
pjlKey = lens _pjlKey (\ s a -> s{_pjlKey = a})

-- | Level of information requested in response. Default is SUMMARY.
pjlView :: Lens' ProjectsJobsList' (Maybe Text)
pjlView = lens _pjlView (\ s a -> s{_pjlView = a})

-- | Set this to the \'next_page_token\' field of a previous response to
-- request additional results in a long list.
pjlPageToken :: Lens' ProjectsJobsList' (Maybe Text)
pjlPageToken
  = lens _pjlPageToken (\ s a -> s{_pjlPageToken = a})

-- | The project which owns the jobs.
pjlProjectId :: Lens' ProjectsJobsList' Text
pjlProjectId
  = lens _pjlProjectId (\ s a -> s{_pjlProjectId = a})

-- | OAuth 2.0 token for the current user.
pjlOauthToken :: Lens' ProjectsJobsList' (Maybe Text)
pjlOauthToken
  = lens _pjlOauthToken
      (\ s a -> s{_pjlOauthToken = a})

-- | If there are many jobs, limit response to at most this many. The actual
-- number of jobs returned will be the lesser of max_responses and an
-- unspecified server-defined limit.
pjlPageSize :: Lens' ProjectsJobsList' (Maybe Int32)
pjlPageSize
  = lens _pjlPageSize (\ s a -> s{_pjlPageSize = a})

-- | Selector specifying which fields to include in a partial response.
pjlFields :: Lens' ProjectsJobsList' (Maybe Text)
pjlFields
  = lens _pjlFields (\ s a -> s{_pjlFields = a})

-- | JSONP
pjlCallback :: Lens' ProjectsJobsList' (Maybe Text)
pjlCallback
  = lens _pjlCallback (\ s a -> s{_pjlCallback = a})

-- | Data format for response.
pjlAlt :: Lens' ProjectsJobsList' Text
pjlAlt = lens _pjlAlt (\ s a -> s{_pjlAlt = a})

instance GoogleRequest ProjectsJobsList' where
        type Rs ProjectsJobsList' = ListJobsResponse
        request = requestWithRoute defReq dataflowURL
        requestWithRoute r u ProjectsJobsList{..}
          = go _pjlXgafv _pjlQuotaUser _pjlPrettyPrint
              _pjlUploadProtocol
              _pjlPp
              _pjlAccessToken
              _pjlUploadType
              _pjlBearerToken
              _pjlKey
              _pjlView
              _pjlPageToken
              _pjlProjectId
              _pjlOauthToken
              _pjlPageSize
              _pjlFields
              _pjlCallback
              _pjlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsJobsListAPI)
                      r
                      u