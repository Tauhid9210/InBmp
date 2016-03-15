
var="/home/ravi/riak-2.1.3/dev"


 sudo $var/dev1/bin/riak-admin bucket-type create STATUS_TRANSITION;
 sudo $var/dev1/bin/riak-admin bucket-type activate STATUS_TRANSITION;
 sudo $var/dev1/bin/riak-admin bucket-type create BUCKET_COLLECTION_TYPE;
 sudo $var/dev1/bin/riak-admin bucket-type activate BUCKET_COLLECTION_TYPE;

 sudo $var/dev1/bin/riak-admin bucket-type create MASTER_BRANCH_BUCKET_TYPE;
 sudo $var/dev1/bin/riak-admin bucket-type activate MASTER_BRANCH_BUCKET_TYPE;

 sudo $var/dev1/bin/riak-admin bucket-type create SALE_ORDER_BUCKET_TYPE;
 sudo $var/dev1/bin/riak-admin bucket-type activate  SALE_ORDER_BUCKET_TYPE;
 sudo $var/dev1/bin/riak-admin bucket-type create bag;
 sudo $var/dev1/bin/riak-admin bucket-type activate bag;
 sudo $var/dev1/bin/riak-admin bucket-type create drs;
 sudo $var/dev1/bin/riak-admin bucket-type activate drs;
 sudo $var/dev1/bin/riak-admin bucket-type create manifest;
 sudo $var/dev1/bin/riak-admin bucket-type activate manifest;
 sudo $var/dev1/bin/riak-admin bucket-type create nobusiness;
 sudo $var/dev1/bin/riak-admin bucket-type activate nobusiness;

url="-XPUT http://192.168.1.14:10028"

curl $url/search/index/master_branch_index;
curl $url/types/MASTER_BRANCH_BUCKET_TYPE/buckets/MASTER_BRANCH_BUCKET/props -H'content-type:application/json' -d '{"props":{"search_index":"master_branch_index"}}';
sudo $var/dev1/bin/riak-admin bucket-type update MASTER_BRANCH_BUCKET_TYPE '{"props":{"search_index":"master_branch_index"}}';

curl $url/search/index/STATUS_TRANSITION_MACHINE_INDEX;
curl $url/types/STATUS_TRANSITION/buckets/STATUS_TRANSITION_MACHINE/props -H'content-type:application/json' -d '{"props":{"search_index":"STATUS_TRANSITION_MACHINE_INDEX"}}';
sudo $var/dev1/bin/riak-admin bucket-type update STATUS_TRANSITION '{"props":{"search_index":"STATUS_TRANSITION_MACHINE_INDEX"}}';

curl $url/search/index/STATUS_MASTER_INDEX;
curl $url/types/STATUS_TRANSITION/buckets/STATUS_MASTER/props -H'content-type:application/json' -d '{"props":{"search_index":"STATUS_MASTER_INDEX"}}';
sudo $var/dev1/bin/riak-admin bucket-type update STATUS_TRANSITION '{"props":{"search_index":"STATUS_MASTER_INDEX"}}';

curl $url/search/index/master_status_index;
curl $url/types/nobusiness/buckets/master_status/props -H'content-type:application/json' -d '{"props":{"search_index":"master_status_index"}}';

curl $url/search/index/bucket_collention_index;
curl $url/types/BUCKET_COLLECTION_TYPE/buckets/BUCKET_COLLECTION/props -H'content-type:application/json' -d '{"props":{"search_index":"bucket_collention_index"}}';
sudo $var/dev1/bin/riak-admin bucket-type update BUCKET_COLLECTION_TYPE '{"props":{"search_index":"bucket_collention_index"}}';


curl $url/search/index/sale_order_index;
curl $url/types/SALE_ORDER_BUCKET_TYPE/buckets/SALE_ORDER_BUCKET/props -H'content-type:application/json' -d '{"props":{"search_index":"sale_order_index"}}';
sudo $var/dev1/bin/riak-admin bucket-type update SALE_ORDER_BUCKET_TYPE '{"props":{"search_index":"sale_order_index"}}';

curl $url/search/index/master_status;
curl $url/types/nobusiness/buckets/master_status/props -H'content-type:application/json' -d '{"props":{"search_index":"master_status"}}';

curl $url/search/index/cod_history;
curl $url/types/nobusiness/buckets/cod_history/props -H'content-type:application/json' -d '{"props":{"search_index":"cod_history"}}';

curl $url/search/index/master_state;	
curl $url/types/nobusiness/buckets/master_state/props -H'content-type:application/json' -d '{"props":{"search_index":"master_state"}}';

curl $url/search/index/master_lbhScan;
curl $url/types/nobusiness/buckets/master_lbhScan/props -H'content-type:application/json' -d '{"props":{"search_index":"master_lbhScan"}}';

curl $url/search/index/master_packetTracer;
curl $url/types/nobusiness/buckets/master_packetTracer/props -H'content-type:application/json' -d '{"props":{"search_index":"master_packetTracer"}}';

curl $url/search/index/master_client;	
curl $url/types/nobusiness/buckets/master_client/props -H'content-type:application/json' -d '{"props":{"search_index":"master_client"}}';

curl $url/search/index/master_branchOnHub;	
curl $url/types/nobusiness/buckets/master_branchOnHub/props -H'content-type:application/json' -d '{"props":{"search_index":"master_branchOnHub"}}';

curl $url/search/index/pincode;
curl $url/types/nobusiness/buckets/pincode/props -H'content-type:application/json' -d '{"props":{"search_index":"pincode"}}';

curl $url/search/index/city_pincode;	
curl $url/types/nobusiness/buckets/city_pincode/props -H'content-type:application/json' -d '{"props":{"search_index":"city_pincode"}}';

curl $url/search/index/master_module;	
curl $url/types/nobusiness/buckets/master_module/props -H'content-type:application/json' -d '{"props":{"search_index":"master_module"}}';

curl $url/search/index/master_servicablecity;	
curl $url/types/nobusiness/buckets/master_servicablecity/props -H'content-type:application/json' -d '{"props":{"search_index":"master_servicablecity"}}';

curl $url/search/index/master_receiver;	
curl $url/types/nobusiness/buckets/master_receiver/props -H'content-type:application/json' -d '{"props":{"search_index":"master_receiver"}}';

curl $url/search/index/advance_search;	
curl $url/types/nobusiness/buckets/advance_search/props -H'content-type:application/json' -d '{"props":{"search_index":"advance_search"}}';	

curl $url/search/index/master_sender;	
curl $url/types/nobusiness/buckets/master_sender/props -H'content-type:application/json' -d '{"props":{"search_index":"master_sender"}}';	

curl $url/search/index/employee_history;
curl $url/types/nobusiness/buckets/employee_history/props -H'content-type:application/json' -d '{"props":{"search_index":"employee_history"}}';		

curl $url/search/index/Vendor_FinancialHistory;
curl $url/types/nobusiness/buckets/Vendor_FinancialHistory/props -H'content-type:application/json' -d '{"props":{"search_index":"Vendor_FinancialHistory"}}';

curl $url/search/index/master_hub;
curl $url/types/nobusiness/buckets/master_hub/props -H'content-type:application/json' -d '{"props":{"search_index":"master_hub"}}';

curl $url/search/index/master_packetCreatUnScanned;
curl $url/types/nobusiness/buckets/master_packetCreatUnScanned/props -H'content-type:application/json' -d '{"props":{"search_index":"master_packetCreatUnScanned"}}';

curl $url/search/index/master_country;
curl $url/types/nobusiness/buckets/master_country/props -H'content-type:application/json' -d '{"props":{"search_index":"master_country"}}';

curl $url/search/index/master_manifestComes;
curl $url/types/nobusiness/buckets/master_manifestComes/props -H'content-type:application/json' -d '{"props":{"search_index":"master_manifestComes"}}';

curl $url/search/index/master_pincodeOnBranch;
curl $url/types/nobusiness/buckets/master_pincodeOnBranch/props -H'content-type:application/json' -d '{"props":{"search_index":"master_pincodeOnBranch"}}';

curl $url/search/index/master_physicalDataNotFound;
curl $url/types/nobusiness/buckets/master_physicalDataNotFound/props -H'content-type:application/json' -d '{"props":{"search_index":"master_physicalDataNotFound"}}';

curl $url/search/index/master_policy;
curl $url/types/nobusiness/buckets/master_policy/props -H'content-type:application/json' -d '{"props":{"search_index":"master_policy"}}';

curl $url/search/index/receiver_history;
curl $url/types/nobusiness/buckets/receiver_history/props -H'content-type:application/json' -d '{"props":{"search_index":"receiver_history"}}';						
   					
   			 		
    			
curl $url/search/index/drs;
curl $url/types/drs/buckets/DRS/props -H'content-type:application/json' -d '{"props":{"search_index":"drs"}}';
sudo $var/dev1/bin/riak-admin bucket-type update drs '{"props":{"search_index":"drs"}}';	

curl $url/search/index/module_store;
curl $url/types/nobusiness/buckets/module_store/props -H'content-type:application/json' -d '{"props":{"search_index":"module_store"}}';	

curl $url/search/index/bag_details;	
curl $url/types/nobusiness/buckets/bag_details/props -H'content-type:application/json' -d '{"props":{"search_index":"bag_details"}}';

curl $url/search/index/master_hubBagReceptions;
curl $url/types/nobusiness/buckets/master_hubBagReceptions/props -H'content-type:application/json' -d '{"props":{"search_index":"master_hubBagReceptions"}}';	

curl $url/search/index/vendor_history;
curl $url/types/nobusiness/buckets/vendor_history/props -H'content-type:application/json' -d '{"props":{"search_index":"vendor_history"}}';

curl $url/search/index/master_awbNumberSeris;
curl $url/types/nobusiness/buckets/master_awbNumberSeris/props -H'content-type:application/json' -d '{"props":{"search_index":"master_awbNumberSeris"}}';

curl $url/search/index/master_deliveryBoy;
curl $url/types/nobusiness/buckets/master_deliveryBoy/props -H'content-type:application/json' -d '{"props":{"search_index":"master_deliveryBoy"}}';

curl $url/search/index/employee_pages;
curl $url/types/nobusiness/buckets/employee_pages/props -H'content-type:application/json' -d '{"props":{"search_index":"employee_pages"}}';

curl $url/search/index/bag;
curl $url/types/bag/buckets/Bag/props -H'content-type:application/json' -d '{"props":{"search_index":"bag"}}';
sudo $var/dev1/bin/riak-admin bucket-type update bag '{"props":{"search_index":"bag"}}';

curl $url/search/index/master_vendor;
curl $url/types/nobusiness/buckets/master_vendor/props -H'content-type:application/json' -d '{"props":{"search_index":"master_vendor"}}';
   				
 curl $url/search/index/client_history;
curl $url/types/nobusiness/buckets/client_history/props -H'content-type:application/json' -d '{"props":{"search_index":"client_history"}}';

curl $url/search/index/master_employee;
curl $url/types/nobusiness/buckets/master_employee/props -H'content-type:application/json' -d '{"props":{"search_index":"master_employee"}}';			
   		
   			
curl $url/search/index/master_pickupRequest;
curl $url/types/nobusiness/buckets/master_pickupRequest/props -H'content-type:application/json' -d '{"props":{"search_index":"master_pickupRequest"}}';

curl $url/search/index/master_packetStorage;
curl $url/types/nobusiness/buckets/master_packetStorage/props -H'content-type:application/json' -d '{"props":{"search_index":"master_packetStorage"}}';	

curl $url/search/index/master_employeeAuth;
curl $url/types/nobusiness/buckets/master_employeeAuth/props -H'content-type:application/json' -d '{"props":{"search_index":"master_employeeAuth"}}';

curl $url/search/index/master_pincode;
curl $url/types/nobusiness/buckets/master_pincode/props -H'content-type:application/json' -d '{"props":{"search_index":"master_pincode"}}';	

curl $url/search/index/master_branchBagReceptions;
curl $url/types/nobusiness/buckets/master_branchBagReceptions/props -H'content-type:application/json' -d '{"props":{"search_index":"master_branchBagReceptions"}}';

curl $url/search/index/manifest;
curl $url/types/manifest/buckets/Manifest/props -H'content-type:application/json' -d '{"props":{"search_index":"manifest"}}';	
sudo $var/dev1/bin/riak-admin bucket-type update manifest '{"props":{"search_index":"manifest"}}';

curl $url/search/index/madster_module;
curl $url/types/nobusiness/buckets/madster_module/props -H'content-type:application/json' -d '{"props":{"search_index":"madster_module"}}';


curl $url/search/index/locater;
curl $url/types/nobusiness/buckets/LOCATER_BUCKET/props -H'content-type:application/json' -d '{"props":{"search_index":"locater"}}';

curl $url/search/index/static_route;
curl $url/types/nobusiness/buckets/STATIC_ROUTE_BUCKET/props -H'content-type:application/json' -d '{"props":{"search_index":"static_route"}}';

curl $url/search/index/paytm_index;
curl $url/types/nobusiness/buckets/PAYTM_BUCKET/props -H'content-type:application/json' -d '{"props":{"search_index":"paytm_index"}}';





