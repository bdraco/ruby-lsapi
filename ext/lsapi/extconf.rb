require 'mkmf'
dir_config( 'lsapi' )
if ( have_library( "socket" ))
    have_library( "nsl" )
end
if RUBY_VERSION =~ /1.9/ then
    $CPPFLAGS += " -DRUBY_19"
end 
create_makefile( "lsapi" )
