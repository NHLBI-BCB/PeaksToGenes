use utf8;
package PeaksToGenes::Schema::Result::Mouseannotatedpeak;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PeaksToGenes::Schema::Result::Mouseannotatedpeak

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<mouseannotatedpeaks>

=cut

__PACKAGE__->table("mouseannotatedpeaks");

=head1 ACCESSORS

=head2 name

  data_type: 'text'
  is_nullable: 0

=head2 gene

  data_type: 'text'
  is_nullable: 0

=head2 mouse_100k_upstream_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_50k_upstream_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_25k_upstream_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_10k_upstream_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_5k_upstream_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_promoters_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_5prime_utr_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_exons_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_introns_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_3prime_utr_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_2_5k_downstream_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_5k_downstream_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_10k_downstream_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_25k_downstream_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_50k_downstream_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_100k_downstream_number_of_peaks

  data_type: 'integer'
  is_nullable: 1

=head2 mouse_100k_upstream_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_50k_upstream_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_25k_upstream_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_10k_upstream_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_5k_upstream_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_promoters_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_5prime_utr_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_exons_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_introns_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_3prime_utr_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_2_5k_downstream_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_5k_downstream_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_10k_downstream_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_25k_downstream_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_50k_downstream_peaks_information

  data_type: 'text'
  is_nullable: 1

=head2 mouse_100k_downstream_peaks_information

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "name",
  { data_type => "text", is_nullable => 0 },
  "gene",
  { data_type => "text", is_nullable => 0 },
  "mouse_100k_upstream_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_50k_upstream_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_25k_upstream_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_10k_upstream_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_5k_upstream_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_promoters_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_5prime_utr_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_exons_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_introns_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_3prime_utr_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_2_5k_downstream_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_5k_downstream_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_10k_downstream_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_25k_downstream_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_50k_downstream_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_100k_downstream_number_of_peaks",
  { data_type => "integer", is_nullable => 1 },
  "mouse_100k_upstream_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_50k_upstream_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_25k_upstream_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_10k_upstream_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_5k_upstream_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_promoters_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_5prime_utr_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_exons_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_introns_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_3prime_utr_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_2_5k_downstream_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_5k_downstream_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_10k_downstream_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_25k_downstream_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_50k_downstream_peaks_information",
  { data_type => "text", is_nullable => 1 },
  "mouse_100k_downstream_peaks_information",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</name>

=item * L</gene>

=back

=cut

__PACKAGE__->set_primary_key("name", "gene");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-06-10 21:44:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0DBFa3hdwdi4ebAIjGHniw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
