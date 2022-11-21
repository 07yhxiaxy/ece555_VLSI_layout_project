# BSD 3-Clause License
# 
# Copyright 2020 Lawrence T. Clark, Vinay Vashishtha, or Arizona State
# University
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 
# 1. Redistributions of source code must retain the above copyright notice,
# this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution.
# 
# 3. Neither the name of the copyright holder nor the names of its
# contributors may be used to endorse or promote products derived from this
# software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

# Setting environmental variable 'PDK_DIR' to the path where the ASAP7 PDK
# bundle is located.
setenv PDK_DIR /cae/apps/data/asap7PDK-2022/asap7PDK_r1p7

# Path to Cadence for loading the basic libraries
setenv CDSHOME /cae/apps/data/cadence-current/installs/IC618
setenv CDS_INST_DIR $CDSHOME
setenv CDS $CDSHOME
set path=($CDSHOME/bin $path)
set path=($CDSHOME/tools/bin $path)
set path=($CDSHOME/tools/dfII/bin $path)
setenv CDS_Netlisting_Mode Analog

# For Calibre GUI and menu entry
# setenv MGC_HOME /cae/apps/data/mentor-2021/aoi_cal_2021.3_15.9/
setenv MGC_HOME /cae/apps/data/mentor-current/aoi_cal_2022.3_17.8/

# Remove the pdf and create a link to it
rm -rf asap7_drm.pdf 
ln -s $PDK_DIR/docs/asap7_drm.pdf asap7_drm.pdf 

setenv MGC_RVE_CTO_FILE $PWD/rve_vis_asap7.cto

# These environmental variables specify the metal grids offsets from either
# X or Y axis, depending on the metal routing direction. The default offset
# value is 0 nm. To offset a particular grid by 'p' nm, specify the
# variable value as p*10.  Thus, for an offset of 24 nm, the corresponding
# variable value is 240.

setenv VAR_M4_YOFFSET "0"
setenv VAR_M5_XOFFSET "0"
setenv VAR_M6_YOFFSET "0"
setenv VAR_M7_XOFFSET "0"
