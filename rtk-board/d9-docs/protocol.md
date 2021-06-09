# Protocol manual ver 1.4.39

## Binary Message Protocol
### Message format



The syntax of the message is shown below.
<0xA0,0xA1><PL><Message ID><Message Body><CS><0x0D,0x0A>

### Checksum
  
  Checksum (CS) field is transmitted in all messages. 
  
  The checksum field is the last field in a message before the end of sequence field. 
  
  The checksum is the 8-bit exclusive OR of only the payload bytes which start from Message ID until the last byte prior to the checksum byte. 
  
  A reference to the calculation of CS is provided below,

  CS = 0, N=PL;
  For n = 0 to N
  CS = CS ^ <Payload Byte # n>

### Data Type Definition
  
  | UINT8 | 8bits unsigned integer |
  
## Message flow

## Message list


## Some basic operations


## RTK operations


## Others
