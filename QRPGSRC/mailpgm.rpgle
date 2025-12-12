FSTOKDURUM IF   E             DISK                                   
D RunCmd          PR                  ExtPgm('QCMDEXC')              
D  CmdStr                     3000A   Const Options(*VarSize)        
D  CmdLen                       15P 5 Const                          
                                                                     
D Govde           S             52A   Inz('Kritik Urunler: ')        
D Komut           S            200A                                  
D KomutLen        S             15P 5                                
                                                                     
C                   READ      STOKREC                                
C                   DOW       NOT %EOF(STOKDURUM)                    
C                   IF        MEVCUTSTOK < KRITIKSEV                 
C                   EVAL      Govde = %TRIM(Govde) + ' ' +           
C                                     %TRIM(URUN_ADI) +              
C                                     '(' + %CHAR(MEVCUTSTOK) + ')'  
C                   ENDIF                                            
C                   READ      STOKREC                                
C                   ENDDO                                            
C*                  DSPLY                   GOVDE                    
C                   IF        %LEN(%TRIM(Govde)) > 10                    
C                   EVAL      Komut = 'SNDSMTPEMM RCP((''' +             
C                                     'xxx@xxx.com' +             
C                                     ''')) SUBJECT(''Stok Durumu'') ' + 
C                                     'NOTE(''' + %TRIM(Govde) + ''')'   
C                   EVAL      KomutLen = %LEN(%TRIM(Komut))              
C                   CALLP     RunCmd(Komut : KomutLen)                   
C                   ENDIF                                                
                                                                         
C                   EVAL      *INLR = *ON                                
