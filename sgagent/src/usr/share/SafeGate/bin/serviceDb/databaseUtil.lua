LuaQ     4@/usr/share/SafeGate/bin/serviceDb/databaseUtil.lua                   @A    E   \     ΐΑ    Ε  ά   AA  AJAΑIBAIBΑI  Α Κ  Β
Γ	J  Α C A ΓBbB	EB	  ΒJΕI  Α B’ICBI  ΒΕΒ Κ  BβΒEB  ΒΚΖΙ 
 CA C"ΙCBΙ AβΑ Κ  Β
Ζ	J B Α Γ A ΓBbB	EB	  ΒJΗBI  BΑ B’ICBI  ΒΗ Κ C BβΒEB  ΒΚΗΒΙ 
 CA C"ΙCBΙ AβΑ Κ  Β
Θ	 J B Α  ΓA 	 	CΑ BbB	EB	  ΒJΙI  BΑ  B’ICBI  ΒΙΒ Κ C A BβΒEB  ΒΚΚΙ 
 CA C"ΙCBΙ AβΑI  JΖ JΒ JF JΒ A’I  €            I  A€    I  €     I  Α€    I ^     0   require    	database    configuration    	fileUtil    log    try    DATABASE_SAFEGATE    	SafeGate    DATABASE_DOMAIN    Domain    DATABASE_ENDUSERDEVICE    EndUserDevice    DATABASE_TEST    query    bINSERT INTO Profile(id, data_id, mac_addresses, context, updated_time) VALUES(%s, %s, %s, %s, %s)    params    
123456789    00:00:00:aa:aa:aa    {'rules':[],'mode':0} 	[Ν   type    execute    $SELECT * FROM Profile WHERE id = %s    "DELETE FROM Profile WHERE id = %s    SELECT * FROM Profile LIMIT %s 	   2   hINSERT INTO endUserDevice(mac_address, data_id, name, ip_local, registered) VALUES (%s, %s, %s, %s, %s)    
TEST CASE    192.168.0.0    3SELECT * FROM endUserDevice WHERE mac_address = %s    1DELETE FROM endUserDevice WHERE mac_address = %s    %SELECT * FROM endUserDevice LIMIT %s    ^INSERT INTO Domain(domain, id, type, ipv4, ipv6, updated_time) VALUES(%s, %s, %s, %s, %s, %s)    00.safegate.00 	       192.168.0.1     	 ©Η   3SELECT * FROM Domain WHERE domain = %s AND id = %s    1DELETE FROM Domain WHERE domain = %s AND id = %s    SELECT * FROM Domain LIMIT %s    TEST_CASE_INIT_OK    DONE    ROW    init_db    get_database    get_db_path    validate_result           ?   o    M @  ΐ@Ζ    ΔΐΛ @ά  @Ϊ    ΔΐΐΛ ΑF  ά  @Ϊ @ A@Ζ  ή  ΔΑΛ @ά AΑ ΐAFA  J  ΐ@Γ   d          BC  Cd     CBΑI  γ  c  ‘ϊΐ BΑΐ ΐB  A@   δ             BA  Αδ  A  @Α Α @             get_db_path    name    exists    copy    deploy    NOT_CREATE_DB    new    DATABASE_TEST    pairs    catch 	      validate_result           M   Y     (    @  @@   @   @ΐ   ΔΑ Ζ      A@ΐ  A  ΐ    @  @ΐΐ   Aΐ   @ΐ   ΔΑ Ζ        D  B    B@       
   type    execute    stmt_execute    query    params 	      DONE    stmt_query    table    ROW        (   N   N   N   N   O   O   O   O   O   O   O   O   P   P   P   Q   Q   Q   R   S   S   S   S   T   T   T   T   T   T   T   T   U   U   U   U   U   V   V   V   Y          case    res    db    	database        Z   \      D ΐ F   H        CORRUPT           [   [   [   \      _              res    	database        b   f         @   @@  ΐΑ A   @   A@ @  A  @        warn    string    format    +DB init fail, replace new database from %s    deploy    close    remove           c   c   c   c   c   c   c   c   c   d   d   d   e   e   e   e   f          log    args    db    	fileUtil    db_path        g   i       D ΐ K   ΐ@\        error           h   h   h   h   i      ex              log    M   @   @   @   B   B   B   B   B   B   C   C   C   C   C   C   C   D   D   H   H   H   H   I   I   I   I   K   K   K   K   L   M   Y   Y   Y   Y   Y   M   Z   \   \   \   Z   ^   ^   ^   ^   ^   K   ^   a   a   a   a   a   a   b   f   f   f   f   f   f   b   g   i   i   g   k   k   k   k   k   k   n   n   o      self        L   args        L   db_path       L   db       L   
test_case       L   result       L   (for generator)       2   (for state)       2   (for control)       2   _       /   case       /   res       .      	fileUtil    	database    try    log        q   t    	 @   ΐ    Δΐ@Λ @ έ   ή        get_db_path    new        	   r   r   r   s   s   s   s   s   t      self           name           path             	database        v          D ΐ K \  @@      @   @   @ΐ      A    @ ΐ   @    @  ^        get_database_path    DATABASE_DOMAIN    get_database_domain_path    DATABASE_ENDUSERDEVICE     get_database_enduserdevice_path           w   w   w   y   y   y   y   z   z   z   z   z   {   {   {   {   |   |   |   |   |   ~   ~   ~   ~            name           path             config    databaseUtil               1 @ W  @   ΐ @ W@      ΔΐΖ Τ ΐW @          Β  Α  @  DΐFΒF W@ AUΑ@   Β ΐ AUΑ  !ϋ AΑ BA Α   ΐ A  ή         next    TEST_CASE_INIT_OK    pairs    case     fail    Ok    info    string    format    *    -> Result test case for db name (%s)         1                                                                                                                                                      	   result        0   name        0   resume       0   _resume       0   (for generator)       &   (for state)       &   (for control)       &   idx       $   val       $      databaseUtil    log                                  	   	   	   
   
   
                                                                                                                                     !   !   !   !   !   !   !   !   "   "   #   $   $   $   $   %   %   &   '   '   '   '   (   (   )   *   *   *   *   +   ,   ,   -   -   .   /   /   /   /   /   /   /   /   /   0   0   1   2   2   2   2   2   3   3   4   5   5   5   5   5   6   6   7   8   8   8   8   9   :   :   ;   <   <   <   <   <   <   <   o   o   o   o   o   ?   t   t   q            v                        	database          config          	fileUtil    	      log          try          databaseUtil           