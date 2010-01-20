package hapConfig::hapSchema::RemotecontrolLearned;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("remotecontrol_learned");
__PACKAGE__->add_columns(
  "id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "remotecontrol",
  { data_type => "INT", default_value => 0, is_nullable => 0, size => 11 },
  "name",
  {
    data_type => "VARCHAR",
    default_value => "Remote Control Learned",
    is_nullable => 1,
    size => 64,
  },
  "module",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "address",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "code",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "action",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "room",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "config",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2009-01-28 18:17:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QRG55G38y+9H5C4a2R4WmQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
