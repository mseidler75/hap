package hapConfig::hapSchema::Config;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("config");
__PACKAGE__->add_columns(
  "id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "name",
  { data_type => "VARCHAR", default_value => "", is_nullable => 0, size => 64 },
  "isdefault",
  { data_type => "SMALLINT", default_value => 0, is_nullable => 0, size => 1 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("code_unique", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.04005 @ 2009-01-28 18:17:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6DCwc6y6UFJhIZfBZz1rhQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;