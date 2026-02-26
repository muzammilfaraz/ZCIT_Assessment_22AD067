@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZABCCIT_STU_22AD067123'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZABCC_CIT_STU_22AD067123
  provider contract TRANSACTIONAL_QUERY
  as projection on ZABCR_CIT_STU_22AD067123
  association [1..1] to ZABCR_CIT_STU_22AD067123 as _BaseEntity on $projection.STUDID = _BaseEntity.STUDID
{
  key StudID,
  Name,
  Gender,
  Dob,
  Phone,
  Email,
  Course,
  Department,
  RegDate,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
