#!/bin/bash
################################################################################
# (c) Copyright 2007-2014 Alces Software Ltd                                   #
#                                                                              #
# Symphony Software Toolkit                                                    #
#                                                                              #
# This file/package is part of Symphony                                        #
#                                                                              #
# Symphony is free software: you can redistribute it and/or modify it under    #
# the terms of the GNU Affero General Public License as published by the Free  #
# Software Foundation, either version 3 of the License, or (at your option)    #
# any later version.                                                           #
#                                                                              #
# Symphony is distributed in the hope that it will be useful, but WITHOUT      #
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or        #
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License #
# for more details.                                                            #
#                                                                              #
# You should have received a copy of the GNU Affero General Public License     #
# along with Symphony.  If not, see <http://www.gnu.org/licenses/>.            #
#                                                                              #
# For more information on the Symphony Toolkit, please visit:                  #
# http://www.alces-software.org/symphony                                       #
#                                                                              #
################################################################################

GEN_DIR=/tmp/symphonygenconfig.$$
SITE_CONFIG=$GEN_DIR/site.yml
HOST_CONFIG=$GEN_DIR/host.yml

echo "Creating Gen dir.."
mkdir -p $GEN_DIR

echo "-----site.yml-----"
echo "---"
echo "symphonydirector::clientname: democlient" 
echo "symphonydirector::customization::directorkey: \"`cat /root/.ssh/id_symphony.pub | cut -f 2 -d ' '`\""
echo "------------------"

echo "-----host.yml-----"

echo "------------------"

echo "Cleaning up.."
rm -rf $GEN_DIR
