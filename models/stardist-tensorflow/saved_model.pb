ыИ
аЕ
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ж
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	


Conv3DBackpropInputV2
input_sizes"Tshape
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	
"
Tshapetype0:
2	
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.15.02unknownУп
Ж
inputPlaceholder*C
shape::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
|
conv3d_1/truncated_normal/shapeConst*)
value B"                *
dtype0*
_output_shapes
:
c
conv3d_1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
 conv3d_1/truncated_normal/stddevConst*
valueB
 *yЩБ=*
dtype0*
_output_shapes
: 
О
)conv3d_1/truncated_normal/TruncatedNormalTruncatedNormalconv3d_1/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2ѓЉВ**
_output_shapes
: 
І
conv3d_1/truncated_normal/mulMul)conv3d_1/truncated_normal/TruncatedNormal conv3d_1/truncated_normal/stddev*
T0**
_output_shapes
: 

conv3d_1/truncated_normalAddconv3d_1/truncated_normal/mulconv3d_1/truncated_normal/mean*
T0**
_output_shapes
: 
Л
conv3d_1/kernelVarHandleOp*
shape: * 
shared_nameconv3d_1/kernel*"
_class
loc:@conv3d_1/kernel*
dtype0*
	container *
_output_shapes
: 
o
0conv3d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_1/kernel*
_output_shapes
: 
c
conv3d_1/kernel/AssignAssignVariableOpconv3d_1/kernelconv3d_1/truncated_normal*
dtype0

#conv3d_1/kernel/Read/ReadVariableOpReadVariableOpconv3d_1/kernel*
dtype0**
_output_shapes
: 
[
conv3d_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
Ѕ
conv3d_1/biasVarHandleOp*
shape: *
shared_nameconv3d_1/bias* 
_class
loc:@conv3d_1/bias*
dtype0*
	container *
_output_shapes
: 
k
.conv3d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_1/bias*
_output_shapes
: 
T
conv3d_1/bias/AssignAssignVariableOpconv3d_1/biasconv3d_1/Const*
dtype0
k
!conv3d_1/bias/Read/ReadVariableOpReadVariableOpconv3d_1/bias*
dtype0*
_output_shapes
: 

#conv3d_1/convolution/ReadVariableOpReadVariableOpconv3d_1/kernel*
dtype0**
_output_shapes
: 
ќ
conv3d_1/convolutionConv3Dinput#conv3d_1/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
i
conv3d_1/Reshape/ReadVariableOpReadVariableOpconv3d_1/bias*
dtype0*
_output_shapes
: 
s
conv3d_1/Reshape/shapeConst*)
value B"                *
dtype0*
_output_shapes
:

conv3d_1/ReshapeReshapeconv3d_1/Reshape/ReadVariableOpconv3d_1/Reshape/shape*
T0*
Tshape0**
_output_shapes
: 

conv3d_1/addAddV2conv3d_1/convolutionconv3d_1/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
|
conv3d_2/truncated_normal/shapeConst*)
value B"                 *
dtype0*
_output_shapes
:
c
conv3d_2/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
 conv3d_2/truncated_normal/stddevConst*
valueB
 *	`=*
dtype0*
_output_shapes
: 
Н
)conv3d_2/truncated_normal/TruncatedNormalTruncatedNormalconv3d_2/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2:**
_output_shapes
:  
І
conv3d_2/truncated_normal/mulMul)conv3d_2/truncated_normal/TruncatedNormal conv3d_2/truncated_normal/stddev*
T0**
_output_shapes
:  

conv3d_2/truncated_normalAddconv3d_2/truncated_normal/mulconv3d_2/truncated_normal/mean*
T0**
_output_shapes
:  
Л
conv3d_2/kernelVarHandleOp*
shape:  * 
shared_nameconv3d_2/kernel*"
_class
loc:@conv3d_2/kernel*
dtype0*
	container *
_output_shapes
: 
o
0conv3d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_2/kernel*
_output_shapes
: 
c
conv3d_2/kernel/AssignAssignVariableOpconv3d_2/kernelconv3d_2/truncated_normal*
dtype0

#conv3d_2/kernel/Read/ReadVariableOpReadVariableOpconv3d_2/kernel*
dtype0**
_output_shapes
:  
[
conv3d_2/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
Ѕ
conv3d_2/biasVarHandleOp*
shape: *
shared_nameconv3d_2/bias* 
_class
loc:@conv3d_2/bias*
dtype0*
	container *
_output_shapes
: 
k
.conv3d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_2/bias*
_output_shapes
: 
T
conv3d_2/bias/AssignAssignVariableOpconv3d_2/biasconv3d_2/Const*
dtype0
k
!conv3d_2/bias/Read/ReadVariableOpReadVariableOpconv3d_2/bias*
dtype0*
_output_shapes
: 

#conv3d_2/convolution/ReadVariableOpReadVariableOpconv3d_2/kernel*
dtype0**
_output_shapes
:  

conv3d_2/convolutionConv3Dconv3d_1/add#conv3d_2/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
i
conv3d_2/Reshape/ReadVariableOpReadVariableOpconv3d_2/bias*
dtype0*
_output_shapes
: 
s
conv3d_2/Reshape/shapeConst*)
value B"                *
dtype0*
_output_shapes
:

conv3d_2/ReshapeReshapeconv3d_2/Reshape/ReadVariableOpconv3d_2/Reshape/shape*
T0*
Tshape0**
_output_shapes
: 

conv3d_2/addAddV2conv3d_2/convolutionconv3d_2/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ 
|
conv3d_3/truncated_normal/shapeConst*)
value B"             @   *
dtype0*
_output_shapes
:
c
conv3d_3/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
 conv3d_3/truncated_normal/stddevConst*
valueB
 *	`=*
dtype0*
_output_shapes
: 
О
)conv3d_3/truncated_normal/TruncatedNormalTruncatedNormalconv3d_3/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2Е**
_output_shapes
: @
І
conv3d_3/truncated_normal/mulMul)conv3d_3/truncated_normal/TruncatedNormal conv3d_3/truncated_normal/stddev*
T0**
_output_shapes
: @

conv3d_3/truncated_normalAddconv3d_3/truncated_normal/mulconv3d_3/truncated_normal/mean*
T0**
_output_shapes
: @
Л
conv3d_3/kernelVarHandleOp*
shape: @* 
shared_nameconv3d_3/kernel*"
_class
loc:@conv3d_3/kernel*
dtype0*
	container *
_output_shapes
: 
o
0conv3d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_3/kernel*
_output_shapes
: 
c
conv3d_3/kernel/AssignAssignVariableOpconv3d_3/kernelconv3d_3/truncated_normal*
dtype0

#conv3d_3/kernel/Read/ReadVariableOpReadVariableOpconv3d_3/kernel*
dtype0**
_output_shapes
: @
[
conv3d_3/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ѕ
conv3d_3/biasVarHandleOp*
shape:@*
shared_nameconv3d_3/bias* 
_class
loc:@conv3d_3/bias*
dtype0*
	container *
_output_shapes
: 
k
.conv3d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_3/bias*
_output_shapes
: 
T
conv3d_3/bias/AssignAssignVariableOpconv3d_3/biasconv3d_3/Const*
dtype0
k
!conv3d_3/bias/Read/ReadVariableOpReadVariableOpconv3d_3/bias*
dtype0*
_output_shapes
:@

#conv3d_3/convolution/ReadVariableOpReadVariableOpconv3d_3/kernel*
dtype0**
_output_shapes
: @

conv3d_3/convolutionConv3Dconv3d_2/add#conv3d_3/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
i
conv3d_3/Reshape/ReadVariableOpReadVariableOpconv3d_3/bias*
dtype0*
_output_shapes
:@
s
conv3d_3/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_3/ReshapeReshapeconv3d_3/Reshape/ReadVariableOpconv3d_3/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_3/addAddV2conv3d_3/convolutionconv3d_3/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@

activation_1/ReluReluconv3d_3/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
|
conv3d_4/truncated_normal/shapeConst*)
value B"         @   @   *
dtype0*
_output_shapes
:
c
conv3d_4/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
 conv3d_4/truncated_normal/stddevConst*
valueB
 *k=*
dtype0*
_output_shapes
: 
О
)conv3d_4/truncated_normal/TruncatedNormalTruncatedNormalconv3d_4/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2СчЎ**
_output_shapes
:@@
І
conv3d_4/truncated_normal/mulMul)conv3d_4/truncated_normal/TruncatedNormal conv3d_4/truncated_normal/stddev*
T0**
_output_shapes
:@@

conv3d_4/truncated_normalAddconv3d_4/truncated_normal/mulconv3d_4/truncated_normal/mean*
T0**
_output_shapes
:@@
Л
conv3d_4/kernelVarHandleOp*
shape:@@* 
shared_nameconv3d_4/kernel*"
_class
loc:@conv3d_4/kernel*
dtype0*
	container *
_output_shapes
: 
o
0conv3d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_4/kernel*
_output_shapes
: 
c
conv3d_4/kernel/AssignAssignVariableOpconv3d_4/kernelconv3d_4/truncated_normal*
dtype0

#conv3d_4/kernel/Read/ReadVariableOpReadVariableOpconv3d_4/kernel*
dtype0**
_output_shapes
:@@
[
conv3d_4/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ѕ
conv3d_4/biasVarHandleOp*
shape:@*
shared_nameconv3d_4/bias* 
_class
loc:@conv3d_4/bias*
dtype0*
	container *
_output_shapes
: 
k
.conv3d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_4/bias*
_output_shapes
: 
T
conv3d_4/bias/AssignAssignVariableOpconv3d_4/biasconv3d_4/Const*
dtype0
k
!conv3d_4/bias/Read/ReadVariableOpReadVariableOpconv3d_4/bias*
dtype0*
_output_shapes
:@

#conv3d_4/convolution/ReadVariableOpReadVariableOpconv3d_4/kernel*
dtype0**
_output_shapes
:@@

conv3d_4/convolutionConv3Dactivation_1/Relu#conv3d_4/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
i
conv3d_4/Reshape/ReadVariableOpReadVariableOpconv3d_4/bias*
dtype0*
_output_shapes
:@
s
conv3d_4/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_4/ReshapeReshapeconv3d_4/Reshape/ReadVariableOpconv3d_4/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_4/addAddV2conv3d_4/convolutionconv3d_4/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@

activation_2/ReluReluconv3d_4/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
|
conv3d_5/truncated_normal/shapeConst*)
value B"         @   @   *
dtype0*
_output_shapes
:
c
conv3d_5/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
 conv3d_5/truncated_normal/stddevConst*
valueB
 *k=*
dtype0*
_output_shapes
: 
Н
)conv3d_5/truncated_normal/TruncatedNormalTruncatedNormalconv3d_5/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2ш**
_output_shapes
:@@
І
conv3d_5/truncated_normal/mulMul)conv3d_5/truncated_normal/TruncatedNormal conv3d_5/truncated_normal/stddev*
T0**
_output_shapes
:@@

conv3d_5/truncated_normalAddconv3d_5/truncated_normal/mulconv3d_5/truncated_normal/mean*
T0**
_output_shapes
:@@
Л
conv3d_5/kernelVarHandleOp*
shape:@@* 
shared_nameconv3d_5/kernel*"
_class
loc:@conv3d_5/kernel*
dtype0*
	container *
_output_shapes
: 
o
0conv3d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_5/kernel*
_output_shapes
: 
c
conv3d_5/kernel/AssignAssignVariableOpconv3d_5/kernelconv3d_5/truncated_normal*
dtype0

#conv3d_5/kernel/Read/ReadVariableOpReadVariableOpconv3d_5/kernel*
dtype0**
_output_shapes
:@@
[
conv3d_5/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ѕ
conv3d_5/biasVarHandleOp*
shape:@*
shared_nameconv3d_5/bias* 
_class
loc:@conv3d_5/bias*
dtype0*
	container *
_output_shapes
: 
k
.conv3d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_5/bias*
_output_shapes
: 
T
conv3d_5/bias/AssignAssignVariableOpconv3d_5/biasconv3d_5/Const*
dtype0
k
!conv3d_5/bias/Read/ReadVariableOpReadVariableOpconv3d_5/bias*
dtype0*
_output_shapes
:@

#conv3d_5/convolution/ReadVariableOpReadVariableOpconv3d_5/kernel*
dtype0**
_output_shapes
:@@

conv3d_5/convolutionConv3Dactivation_2/Relu#conv3d_5/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
i
conv3d_5/Reshape/ReadVariableOpReadVariableOpconv3d_5/bias*
dtype0*
_output_shapes
:@
s
conv3d_5/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_5/ReshapeReshapeconv3d_5/Reshape/ReadVariableOpconv3d_5/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_5/addAddV2conv3d_5/convolutionconv3d_5/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
|
conv3d_6/truncated_normal/shapeConst*)
value B"             @   *
dtype0*
_output_shapes
:
c
conv3d_6/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
 conv3d_6/truncated_normal/stddevConst*
valueB
 *6>*
dtype0*
_output_shapes
: 
О
)conv3d_6/truncated_normal/TruncatedNormalTruncatedNormalconv3d_6/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2ЅДя**
_output_shapes
: @
І
conv3d_6/truncated_normal/mulMul)conv3d_6/truncated_normal/TruncatedNormal conv3d_6/truncated_normal/stddev*
T0**
_output_shapes
: @

conv3d_6/truncated_normalAddconv3d_6/truncated_normal/mulconv3d_6/truncated_normal/mean*
T0**
_output_shapes
: @
Л
conv3d_6/kernelVarHandleOp*
shape: @* 
shared_nameconv3d_6/kernel*"
_class
loc:@conv3d_6/kernel*
dtype0*
	container *
_output_shapes
: 
o
0conv3d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_6/kernel*
_output_shapes
: 
c
conv3d_6/kernel/AssignAssignVariableOpconv3d_6/kernelconv3d_6/truncated_normal*
dtype0

#conv3d_6/kernel/Read/ReadVariableOpReadVariableOpconv3d_6/kernel*
dtype0**
_output_shapes
: @
[
conv3d_6/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ѕ
conv3d_6/biasVarHandleOp*
shape:@*
shared_nameconv3d_6/bias* 
_class
loc:@conv3d_6/bias*
dtype0*
	container *
_output_shapes
: 
k
.conv3d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_6/bias*
_output_shapes
: 
T
conv3d_6/bias/AssignAssignVariableOpconv3d_6/biasconv3d_6/Const*
dtype0
k
!conv3d_6/bias/Read/ReadVariableOpReadVariableOpconv3d_6/bias*
dtype0*
_output_shapes
:@

#conv3d_6/convolution/ReadVariableOpReadVariableOpconv3d_6/kernel*
dtype0**
_output_shapes
: @

conv3d_6/convolutionConv3Dconv3d_2/add#conv3d_6/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
i
conv3d_6/Reshape/ReadVariableOpReadVariableOpconv3d_6/bias*
dtype0*
_output_shapes
:@
s
conv3d_6/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_6/ReshapeReshapeconv3d_6/Reshape/ReadVariableOpconv3d_6/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_6/addAddV2conv3d_6/convolutionconv3d_6/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@

	add_1/addAddV2conv3d_6/addconv3d_5/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
}
activation_3/ReluRelu	add_1/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
|
conv3d_7/truncated_normal/shapeConst*)
value B"         @   @   *
dtype0*
_output_shapes
:
c
conv3d_7/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
 conv3d_7/truncated_normal/stddevConst*
valueB
 *k=*
dtype0*
_output_shapes
: 
О
)conv3d_7/truncated_normal/TruncatedNormalTruncatedNormalconv3d_7/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2Хм**
_output_shapes
:@@
І
conv3d_7/truncated_normal/mulMul)conv3d_7/truncated_normal/TruncatedNormal conv3d_7/truncated_normal/stddev*
T0**
_output_shapes
:@@

conv3d_7/truncated_normalAddconv3d_7/truncated_normal/mulconv3d_7/truncated_normal/mean*
T0**
_output_shapes
:@@
Л
conv3d_7/kernelVarHandleOp*
shape:@@* 
shared_nameconv3d_7/kernel*"
_class
loc:@conv3d_7/kernel*
dtype0*
	container *
_output_shapes
: 
o
0conv3d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_7/kernel*
_output_shapes
: 
c
conv3d_7/kernel/AssignAssignVariableOpconv3d_7/kernelconv3d_7/truncated_normal*
dtype0

#conv3d_7/kernel/Read/ReadVariableOpReadVariableOpconv3d_7/kernel*
dtype0**
_output_shapes
:@@
[
conv3d_7/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ѕ
conv3d_7/biasVarHandleOp*
shape:@*
shared_nameconv3d_7/bias* 
_class
loc:@conv3d_7/bias*
dtype0*
	container *
_output_shapes
: 
k
.conv3d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_7/bias*
_output_shapes
: 
T
conv3d_7/bias/AssignAssignVariableOpconv3d_7/biasconv3d_7/Const*
dtype0
k
!conv3d_7/bias/Read/ReadVariableOpReadVariableOpconv3d_7/bias*
dtype0*
_output_shapes
:@

#conv3d_7/convolution/ReadVariableOpReadVariableOpconv3d_7/kernel*
dtype0**
_output_shapes
:@@

conv3d_7/convolutionConv3Dactivation_3/Relu#conv3d_7/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
i
conv3d_7/Reshape/ReadVariableOpReadVariableOpconv3d_7/bias*
dtype0*
_output_shapes
:@
s
conv3d_7/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_7/ReshapeReshapeconv3d_7/Reshape/ReadVariableOpconv3d_7/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_7/addAddV2conv3d_7/convolutionconv3d_7/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@

activation_4/ReluReluconv3d_7/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
|
conv3d_8/truncated_normal/shapeConst*)
value B"         @   @   *
dtype0*
_output_shapes
:
c
conv3d_8/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
 conv3d_8/truncated_normal/stddevConst*
valueB
 *k=*
dtype0*
_output_shapes
: 
О
)conv3d_8/truncated_normal/TruncatedNormalTruncatedNormalconv3d_8/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2Х**
_output_shapes
:@@
І
conv3d_8/truncated_normal/mulMul)conv3d_8/truncated_normal/TruncatedNormal conv3d_8/truncated_normal/stddev*
T0**
_output_shapes
:@@

conv3d_8/truncated_normalAddconv3d_8/truncated_normal/mulconv3d_8/truncated_normal/mean*
T0**
_output_shapes
:@@
Л
conv3d_8/kernelVarHandleOp*
shape:@@* 
shared_nameconv3d_8/kernel*"
_class
loc:@conv3d_8/kernel*
dtype0*
	container *
_output_shapes
: 
o
0conv3d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_8/kernel*
_output_shapes
: 
c
conv3d_8/kernel/AssignAssignVariableOpconv3d_8/kernelconv3d_8/truncated_normal*
dtype0

#conv3d_8/kernel/Read/ReadVariableOpReadVariableOpconv3d_8/kernel*
dtype0**
_output_shapes
:@@
[
conv3d_8/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ѕ
conv3d_8/biasVarHandleOp*
shape:@*
shared_nameconv3d_8/bias* 
_class
loc:@conv3d_8/bias*
dtype0*
	container *
_output_shapes
: 
k
.conv3d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_8/bias*
_output_shapes
: 
T
conv3d_8/bias/AssignAssignVariableOpconv3d_8/biasconv3d_8/Const*
dtype0
k
!conv3d_8/bias/Read/ReadVariableOpReadVariableOpconv3d_8/bias*
dtype0*
_output_shapes
:@

#conv3d_8/convolution/ReadVariableOpReadVariableOpconv3d_8/kernel*
dtype0**
_output_shapes
:@@

conv3d_8/convolutionConv3Dactivation_4/Relu#conv3d_8/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
i
conv3d_8/Reshape/ReadVariableOpReadVariableOpconv3d_8/bias*
dtype0*
_output_shapes
:@
s
conv3d_8/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_8/ReshapeReshapeconv3d_8/Reshape/ReadVariableOpconv3d_8/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_8/addAddV2conv3d_8/convolutionconv3d_8/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@

activation_5/ReluReluconv3d_8/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
|
conv3d_9/truncated_normal/shapeConst*)
value B"         @   @   *
dtype0*
_output_shapes
:
c
conv3d_9/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
 conv3d_9/truncated_normal/stddevConst*
valueB
 *k=*
dtype0*
_output_shapes
: 
О
)conv3d_9/truncated_normal/TruncatedNormalTruncatedNormalconv3d_9/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2ЧЖФ**
_output_shapes
:@@
І
conv3d_9/truncated_normal/mulMul)conv3d_9/truncated_normal/TruncatedNormal conv3d_9/truncated_normal/stddev*
T0**
_output_shapes
:@@

conv3d_9/truncated_normalAddconv3d_9/truncated_normal/mulconv3d_9/truncated_normal/mean*
T0**
_output_shapes
:@@
Л
conv3d_9/kernelVarHandleOp*
shape:@@* 
shared_nameconv3d_9/kernel*"
_class
loc:@conv3d_9/kernel*
dtype0*
	container *
_output_shapes
: 
o
0conv3d_9/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_9/kernel*
_output_shapes
: 
c
conv3d_9/kernel/AssignAssignVariableOpconv3d_9/kernelconv3d_9/truncated_normal*
dtype0

#conv3d_9/kernel/Read/ReadVariableOpReadVariableOpconv3d_9/kernel*
dtype0**
_output_shapes
:@@
[
conv3d_9/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ѕ
conv3d_9/biasVarHandleOp*
shape:@*
shared_nameconv3d_9/bias* 
_class
loc:@conv3d_9/bias*
dtype0*
	container *
_output_shapes
: 
k
.conv3d_9/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_9/bias*
_output_shapes
: 
T
conv3d_9/bias/AssignAssignVariableOpconv3d_9/biasconv3d_9/Const*
dtype0
k
!conv3d_9/bias/Read/ReadVariableOpReadVariableOpconv3d_9/bias*
dtype0*
_output_shapes
:@

#conv3d_9/convolution/ReadVariableOpReadVariableOpconv3d_9/kernel*
dtype0**
_output_shapes
:@@

conv3d_9/convolutionConv3Dactivation_5/Relu#conv3d_9/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
i
conv3d_9/Reshape/ReadVariableOpReadVariableOpconv3d_9/bias*
dtype0*
_output_shapes
:@
s
conv3d_9/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_9/ReshapeReshapeconv3d_9/Reshape/ReadVariableOpconv3d_9/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_9/addAddV2conv3d_9/convolutionconv3d_9/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@

	add_2/addAddV2activation_3/Reluconv3d_9/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
}
activation_6/ReluRelu	add_2/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
}
 conv3d_10/truncated_normal/shapeConst*)
value B"         @   @   *
dtype0*
_output_shapes
:
d
conv3d_10/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!conv3d_10/truncated_normal/stddevConst*
valueB
 *k=*
dtype0*
_output_shapes
: 
Р
*conv3d_10/truncated_normal/TruncatedNormalTruncatedNormal conv3d_10/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2§љз**
_output_shapes
:@@
Љ
conv3d_10/truncated_normal/mulMul*conv3d_10/truncated_normal/TruncatedNormal!conv3d_10/truncated_normal/stddev*
T0**
_output_shapes
:@@

conv3d_10/truncated_normalAddconv3d_10/truncated_normal/mulconv3d_10/truncated_normal/mean*
T0**
_output_shapes
:@@
О
conv3d_10/kernelVarHandleOp*
shape:@@*!
shared_nameconv3d_10/kernel*#
_class
loc:@conv3d_10/kernel*
dtype0*
	container *
_output_shapes
: 
q
1conv3d_10/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_10/kernel*
_output_shapes
: 
f
conv3d_10/kernel/AssignAssignVariableOpconv3d_10/kernelconv3d_10/truncated_normal*
dtype0

$conv3d_10/kernel/Read/ReadVariableOpReadVariableOpconv3d_10/kernel*
dtype0**
_output_shapes
:@@
\
conv3d_10/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ј
conv3d_10/biasVarHandleOp*
shape:@*
shared_nameconv3d_10/bias*!
_class
loc:@conv3d_10/bias*
dtype0*
	container *
_output_shapes
: 
m
/conv3d_10/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_10/bias*
_output_shapes
: 
W
conv3d_10/bias/AssignAssignVariableOpconv3d_10/biasconv3d_10/Const*
dtype0
m
"conv3d_10/bias/Read/ReadVariableOpReadVariableOpconv3d_10/bias*
dtype0*
_output_shapes
:@

$conv3d_10/convolution/ReadVariableOpReadVariableOpconv3d_10/kernel*
dtype0**
_output_shapes
:@@

conv3d_10/convolutionConv3Dactivation_6/Relu$conv3d_10/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
k
 conv3d_10/Reshape/ReadVariableOpReadVariableOpconv3d_10/bias*
dtype0*
_output_shapes
:@
t
conv3d_10/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_10/ReshapeReshape conv3d_10/Reshape/ReadVariableOpconv3d_10/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_10/addAddV2conv3d_10/convolutionconv3d_10/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@

activation_7/ReluReluconv3d_10/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
}
 conv3d_11/truncated_normal/shapeConst*)
value B"         @   @   *
dtype0*
_output_shapes
:
d
conv3d_11/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!conv3d_11/truncated_normal/stddevConst*
valueB
 *k=*
dtype0*
_output_shapes
: 
Р
*conv3d_11/truncated_normal/TruncatedNormalTruncatedNormal conv3d_11/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2єЦ**
_output_shapes
:@@
Љ
conv3d_11/truncated_normal/mulMul*conv3d_11/truncated_normal/TruncatedNormal!conv3d_11/truncated_normal/stddev*
T0**
_output_shapes
:@@

conv3d_11/truncated_normalAddconv3d_11/truncated_normal/mulconv3d_11/truncated_normal/mean*
T0**
_output_shapes
:@@
О
conv3d_11/kernelVarHandleOp*
shape:@@*!
shared_nameconv3d_11/kernel*#
_class
loc:@conv3d_11/kernel*
dtype0*
	container *
_output_shapes
: 
q
1conv3d_11/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_11/kernel*
_output_shapes
: 
f
conv3d_11/kernel/AssignAssignVariableOpconv3d_11/kernelconv3d_11/truncated_normal*
dtype0

$conv3d_11/kernel/Read/ReadVariableOpReadVariableOpconv3d_11/kernel*
dtype0**
_output_shapes
:@@
\
conv3d_11/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ј
conv3d_11/biasVarHandleOp*
shape:@*
shared_nameconv3d_11/bias*!
_class
loc:@conv3d_11/bias*
dtype0*
	container *
_output_shapes
: 
m
/conv3d_11/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_11/bias*
_output_shapes
: 
W
conv3d_11/bias/AssignAssignVariableOpconv3d_11/biasconv3d_11/Const*
dtype0
m
"conv3d_11/bias/Read/ReadVariableOpReadVariableOpconv3d_11/bias*
dtype0*
_output_shapes
:@

$conv3d_11/convolution/ReadVariableOpReadVariableOpconv3d_11/kernel*
dtype0**
_output_shapes
:@@

conv3d_11/convolutionConv3Dactivation_7/Relu$conv3d_11/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
k
 conv3d_11/Reshape/ReadVariableOpReadVariableOpconv3d_11/bias*
dtype0*
_output_shapes
:@
t
conv3d_11/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_11/ReshapeReshape conv3d_11/Reshape/ReadVariableOpconv3d_11/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_11/addAddV2conv3d_11/convolutionconv3d_11/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@

activation_8/ReluReluconv3d_11/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
}
 conv3d_12/truncated_normal/shapeConst*)
value B"         @   @   *
dtype0*
_output_shapes
:
d
conv3d_12/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!conv3d_12/truncated_normal/stddevConst*
valueB
 *k=*
dtype0*
_output_shapes
: 
Р
*conv3d_12/truncated_normal/TruncatedNormalTruncatedNormal conv3d_12/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2я Л**
_output_shapes
:@@
Љ
conv3d_12/truncated_normal/mulMul*conv3d_12/truncated_normal/TruncatedNormal!conv3d_12/truncated_normal/stddev*
T0**
_output_shapes
:@@

conv3d_12/truncated_normalAddconv3d_12/truncated_normal/mulconv3d_12/truncated_normal/mean*
T0**
_output_shapes
:@@
О
conv3d_12/kernelVarHandleOp*
shape:@@*!
shared_nameconv3d_12/kernel*#
_class
loc:@conv3d_12/kernel*
dtype0*
	container *
_output_shapes
: 
q
1conv3d_12/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_12/kernel*
_output_shapes
: 
f
conv3d_12/kernel/AssignAssignVariableOpconv3d_12/kernelconv3d_12/truncated_normal*
dtype0

$conv3d_12/kernel/Read/ReadVariableOpReadVariableOpconv3d_12/kernel*
dtype0**
_output_shapes
:@@
\
conv3d_12/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ј
conv3d_12/biasVarHandleOp*
shape:@*
shared_nameconv3d_12/bias*!
_class
loc:@conv3d_12/bias*
dtype0*
	container *
_output_shapes
: 
m
/conv3d_12/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_12/bias*
_output_shapes
: 
W
conv3d_12/bias/AssignAssignVariableOpconv3d_12/biasconv3d_12/Const*
dtype0
m
"conv3d_12/bias/Read/ReadVariableOpReadVariableOpconv3d_12/bias*
dtype0*
_output_shapes
:@

$conv3d_12/convolution/ReadVariableOpReadVariableOpconv3d_12/kernel*
dtype0**
_output_shapes
:@@

conv3d_12/convolutionConv3Dactivation_8/Relu$conv3d_12/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
k
 conv3d_12/Reshape/ReadVariableOpReadVariableOpconv3d_12/bias*
dtype0*
_output_shapes
:@
t
conv3d_12/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_12/ReshapeReshape conv3d_12/Reshape/ReadVariableOpconv3d_12/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_12/addAddV2conv3d_12/convolutionconv3d_12/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@

	add_3/addAddV2activation_6/Reluconv3d_12/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
}
activation_9/ReluRelu	add_3/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
}
 conv3d_13/truncated_normal/shapeConst*)
value B"         @   @   *
dtype0*
_output_shapes
:
d
conv3d_13/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!conv3d_13/truncated_normal/stddevConst*
valueB
 *k=*
dtype0*
_output_shapes
: 
Р
*conv3d_13/truncated_normal/TruncatedNormalTruncatedNormal conv3d_13/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2л**
_output_shapes
:@@
Љ
conv3d_13/truncated_normal/mulMul*conv3d_13/truncated_normal/TruncatedNormal!conv3d_13/truncated_normal/stddev*
T0**
_output_shapes
:@@

conv3d_13/truncated_normalAddconv3d_13/truncated_normal/mulconv3d_13/truncated_normal/mean*
T0**
_output_shapes
:@@
О
conv3d_13/kernelVarHandleOp*
shape:@@*!
shared_nameconv3d_13/kernel*#
_class
loc:@conv3d_13/kernel*
dtype0*
	container *
_output_shapes
: 
q
1conv3d_13/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_13/kernel*
_output_shapes
: 
f
conv3d_13/kernel/AssignAssignVariableOpconv3d_13/kernelconv3d_13/truncated_normal*
dtype0

$conv3d_13/kernel/Read/ReadVariableOpReadVariableOpconv3d_13/kernel*
dtype0**
_output_shapes
:@@
\
conv3d_13/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ј
conv3d_13/biasVarHandleOp*
shape:@*
shared_nameconv3d_13/bias*!
_class
loc:@conv3d_13/bias*
dtype0*
	container *
_output_shapes
: 
m
/conv3d_13/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_13/bias*
_output_shapes
: 
W
conv3d_13/bias/AssignAssignVariableOpconv3d_13/biasconv3d_13/Const*
dtype0
m
"conv3d_13/bias/Read/ReadVariableOpReadVariableOpconv3d_13/bias*
dtype0*
_output_shapes
:@

$conv3d_13/convolution/ReadVariableOpReadVariableOpconv3d_13/kernel*
dtype0**
_output_shapes
:@@

conv3d_13/convolutionConv3Dactivation_9/Relu$conv3d_13/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
k
 conv3d_13/Reshape/ReadVariableOpReadVariableOpconv3d_13/bias*
dtype0*
_output_shapes
:@
t
conv3d_13/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_13/ReshapeReshape conv3d_13/Reshape/ReadVariableOpconv3d_13/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_13/addAddV2conv3d_13/convolutionconv3d_13/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@

activation_10/ReluReluconv3d_13/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
}
 conv3d_14/truncated_normal/shapeConst*)
value B"         @   @   *
dtype0*
_output_shapes
:
d
conv3d_14/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!conv3d_14/truncated_normal/stddevConst*
valueB
 *k=*
dtype0*
_output_shapes
: 
Р
*conv3d_14/truncated_normal/TruncatedNormalTruncatedNormal conv3d_14/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2ъ**
_output_shapes
:@@
Љ
conv3d_14/truncated_normal/mulMul*conv3d_14/truncated_normal/TruncatedNormal!conv3d_14/truncated_normal/stddev*
T0**
_output_shapes
:@@

conv3d_14/truncated_normalAddconv3d_14/truncated_normal/mulconv3d_14/truncated_normal/mean*
T0**
_output_shapes
:@@
О
conv3d_14/kernelVarHandleOp*
shape:@@*!
shared_nameconv3d_14/kernel*#
_class
loc:@conv3d_14/kernel*
dtype0*
	container *
_output_shapes
: 
q
1conv3d_14/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_14/kernel*
_output_shapes
: 
f
conv3d_14/kernel/AssignAssignVariableOpconv3d_14/kernelconv3d_14/truncated_normal*
dtype0

$conv3d_14/kernel/Read/ReadVariableOpReadVariableOpconv3d_14/kernel*
dtype0**
_output_shapes
:@@
\
conv3d_14/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ј
conv3d_14/biasVarHandleOp*
shape:@*
shared_nameconv3d_14/bias*!
_class
loc:@conv3d_14/bias*
dtype0*
	container *
_output_shapes
: 
m
/conv3d_14/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_14/bias*
_output_shapes
: 
W
conv3d_14/bias/AssignAssignVariableOpconv3d_14/biasconv3d_14/Const*
dtype0
m
"conv3d_14/bias/Read/ReadVariableOpReadVariableOpconv3d_14/bias*
dtype0*
_output_shapes
:@

$conv3d_14/convolution/ReadVariableOpReadVariableOpconv3d_14/kernel*
dtype0**
_output_shapes
:@@

conv3d_14/convolutionConv3Dactivation_10/Relu$conv3d_14/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
k
 conv3d_14/Reshape/ReadVariableOpReadVariableOpconv3d_14/bias*
dtype0*
_output_shapes
:@
t
conv3d_14/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_14/ReshapeReshape conv3d_14/Reshape/ReadVariableOpconv3d_14/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_14/addAddV2conv3d_14/convolutionconv3d_14/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@

activation_11/ReluReluconv3d_14/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
}
 conv3d_15/truncated_normal/shapeConst*)
value B"         @   @   *
dtype0*
_output_shapes
:
d
conv3d_15/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
!conv3d_15/truncated_normal/stddevConst*
valueB
 *k=*
dtype0*
_output_shapes
: 
Р
*conv3d_15/truncated_normal/TruncatedNormalTruncatedNormal conv3d_15/truncated_normal/shape*
seedБџх)*
T0*
dtype0*
seed2ЇФ**
_output_shapes
:@@
Љ
conv3d_15/truncated_normal/mulMul*conv3d_15/truncated_normal/TruncatedNormal!conv3d_15/truncated_normal/stddev*
T0**
_output_shapes
:@@

conv3d_15/truncated_normalAddconv3d_15/truncated_normal/mulconv3d_15/truncated_normal/mean*
T0**
_output_shapes
:@@
О
conv3d_15/kernelVarHandleOp*
shape:@@*!
shared_nameconv3d_15/kernel*#
_class
loc:@conv3d_15/kernel*
dtype0*
	container *
_output_shapes
: 
q
1conv3d_15/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_15/kernel*
_output_shapes
: 
f
conv3d_15/kernel/AssignAssignVariableOpconv3d_15/kernelconv3d_15/truncated_normal*
dtype0

$conv3d_15/kernel/Read/ReadVariableOpReadVariableOpconv3d_15/kernel*
dtype0**
_output_shapes
:@@
\
conv3d_15/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
Ј
conv3d_15/biasVarHandleOp*
shape:@*
shared_nameconv3d_15/bias*!
_class
loc:@conv3d_15/bias*
dtype0*
	container *
_output_shapes
: 
m
/conv3d_15/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_15/bias*
_output_shapes
: 
W
conv3d_15/bias/AssignAssignVariableOpconv3d_15/biasconv3d_15/Const*
dtype0
m
"conv3d_15/bias/Read/ReadVariableOpReadVariableOpconv3d_15/bias*
dtype0*
_output_shapes
:@

$conv3d_15/convolution/ReadVariableOpReadVariableOpconv3d_15/kernel*
dtype0**
_output_shapes
:@@

conv3d_15/convolutionConv3Dactivation_11/Relu$conv3d_15/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
k
 conv3d_15/Reshape/ReadVariableOpReadVariableOpconv3d_15/bias*
dtype0*
_output_shapes
:@
t
conv3d_15/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:

conv3d_15/ReshapeReshape conv3d_15/Reshape/ReadVariableOpconv3d_15/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@

conv3d_15/addAddV2conv3d_15/convolutionconv3d_15/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@

	add_4/addAddV2activation_9/Reluconv3d_15/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
~
activation_12/ReluRelu	add_4/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ@
z
features/random_uniform/shapeConst*)
value B"         @      *
dtype0*
_output_shapes
:
`
features/random_uniform/minConst*
valueB
 *HYН*
dtype0*
_output_shapes
: 
`
features/random_uniform/maxConst*
valueB
 *HY=*
dtype0*
_output_shapes
: 
З
%features/random_uniform/RandomUniformRandomUniformfeatures/random_uniform/shape*
seedБџх)*
T0*
dtype0*
seed2їдь*+
_output_shapes
:@
}
features/random_uniform/subSubfeatures/random_uniform/maxfeatures/random_uniform/min*
T0*
_output_shapes
: 

features/random_uniform/mulMul%features/random_uniform/RandomUniformfeatures/random_uniform/sub*
T0*+
_output_shapes
:@

features/random_uniformAddfeatures/random_uniform/mulfeatures/random_uniform/min*
T0*+
_output_shapes
:@
М
features/kernelVarHandleOp* 
shape:@* 
shared_namefeatures/kernel*"
_class
loc:@features/kernel*
dtype0*
	container *
_output_shapes
: 
o
0features/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpfeatures/kernel*
_output_shapes
: 
a
features/kernel/AssignAssignVariableOpfeatures/kernelfeatures/random_uniform*
dtype0

#features/kernel/Read/ReadVariableOpReadVariableOpfeatures/kernel*
dtype0*+
_output_shapes
:@
]
features/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
І
features/biasVarHandleOp*
shape:*
shared_namefeatures/bias* 
_class
loc:@features/bias*
dtype0*
	container *
_output_shapes
: 
k
.features/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpfeatures/bias*
_output_shapes
: 
T
features/bias/AssignAssignVariableOpfeatures/biasfeatures/Const*
dtype0
l
!features/bias/Read/ReadVariableOpReadVariableOpfeatures/bias*
dtype0*
_output_shapes	
:

#features/convolution/ReadVariableOpReadVariableOpfeatures/kernel*
dtype0*+
_output_shapes
:@

features/convolutionConv3Dactivation_12/Relu#features/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
j
features/Reshape/ReadVariableOpReadVariableOpfeatures/bias*
dtype0*
_output_shapes	
:
s
features/Reshape/shapeConst*)
value B"               *
dtype0*
_output_shapes
:

features/ReshapeReshapefeatures/Reshape/ReadVariableOpfeatures/Reshape/shape*
T0*
Tshape0*+
_output_shapes
:

features/addAddV2features/convolutionfeatures/Reshape*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
}
features/ReluRelufeatures/add*
T0*O
_output_shapes=
;:9џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
v
prob/random_uniform/shapeConst*)
value B"               *
dtype0*
_output_shapes
:
\
prob/random_uniform/minConst*
valueB
 *nз\О*
dtype0*
_output_shapes
: 
\
prob/random_uniform/maxConst*
valueB
 *nз\>*
dtype0*
_output_shapes
: 
Џ
!prob/random_uniform/RandomUniformRandomUniformprob/random_uniform/shape*
seedБџх)*
T0*
dtype0*
seed2№Ю*+
_output_shapes
:
q
prob/random_uniform/subSubprob/random_uniform/maxprob/random_uniform/min*
T0*
_output_shapes
: 

prob/random_uniform/mulMul!prob/random_uniform/RandomUniformprob/random_uniform/sub*
T0*+
_output_shapes
:

prob/random_uniformAddprob/random_uniform/mulprob/random_uniform/min*
T0*+
_output_shapes
:
А
prob/kernelVarHandleOp* 
shape:*
shared_nameprob/kernel*
_class
loc:@prob/kernel*
dtype0*
	container *
_output_shapes
: 
g
,prob/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpprob/kernel*
_output_shapes
: 
U
prob/kernel/AssignAssignVariableOpprob/kernelprob/random_uniform*
dtype0
x
prob/kernel/Read/ReadVariableOpReadVariableOpprob/kernel*
dtype0*+
_output_shapes
:
W

prob/ConstConst*
valueB*    *
dtype0*
_output_shapes
:

	prob/biasVarHandleOp*
shape:*
shared_name	prob/bias*
_class
loc:@prob/bias*
dtype0*
	container *
_output_shapes
: 
c
*prob/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp	prob/bias*
_output_shapes
: 
H
prob/bias/AssignAssignVariableOp	prob/bias
prob/Const*
dtype0
c
prob/bias/Read/ReadVariableOpReadVariableOp	prob/bias*
dtype0*
_output_shapes
:
x
prob/convolution/ReadVariableOpReadVariableOpprob/kernel*
dtype0*+
_output_shapes
:
ќ
prob/convolutionConv3Dfeatures/Reluprob/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
a
prob/Reshape/ReadVariableOpReadVariableOp	prob/bias*
dtype0*
_output_shapes
:
o
prob/Reshape/shapeConst*)
value B"               *
dtype0*
_output_shapes
:

prob/ReshapeReshapeprob/Reshape/ReadVariableOpprob/Reshape/shape*
T0*
Tshape0**
_output_shapes
:

prob/addAddV2prob/convolutionprob/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
z
prob/SigmoidSigmoidprob/add*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
v
dist/random_uniform/shapeConst*)
value B"            `   *
dtype0*
_output_shapes
:
\
dist/random_uniform/minConst*
valueB
 *b'О*
dtype0*
_output_shapes
: 
\
dist/random_uniform/maxConst*
valueB
 *b'>*
dtype0*
_output_shapes
: 
Џ
!dist/random_uniform/RandomUniformRandomUniformdist/random_uniform/shape*
seedБџх)*
T0*
dtype0*
seed2к*+
_output_shapes
:`
q
dist/random_uniform/subSubdist/random_uniform/maxdist/random_uniform/min*
T0*
_output_shapes
: 

dist/random_uniform/mulMul!dist/random_uniform/RandomUniformdist/random_uniform/sub*
T0*+
_output_shapes
:`

dist/random_uniformAdddist/random_uniform/muldist/random_uniform/min*
T0*+
_output_shapes
:`
А
dist/kernelVarHandleOp* 
shape:`*
shared_namedist/kernel*
_class
loc:@dist/kernel*
dtype0*
	container *
_output_shapes
: 
g
,dist/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdist/kernel*
_output_shapes
: 
U
dist/kernel/AssignAssignVariableOpdist/kerneldist/random_uniform*
dtype0
x
dist/kernel/Read/ReadVariableOpReadVariableOpdist/kernel*
dtype0*+
_output_shapes
:`
W

dist/ConstConst*
valueB`*    *
dtype0*
_output_shapes
:`

	dist/biasVarHandleOp*
shape:`*
shared_name	dist/bias*
_class
loc:@dist/bias*
dtype0*
	container *
_output_shapes
: 
c
*dist/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp	dist/bias*
_output_shapes
: 
H
dist/bias/AssignAssignVariableOp	dist/bias
dist/Const*
dtype0
c
dist/bias/Read/ReadVariableOpReadVariableOp	dist/bias*
dtype0*
_output_shapes
:`
x
dist/convolution/ReadVariableOpReadVariableOpdist/kernel*
dtype0*+
_output_shapes
:`
ќ
dist/convolutionConv3Dfeatures/Reludist/convolution/ReadVariableOp*
paddingSAME*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
a
dist/Reshape/ReadVariableOpReadVariableOp	dist/bias*
dtype0*
_output_shapes
:`
o
dist/Reshape/shapeConst*)
value B"            `   *
dtype0*
_output_shapes
:

dist/ReshapeReshapedist/Reshape/ReadVariableOpdist/Reshape/shape*
T0*
Tshape0**
_output_shapes
:`

dist/addAddV2dist/convolutiondist/Reshape*
T0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
Ю
PlaceholderPlaceholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
O
AssignVariableOpAssignVariableOpconv3d_1/kernelPlaceholder*
dtype0
}
ReadVariableOpReadVariableOpconv3d_1/kernel^AssignVariableOp*
dtype0**
_output_shapes
: 
h
Placeholder_1Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
Q
AssignVariableOp_1AssignVariableOpconv3d_1/biasPlaceholder_1*
dtype0
o
ReadVariableOp_1ReadVariableOpconv3d_1/bias^AssignVariableOp_1*
dtype0*
_output_shapes
: 
а
Placeholder_2Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
S
AssignVariableOp_2AssignVariableOpconv3d_2/kernelPlaceholder_2*
dtype0

ReadVariableOp_2ReadVariableOpconv3d_2/kernel^AssignVariableOp_2*
dtype0**
_output_shapes
:  
h
Placeholder_3Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
Q
AssignVariableOp_3AssignVariableOpconv3d_2/biasPlaceholder_3*
dtype0
o
ReadVariableOp_3ReadVariableOpconv3d_2/bias^AssignVariableOp_3*
dtype0*
_output_shapes
: 
а
Placeholder_4Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
S
AssignVariableOp_4AssignVariableOpconv3d_3/kernelPlaceholder_4*
dtype0

ReadVariableOp_4ReadVariableOpconv3d_3/kernel^AssignVariableOp_4*
dtype0**
_output_shapes
: @
h
Placeholder_5Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
Q
AssignVariableOp_5AssignVariableOpconv3d_3/biasPlaceholder_5*
dtype0
o
ReadVariableOp_5ReadVariableOpconv3d_3/bias^AssignVariableOp_5*
dtype0*
_output_shapes
:@
а
Placeholder_6Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
S
AssignVariableOp_6AssignVariableOpconv3d_4/kernelPlaceholder_6*
dtype0

ReadVariableOp_6ReadVariableOpconv3d_4/kernel^AssignVariableOp_6*
dtype0**
_output_shapes
:@@
h
Placeholder_7Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
Q
AssignVariableOp_7AssignVariableOpconv3d_4/biasPlaceholder_7*
dtype0
o
ReadVariableOp_7ReadVariableOpconv3d_4/bias^AssignVariableOp_7*
dtype0*
_output_shapes
:@
а
Placeholder_8Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
S
AssignVariableOp_8AssignVariableOpconv3d_6/kernelPlaceholder_8*
dtype0

ReadVariableOp_8ReadVariableOpconv3d_6/kernel^AssignVariableOp_8*
dtype0**
_output_shapes
: @
h
Placeholder_9Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
Q
AssignVariableOp_9AssignVariableOpconv3d_6/biasPlaceholder_9*
dtype0
o
ReadVariableOp_9ReadVariableOpconv3d_6/bias^AssignVariableOp_9*
dtype0*
_output_shapes
:@
б
Placeholder_10Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
U
AssignVariableOp_10AssignVariableOpconv3d_5/kernelPlaceholder_10*
dtype0

ReadVariableOp_10ReadVariableOpconv3d_5/kernel^AssignVariableOp_10*
dtype0**
_output_shapes
:@@
i
Placeholder_11Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
S
AssignVariableOp_11AssignVariableOpconv3d_5/biasPlaceholder_11*
dtype0
q
ReadVariableOp_11ReadVariableOpconv3d_5/bias^AssignVariableOp_11*
dtype0*
_output_shapes
:@
б
Placeholder_12Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
U
AssignVariableOp_12AssignVariableOpconv3d_7/kernelPlaceholder_12*
dtype0

ReadVariableOp_12ReadVariableOpconv3d_7/kernel^AssignVariableOp_12*
dtype0**
_output_shapes
:@@
i
Placeholder_13Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
S
AssignVariableOp_13AssignVariableOpconv3d_7/biasPlaceholder_13*
dtype0
q
ReadVariableOp_13ReadVariableOpconv3d_7/bias^AssignVariableOp_13*
dtype0*
_output_shapes
:@
б
Placeholder_14Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
U
AssignVariableOp_14AssignVariableOpconv3d_8/kernelPlaceholder_14*
dtype0

ReadVariableOp_14ReadVariableOpconv3d_8/kernel^AssignVariableOp_14*
dtype0**
_output_shapes
:@@
i
Placeholder_15Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
S
AssignVariableOp_15AssignVariableOpconv3d_8/biasPlaceholder_15*
dtype0
q
ReadVariableOp_15ReadVariableOpconv3d_8/bias^AssignVariableOp_15*
dtype0*
_output_shapes
:@
б
Placeholder_16Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
U
AssignVariableOp_16AssignVariableOpconv3d_9/kernelPlaceholder_16*
dtype0

ReadVariableOp_16ReadVariableOpconv3d_9/kernel^AssignVariableOp_16*
dtype0**
_output_shapes
:@@
i
Placeholder_17Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
S
AssignVariableOp_17AssignVariableOpconv3d_9/biasPlaceholder_17*
dtype0
q
ReadVariableOp_17ReadVariableOpconv3d_9/bias^AssignVariableOp_17*
dtype0*
_output_shapes
:@
б
Placeholder_18Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
V
AssignVariableOp_18AssignVariableOpconv3d_10/kernelPlaceholder_18*
dtype0

ReadVariableOp_18ReadVariableOpconv3d_10/kernel^AssignVariableOp_18*
dtype0**
_output_shapes
:@@
i
Placeholder_19Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
T
AssignVariableOp_19AssignVariableOpconv3d_10/biasPlaceholder_19*
dtype0
r
ReadVariableOp_19ReadVariableOpconv3d_10/bias^AssignVariableOp_19*
dtype0*
_output_shapes
:@
б
Placeholder_20Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
V
AssignVariableOp_20AssignVariableOpconv3d_11/kernelPlaceholder_20*
dtype0

ReadVariableOp_20ReadVariableOpconv3d_11/kernel^AssignVariableOp_20*
dtype0**
_output_shapes
:@@
i
Placeholder_21Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
T
AssignVariableOp_21AssignVariableOpconv3d_11/biasPlaceholder_21*
dtype0
r
ReadVariableOp_21ReadVariableOpconv3d_11/bias^AssignVariableOp_21*
dtype0*
_output_shapes
:@
б
Placeholder_22Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
V
AssignVariableOp_22AssignVariableOpconv3d_12/kernelPlaceholder_22*
dtype0

ReadVariableOp_22ReadVariableOpconv3d_12/kernel^AssignVariableOp_22*
dtype0**
_output_shapes
:@@
i
Placeholder_23Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
T
AssignVariableOp_23AssignVariableOpconv3d_12/biasPlaceholder_23*
dtype0
r
ReadVariableOp_23ReadVariableOpconv3d_12/bias^AssignVariableOp_23*
dtype0*
_output_shapes
:@
б
Placeholder_24Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
V
AssignVariableOp_24AssignVariableOpconv3d_13/kernelPlaceholder_24*
dtype0

ReadVariableOp_24ReadVariableOpconv3d_13/kernel^AssignVariableOp_24*
dtype0**
_output_shapes
:@@
i
Placeholder_25Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
T
AssignVariableOp_25AssignVariableOpconv3d_13/biasPlaceholder_25*
dtype0
r
ReadVariableOp_25ReadVariableOpconv3d_13/bias^AssignVariableOp_25*
dtype0*
_output_shapes
:@
б
Placeholder_26Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
V
AssignVariableOp_26AssignVariableOpconv3d_14/kernelPlaceholder_26*
dtype0

ReadVariableOp_26ReadVariableOpconv3d_14/kernel^AssignVariableOp_26*
dtype0**
_output_shapes
:@@
i
Placeholder_27Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
T
AssignVariableOp_27AssignVariableOpconv3d_14/biasPlaceholder_27*
dtype0
r
ReadVariableOp_27ReadVariableOpconv3d_14/bias^AssignVariableOp_27*
dtype0*
_output_shapes
:@
б
Placeholder_28Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
V
AssignVariableOp_28AssignVariableOpconv3d_15/kernelPlaceholder_28*
dtype0

ReadVariableOp_28ReadVariableOpconv3d_15/kernel^AssignVariableOp_28*
dtype0**
_output_shapes
:@@
i
Placeholder_29Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
T
AssignVariableOp_29AssignVariableOpconv3d_15/biasPlaceholder_29*
dtype0
r
ReadVariableOp_29ReadVariableOpconv3d_15/bias^AssignVariableOp_29*
dtype0*
_output_shapes
:@
б
Placeholder_30Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
U
AssignVariableOp_30AssignVariableOpfeatures/kernelPlaceholder_30*
dtype0

ReadVariableOp_30ReadVariableOpfeatures/kernel^AssignVariableOp_30*
dtype0*+
_output_shapes
:@
i
Placeholder_31Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
S
AssignVariableOp_31AssignVariableOpfeatures/biasPlaceholder_31*
dtype0
r
ReadVariableOp_31ReadVariableOpfeatures/bias^AssignVariableOp_31*
dtype0*
_output_shapes	
:
б
Placeholder_32Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Q
AssignVariableOp_32AssignVariableOpprob/kernelPlaceholder_32*
dtype0

ReadVariableOp_32ReadVariableOpprob/kernel^AssignVariableOp_32*
dtype0*+
_output_shapes
:
i
Placeholder_33Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
O
AssignVariableOp_33AssignVariableOp	prob/biasPlaceholder_33*
dtype0
m
ReadVariableOp_33ReadVariableOp	prob/bias^AssignVariableOp_33*
dtype0*
_output_shapes
:
б
Placeholder_34Placeholder*L
shapeC:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
dtype0*W
_output_shapesE
C:Aџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Q
AssignVariableOp_34AssignVariableOpdist/kernelPlaceholder_34*
dtype0

ReadVariableOp_34ReadVariableOpdist/kernel^AssignVariableOp_34*
dtype0*+
_output_shapes
:`
i
Placeholder_35Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
O
AssignVariableOp_35AssignVariableOp	dist/biasPlaceholder_35*
dtype0
m
ReadVariableOp_35ReadVariableOp	dist/bias^AssignVariableOp_35*
dtype0*
_output_shapes
:`
Q
VarIsInitializedOpVarIsInitializedOpconv3d_1/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_1VarIsInitializedOpfeatures/bias*
_output_shapes
: 
M
VarIsInitializedOp_2VarIsInitializedOp	prob/bias*
_output_shapes
: 
M
VarIsInitializedOp_3VarIsInitializedOp	dist/bias*
_output_shapes
: 
Q
VarIsInitializedOp_4VarIsInitializedOpconv3d_8/bias*
_output_shapes
: 
Q
VarIsInitializedOp_5VarIsInitializedOpconv3d_5/bias*
_output_shapes
: 
T
VarIsInitializedOp_6VarIsInitializedOpconv3d_10/kernel*
_output_shapes
: 
S
VarIsInitializedOp_7VarIsInitializedOpconv3d_7/kernel*
_output_shapes
: 
S
VarIsInitializedOp_8VarIsInitializedOpconv3d_2/kernel*
_output_shapes
: 
T
VarIsInitializedOp_9VarIsInitializedOpconv3d_12/kernel*
_output_shapes
: 
U
VarIsInitializedOp_10VarIsInitializedOpconv3d_13/kernel*
_output_shapes
: 
S
VarIsInitializedOp_11VarIsInitializedOpconv3d_13/bias*
_output_shapes
: 
U
VarIsInitializedOp_12VarIsInitializedOpconv3d_15/kernel*
_output_shapes
: 
T
VarIsInitializedOp_13VarIsInitializedOpconv3d_3/kernel*
_output_shapes
: 
T
VarIsInitializedOp_14VarIsInitializedOpconv3d_8/kernel*
_output_shapes
: 
T
VarIsInitializedOp_15VarIsInitializedOpconv3d_9/kernel*
_output_shapes
: 
S
VarIsInitializedOp_16VarIsInitializedOpconv3d_10/bias*
_output_shapes
: 
S
VarIsInitializedOp_17VarIsInitializedOpconv3d_11/bias*
_output_shapes
: 
R
VarIsInitializedOp_18VarIsInitializedOpconv3d_1/bias*
_output_shapes
: 
R
VarIsInitializedOp_19VarIsInitializedOpconv3d_3/bias*
_output_shapes
: 
R
VarIsInitializedOp_20VarIsInitializedOpconv3d_6/bias*
_output_shapes
: 
T
VarIsInitializedOp_21VarIsInitializedOpconv3d_6/kernel*
_output_shapes
: 
S
VarIsInitializedOp_22VarIsInitializedOpconv3d_12/bias*
_output_shapes
: 
S
VarIsInitializedOp_23VarIsInitializedOpconv3d_14/bias*
_output_shapes
: 
T
VarIsInitializedOp_24VarIsInitializedOpfeatures/kernel*
_output_shapes
: 
T
VarIsInitializedOp_25VarIsInitializedOpconv3d_4/kernel*
_output_shapes
: 
R
VarIsInitializedOp_26VarIsInitializedOpconv3d_9/bias*
_output_shapes
: 
U
VarIsInitializedOp_27VarIsInitializedOpconv3d_11/kernel*
_output_shapes
: 
P
VarIsInitializedOp_28VarIsInitializedOpdist/kernel*
_output_shapes
: 
R
VarIsInitializedOp_29VarIsInitializedOpconv3d_4/bias*
_output_shapes
: 
R
VarIsInitializedOp_30VarIsInitializedOpconv3d_7/bias*
_output_shapes
: 
U
VarIsInitializedOp_31VarIsInitializedOpconv3d_14/kernel*
_output_shapes
: 
S
VarIsInitializedOp_32VarIsInitializedOpconv3d_15/bias*
_output_shapes
: 
P
VarIsInitializedOp_33VarIsInitializedOpprob/kernel*
_output_shapes
: 
R
VarIsInitializedOp_34VarIsInitializedOpconv3d_2/bias*
_output_shapes
: 
T
VarIsInitializedOp_35VarIsInitializedOpconv3d_5/kernel*
_output_shapes
: 
ш
initNoOp^conv3d_1/bias/Assign^conv3d_1/kernel/Assign^conv3d_10/bias/Assign^conv3d_10/kernel/Assign^conv3d_11/bias/Assign^conv3d_11/kernel/Assign^conv3d_12/bias/Assign^conv3d_12/kernel/Assign^conv3d_13/bias/Assign^conv3d_13/kernel/Assign^conv3d_14/bias/Assign^conv3d_14/kernel/Assign^conv3d_15/bias/Assign^conv3d_15/kernel/Assign^conv3d_2/bias/Assign^conv3d_2/kernel/Assign^conv3d_3/bias/Assign^conv3d_3/kernel/Assign^conv3d_4/bias/Assign^conv3d_4/kernel/Assign^conv3d_5/bias/Assign^conv3d_5/kernel/Assign^conv3d_6/bias/Assign^conv3d_6/kernel/Assign^conv3d_7/bias/Assign^conv3d_7/kernel/Assign^conv3d_8/bias/Assign^conv3d_8/kernel/Assign^conv3d_9/bias/Assign^conv3d_9/kernel/Assign^dist/bias/Assign^dist/kernel/Assign^features/bias/Assign^features/kernel/Assign^prob/bias/Assign^prob/kernel/Assign

conv3d_transpose_1/ConstConst*)
value B*  ?*
dtype0**
_output_shapes
:
й
conv3d_transpose_1/kernelVarHandleOp*
shape:**
shared_nameconv3d_transpose_1/kernel*,
_class"
 loc:@conv3d_transpose_1/kernel*
dtype0*
	container *
_output_shapes
: 

:conv3d_transpose_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_transpose_1/kernel*
_output_shapes
: 
v
 conv3d_transpose_1/kernel/AssignAssignVariableOpconv3d_transpose_1/kernelconv3d_transpose_1/Const*
dtype0

-conv3d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_1/kernel*
dtype0**
_output_shapes
:
d
conv3d_transpose_1/ShapeShapeprob/Sigmoid*
T0*
out_type0*
_output_shapes
:
p
&conv3d_transpose_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(conv3d_transpose_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(conv3d_transpose_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
и
 conv3d_transpose_1/strided_sliceStridedSliceconv3d_transpose_1/Shape&conv3d_transpose_1/strided_slice/stack(conv3d_transpose_1/strided_slice/stack_1(conv3d_transpose_1/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
(conv3d_transpose_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv3d_transpose_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv3d_transpose_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
"conv3d_transpose_1/strided_slice_1StridedSliceconv3d_transpose_1/Shape(conv3d_transpose_1/strided_slice_1/stack*conv3d_transpose_1/strided_slice_1/stack_1*conv3d_transpose_1/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
(conv3d_transpose_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv3d_transpose_1/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv3d_transpose_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
"conv3d_transpose_1/strided_slice_2StridedSliceconv3d_transpose_1/Shape(conv3d_transpose_1/strided_slice_2/stack*conv3d_transpose_1/strided_slice_2/stack_1*conv3d_transpose_1/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
(conv3d_transpose_1/strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv3d_transpose_1/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv3d_transpose_1/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
"conv3d_transpose_1/strided_slice_3StridedSliceconv3d_transpose_1/Shape(conv3d_transpose_1/strided_slice_3/stack*conv3d_transpose_1/strided_slice_3/stack_1*conv3d_transpose_1/strided_slice_3/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Z
conv3d_transpose_1/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
|
conv3d_transpose_1/mulMul"conv3d_transpose_1/strided_slice_1conv3d_transpose_1/mul/y*
T0*
_output_shapes
: 
\
conv3d_transpose_1/mul_1/yConst*
value	B :*
dtype0*
_output_shapes
: 

conv3d_transpose_1/mul_1Mul"conv3d_transpose_1/strided_slice_2conv3d_transpose_1/mul_1/y*
T0*
_output_shapes
: 
\
conv3d_transpose_1/mul_2/yConst*
value	B :*
dtype0*
_output_shapes
: 

conv3d_transpose_1/mul_2Mul"conv3d_transpose_1/strided_slice_3conv3d_transpose_1/mul_2/y*
T0*
_output_shapes
: 
\
conv3d_transpose_1/stack/4Const*
value	B :*
dtype0*
_output_shapes
: 
ф
conv3d_transpose_1/stackPack conv3d_transpose_1/strided_sliceconv3d_transpose_1/mulconv3d_transpose_1/mul_1conv3d_transpose_1/mul_2conv3d_transpose_1/stack/4*
T0*

axis *
N*
_output_shapes
:
r
(conv3d_transpose_1/strided_slice_4/stackConst*
valueB: *
dtype0*
_output_shapes
:
t
*conv3d_transpose_1/strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
t
*conv3d_transpose_1/strided_slice_4/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
р
"conv3d_transpose_1/strided_slice_4StridedSliceconv3d_transpose_1/stack(conv3d_transpose_1/strided_slice_4/stack*conv3d_transpose_1/strided_slice_4/stack_1*conv3d_transpose_1/strided_slice_4/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

2conv3d_transpose_1/conv3d_transpose/ReadVariableOpReadVariableOpconv3d_transpose_1/kernel*
dtype0**
_output_shapes
:
и
#conv3d_transpose_1/conv3d_transposeConv3DBackpropInputV2conv3d_transpose_1/stack2conv3d_transpose_1/conv3d_transpose/ReadVariableOpprob/Sigmoid*
	dilations	
*
T0*
strides	
*
data_formatNDHWC*
paddingSAME*
Tshape0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
]
up_sampling3d_1/ShapeShapedist/add*
T0*
out_type0*
_output_shapes
:
`
up_sampling3d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
Л
up_sampling3d_1/ExpandDims
ExpandDimsdist/addup_sampling3d_1/ExpandDims/dim*

Tdim0*
T0*R
_output_shapes@
>:<џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`

up_sampling3d_1/Tile/multiplesConst*-
value$B""                  *
dtype0*
_output_shapes
:
Ч
up_sampling3d_1/TileTileup_sampling3d_1/ExpandDimsup_sampling3d_1/Tile/multiples*

Tmultiples0*
T0*R
_output_shapes@
>:<џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
r
up_sampling3d_1/ConstConst*)
value B"               *
dtype0*
_output_shapes
:
m
up_sampling3d_1/mulMulup_sampling3d_1/Shapeup_sampling3d_1/Const*
T0*
_output_shapes
:
Д
up_sampling3d_1/ReshapeReshapeup_sampling3d_1/Tileup_sampling3d_1/mul*
T0*
Tshape0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
n
up_sampling3d_1/Shape_1Shapeup_sampling3d_1/Reshape*
T0*
out_type0*
_output_shapes
:
b
 up_sampling3d_1/ExpandDims_1/dimConst*
value	B :*
dtype0*
_output_shapes
: 
Ю
up_sampling3d_1/ExpandDims_1
ExpandDimsup_sampling3d_1/Reshape up_sampling3d_1/ExpandDims_1/dim*

Tdim0*
T0*R
_output_shapes@
>:<џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`

 up_sampling3d_1/Tile_1/multiplesConst*-
value$B""                  *
dtype0*
_output_shapes
:
Э
up_sampling3d_1/Tile_1Tileup_sampling3d_1/ExpandDims_1 up_sampling3d_1/Tile_1/multiples*

Tmultiples0*
T0*R
_output_shapes@
>:<џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
t
up_sampling3d_1/Const_1Const*)
value B"               *
dtype0*
_output_shapes
:
s
up_sampling3d_1/mul_1Mulup_sampling3d_1/Shape_1up_sampling3d_1/Const_1*
T0*
_output_shapes
:
К
up_sampling3d_1/Reshape_1Reshapeup_sampling3d_1/Tile_1up_sampling3d_1/mul_1*
T0*
Tshape0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
p
up_sampling3d_1/Shape_2Shapeup_sampling3d_1/Reshape_1*
T0*
out_type0*
_output_shapes
:
b
 up_sampling3d_1/ExpandDims_2/dimConst*
value	B :*
dtype0*
_output_shapes
: 
а
up_sampling3d_1/ExpandDims_2
ExpandDimsup_sampling3d_1/Reshape_1 up_sampling3d_1/ExpandDims_2/dim*

Tdim0*
T0*R
_output_shapes@
>:<џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`

 up_sampling3d_1/Tile_2/multiplesConst*-
value$B""                  *
dtype0*
_output_shapes
:
Э
up_sampling3d_1/Tile_2Tileup_sampling3d_1/ExpandDims_2 up_sampling3d_1/Tile_2/multiples*

Tmultiples0*
T0*R
_output_shapes@
>:<џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
t
up_sampling3d_1/Const_2Const*)
value B"               *
dtype0*
_output_shapes
:
s
up_sampling3d_1/mul_2Mulup_sampling3d_1/Shape_2up_sampling3d_1/Const_2*
T0*
_output_shapes
:
К
up_sampling3d_1/Reshape_2Reshapeup_sampling3d_1/Tile_2up_sampling3d_1/mul_2*
T0*
Tshape0*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ`
[
concatenate_1/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
щ
concatenate_1/concatConcatV2#conv3d_transpose_1/conv3d_transposeup_sampling3d_1/Reshape_2concatenate_1/concat/axis*

Tidx0*
T0*
N*N
_output_shapes<
::8џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџa
^
VarIsInitializedOp_36VarIsInitializedOpconv3d_transpose_1/kernel*
_output_shapes
: 
1
init_1NoOp!^conv3d_transpose_1/kernel/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_4f6480da1d014727b47836aec1204522/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ш
save/SaveV2/tensor_namesConst"/device:CPU:0*ь
valueтBп%Bconv3d_1/biasBconv3d_1/kernelBconv3d_10/biasBconv3d_10/kernelBconv3d_11/biasBconv3d_11/kernelBconv3d_12/biasBconv3d_12/kernelBconv3d_13/biasBconv3d_13/kernelBconv3d_14/biasBconv3d_14/kernelBconv3d_15/biasBconv3d_15/kernelBconv3d_2/biasBconv3d_2/kernelBconv3d_3/biasBconv3d_3/kernelBconv3d_4/biasBconv3d_4/kernelBconv3d_5/biasBconv3d_5/kernelBconv3d_6/biasBconv3d_6/kernelBconv3d_7/biasBconv3d_7/kernelBconv3d_8/biasBconv3d_8/kernelBconv3d_9/biasBconv3d_9/kernelBconv3d_transpose_1/kernelB	dist/biasBdist/kernelBfeatures/biasBfeatures/kernelB	prob/biasBprob/kernel*
dtype0*
_output_shapes
:%
М
save/SaveV2/shape_and_slicesConst"/device:CPU:0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:%
т
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!conv3d_1/bias/Read/ReadVariableOp#conv3d_1/kernel/Read/ReadVariableOp"conv3d_10/bias/Read/ReadVariableOp$conv3d_10/kernel/Read/ReadVariableOp"conv3d_11/bias/Read/ReadVariableOp$conv3d_11/kernel/Read/ReadVariableOp"conv3d_12/bias/Read/ReadVariableOp$conv3d_12/kernel/Read/ReadVariableOp"conv3d_13/bias/Read/ReadVariableOp$conv3d_13/kernel/Read/ReadVariableOp"conv3d_14/bias/Read/ReadVariableOp$conv3d_14/kernel/Read/ReadVariableOp"conv3d_15/bias/Read/ReadVariableOp$conv3d_15/kernel/Read/ReadVariableOp!conv3d_2/bias/Read/ReadVariableOp#conv3d_2/kernel/Read/ReadVariableOp!conv3d_3/bias/Read/ReadVariableOp#conv3d_3/kernel/Read/ReadVariableOp!conv3d_4/bias/Read/ReadVariableOp#conv3d_4/kernel/Read/ReadVariableOp!conv3d_5/bias/Read/ReadVariableOp#conv3d_5/kernel/Read/ReadVariableOp!conv3d_6/bias/Read/ReadVariableOp#conv3d_6/kernel/Read/ReadVariableOp!conv3d_7/bias/Read/ReadVariableOp#conv3d_7/kernel/Read/ReadVariableOp!conv3d_8/bias/Read/ReadVariableOp#conv3d_8/kernel/Read/ReadVariableOp!conv3d_9/bias/Read/ReadVariableOp#conv3d_9/kernel/Read/ReadVariableOp-conv3d_transpose_1/kernel/Read/ReadVariableOpdist/bias/Read/ReadVariableOpdist/kernel/Read/ReadVariableOp!features/bias/Read/ReadVariableOp#features/kernel/Read/ReadVariableOpprob/bias/Read/ReadVariableOpprob/kernel/Read/ReadVariableOp"/device:CPU:0*3
dtypes)
'2%
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ќ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Ы
save/RestoreV2/tensor_namesConst"/device:CPU:0*ь
valueтBп%Bconv3d_1/biasBconv3d_1/kernelBconv3d_10/biasBconv3d_10/kernelBconv3d_11/biasBconv3d_11/kernelBconv3d_12/biasBconv3d_12/kernelBconv3d_13/biasBconv3d_13/kernelBconv3d_14/biasBconv3d_14/kernelBconv3d_15/biasBconv3d_15/kernelBconv3d_2/biasBconv3d_2/kernelBconv3d_3/biasBconv3d_3/kernelBconv3d_4/biasBconv3d_4/kernelBconv3d_5/biasBconv3d_5/kernelBconv3d_6/biasBconv3d_6/kernelBconv3d_7/biasBconv3d_7/kernelBconv3d_8/biasBconv3d_8/kernelBconv3d_9/biasBconv3d_9/kernelBconv3d_transpose_1/kernelB	dist/biasBdist/kernelBfeatures/biasBfeatures/kernelB	prob/biasBprob/kernel*
dtype0*
_output_shapes
:%
П
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:%
ж
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*3
dtypes)
'2%*Њ
_output_shapes
:::::::::::::::::::::::::::::::::::::
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
V
save/AssignVariableOpAssignVariableOpconv3d_1/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
Z
save/AssignVariableOp_1AssignVariableOpconv3d_1/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
Y
save/AssignVariableOp_2AssignVariableOpconv3d_10/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
[
save/AssignVariableOp_3AssignVariableOpconv3d_10/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
Y
save/AssignVariableOp_4AssignVariableOpconv3d_11/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
[
save/AssignVariableOp_5AssignVariableOpconv3d_11/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
Y
save/AssignVariableOp_6AssignVariableOpconv3d_12/biassave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
[
save/AssignVariableOp_7AssignVariableOpconv3d_12/kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Y
save/AssignVariableOp_8AssignVariableOpconv3d_13/biassave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
\
save/AssignVariableOp_9AssignVariableOpconv3d_13/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
[
save/AssignVariableOp_10AssignVariableOpconv3d_14/biassave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
]
save/AssignVariableOp_11AssignVariableOpconv3d_14/kernelsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
[
save/AssignVariableOp_12AssignVariableOpconv3d_15/biassave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
]
save/AssignVariableOp_13AssignVariableOpconv3d_15/kernelsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
Z
save/AssignVariableOp_14AssignVariableOpconv3d_2/biassave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
\
save/AssignVariableOp_15AssignVariableOpconv3d_2/kernelsave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
Z
save/AssignVariableOp_16AssignVariableOpconv3d_3/biassave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
\
save/AssignVariableOp_17AssignVariableOpconv3d_3/kernelsave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
Z
save/AssignVariableOp_18AssignVariableOpconv3d_4/biassave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
\
save/AssignVariableOp_19AssignVariableOpconv3d_4/kernelsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
Z
save/AssignVariableOp_20AssignVariableOpconv3d_5/biassave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
\
save/AssignVariableOp_21AssignVariableOpconv3d_5/kernelsave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
Z
save/AssignVariableOp_22AssignVariableOpconv3d_6/biassave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
\
save/AssignVariableOp_23AssignVariableOpconv3d_6/kernelsave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
Z
save/AssignVariableOp_24AssignVariableOpconv3d_7/biassave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
\
save/AssignVariableOp_25AssignVariableOpconv3d_7/kernelsave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
Z
save/AssignVariableOp_26AssignVariableOpconv3d_8/biassave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
\
save/AssignVariableOp_27AssignVariableOpconv3d_8/kernelsave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
Z
save/AssignVariableOp_28AssignVariableOpconv3d_9/biassave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
\
save/AssignVariableOp_29AssignVariableOpconv3d_9/kernelsave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
f
save/AssignVariableOp_30AssignVariableOpconv3d_transpose_1/kernelsave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
V
save/AssignVariableOp_31AssignVariableOp	dist/biassave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
X
save/AssignVariableOp_32AssignVariableOpdist/kernelsave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
Z
save/AssignVariableOp_33AssignVariableOpfeatures/biassave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
\
save/AssignVariableOp_34AssignVariableOpfeatures/kernelsave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
V
save/AssignVariableOp_35AssignVariableOp	prob/biassave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
X
save/AssignVariableOp_36AssignVariableOpprob/kernelsave/Identity_37*
dtype0
ѕ
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"к
trainable_variablesТП
s
conv3d_1/kernel:0conv3d_1/kernel/Assign%conv3d_1/kernel/Read/ReadVariableOp:0(2conv3d_1/truncated_normal:08
b
conv3d_1/bias:0conv3d_1/bias/Assign#conv3d_1/bias/Read/ReadVariableOp:0(2conv3d_1/Const:08
s
conv3d_2/kernel:0conv3d_2/kernel/Assign%conv3d_2/kernel/Read/ReadVariableOp:0(2conv3d_2/truncated_normal:08
b
conv3d_2/bias:0conv3d_2/bias/Assign#conv3d_2/bias/Read/ReadVariableOp:0(2conv3d_2/Const:08
s
conv3d_3/kernel:0conv3d_3/kernel/Assign%conv3d_3/kernel/Read/ReadVariableOp:0(2conv3d_3/truncated_normal:08
b
conv3d_3/bias:0conv3d_3/bias/Assign#conv3d_3/bias/Read/ReadVariableOp:0(2conv3d_3/Const:08
s
conv3d_4/kernel:0conv3d_4/kernel/Assign%conv3d_4/kernel/Read/ReadVariableOp:0(2conv3d_4/truncated_normal:08
b
conv3d_4/bias:0conv3d_4/bias/Assign#conv3d_4/bias/Read/ReadVariableOp:0(2conv3d_4/Const:08
s
conv3d_5/kernel:0conv3d_5/kernel/Assign%conv3d_5/kernel/Read/ReadVariableOp:0(2conv3d_5/truncated_normal:08
b
conv3d_5/bias:0conv3d_5/bias/Assign#conv3d_5/bias/Read/ReadVariableOp:0(2conv3d_5/Const:08
s
conv3d_6/kernel:0conv3d_6/kernel/Assign%conv3d_6/kernel/Read/ReadVariableOp:0(2conv3d_6/truncated_normal:08
b
conv3d_6/bias:0conv3d_6/bias/Assign#conv3d_6/bias/Read/ReadVariableOp:0(2conv3d_6/Const:08
s
conv3d_7/kernel:0conv3d_7/kernel/Assign%conv3d_7/kernel/Read/ReadVariableOp:0(2conv3d_7/truncated_normal:08
b
conv3d_7/bias:0conv3d_7/bias/Assign#conv3d_7/bias/Read/ReadVariableOp:0(2conv3d_7/Const:08
s
conv3d_8/kernel:0conv3d_8/kernel/Assign%conv3d_8/kernel/Read/ReadVariableOp:0(2conv3d_8/truncated_normal:08
b
conv3d_8/bias:0conv3d_8/bias/Assign#conv3d_8/bias/Read/ReadVariableOp:0(2conv3d_8/Const:08
s
conv3d_9/kernel:0conv3d_9/kernel/Assign%conv3d_9/kernel/Read/ReadVariableOp:0(2conv3d_9/truncated_normal:08
b
conv3d_9/bias:0conv3d_9/bias/Assign#conv3d_9/bias/Read/ReadVariableOp:0(2conv3d_9/Const:08
w
conv3d_10/kernel:0conv3d_10/kernel/Assign&conv3d_10/kernel/Read/ReadVariableOp:0(2conv3d_10/truncated_normal:08
f
conv3d_10/bias:0conv3d_10/bias/Assign$conv3d_10/bias/Read/ReadVariableOp:0(2conv3d_10/Const:08
w
conv3d_11/kernel:0conv3d_11/kernel/Assign&conv3d_11/kernel/Read/ReadVariableOp:0(2conv3d_11/truncated_normal:08
f
conv3d_11/bias:0conv3d_11/bias/Assign$conv3d_11/bias/Read/ReadVariableOp:0(2conv3d_11/Const:08
w
conv3d_12/kernel:0conv3d_12/kernel/Assign&conv3d_12/kernel/Read/ReadVariableOp:0(2conv3d_12/truncated_normal:08
f
conv3d_12/bias:0conv3d_12/bias/Assign$conv3d_12/bias/Read/ReadVariableOp:0(2conv3d_12/Const:08
w
conv3d_13/kernel:0conv3d_13/kernel/Assign&conv3d_13/kernel/Read/ReadVariableOp:0(2conv3d_13/truncated_normal:08
f
conv3d_13/bias:0conv3d_13/bias/Assign$conv3d_13/bias/Read/ReadVariableOp:0(2conv3d_13/Const:08
w
conv3d_14/kernel:0conv3d_14/kernel/Assign&conv3d_14/kernel/Read/ReadVariableOp:0(2conv3d_14/truncated_normal:08
f
conv3d_14/bias:0conv3d_14/bias/Assign$conv3d_14/bias/Read/ReadVariableOp:0(2conv3d_14/Const:08
w
conv3d_15/kernel:0conv3d_15/kernel/Assign&conv3d_15/kernel/Read/ReadVariableOp:0(2conv3d_15/truncated_normal:08
f
conv3d_15/bias:0conv3d_15/bias/Assign$conv3d_15/bias/Read/ReadVariableOp:0(2conv3d_15/Const:08
q
features/kernel:0features/kernel/Assign%features/kernel/Read/ReadVariableOp:0(2features/random_uniform:08
b
features/bias:0features/bias/Assign#features/bias/Read/ReadVariableOp:0(2features/Const:08
a
prob/kernel:0prob/kernel/Assign!prob/kernel/Read/ReadVariableOp:0(2prob/random_uniform:08
R
prob/bias:0prob/bias/Assignprob/bias/Read/ReadVariableOp:0(2prob/Const:08
a
dist/kernel:0dist/kernel/Assign!dist/kernel/Read/ReadVariableOp:0(2dist/random_uniform:08
R
dist/bias:0dist/bias/Assigndist/bias/Read/ReadVariableOp:0(2dist/Const:08

conv3d_transpose_1/kernel:0 conv3d_transpose_1/kernel/Assign/conv3d_transpose_1/kernel/Read/ReadVariableOp:0(2conv3d_transpose_1/Const:08"а
	variablesТП
s
conv3d_1/kernel:0conv3d_1/kernel/Assign%conv3d_1/kernel/Read/ReadVariableOp:0(2conv3d_1/truncated_normal:08
b
conv3d_1/bias:0conv3d_1/bias/Assign#conv3d_1/bias/Read/ReadVariableOp:0(2conv3d_1/Const:08
s
conv3d_2/kernel:0conv3d_2/kernel/Assign%conv3d_2/kernel/Read/ReadVariableOp:0(2conv3d_2/truncated_normal:08
b
conv3d_2/bias:0conv3d_2/bias/Assign#conv3d_2/bias/Read/ReadVariableOp:0(2conv3d_2/Const:08
s
conv3d_3/kernel:0conv3d_3/kernel/Assign%conv3d_3/kernel/Read/ReadVariableOp:0(2conv3d_3/truncated_normal:08
b
conv3d_3/bias:0conv3d_3/bias/Assign#conv3d_3/bias/Read/ReadVariableOp:0(2conv3d_3/Const:08
s
conv3d_4/kernel:0conv3d_4/kernel/Assign%conv3d_4/kernel/Read/ReadVariableOp:0(2conv3d_4/truncated_normal:08
b
conv3d_4/bias:0conv3d_4/bias/Assign#conv3d_4/bias/Read/ReadVariableOp:0(2conv3d_4/Const:08
s
conv3d_5/kernel:0conv3d_5/kernel/Assign%conv3d_5/kernel/Read/ReadVariableOp:0(2conv3d_5/truncated_normal:08
b
conv3d_5/bias:0conv3d_5/bias/Assign#conv3d_5/bias/Read/ReadVariableOp:0(2conv3d_5/Const:08
s
conv3d_6/kernel:0conv3d_6/kernel/Assign%conv3d_6/kernel/Read/ReadVariableOp:0(2conv3d_6/truncated_normal:08
b
conv3d_6/bias:0conv3d_6/bias/Assign#conv3d_6/bias/Read/ReadVariableOp:0(2conv3d_6/Const:08
s
conv3d_7/kernel:0conv3d_7/kernel/Assign%conv3d_7/kernel/Read/ReadVariableOp:0(2conv3d_7/truncated_normal:08
b
conv3d_7/bias:0conv3d_7/bias/Assign#conv3d_7/bias/Read/ReadVariableOp:0(2conv3d_7/Const:08
s
conv3d_8/kernel:0conv3d_8/kernel/Assign%conv3d_8/kernel/Read/ReadVariableOp:0(2conv3d_8/truncated_normal:08
b
conv3d_8/bias:0conv3d_8/bias/Assign#conv3d_8/bias/Read/ReadVariableOp:0(2conv3d_8/Const:08
s
conv3d_9/kernel:0conv3d_9/kernel/Assign%conv3d_9/kernel/Read/ReadVariableOp:0(2conv3d_9/truncated_normal:08
b
conv3d_9/bias:0conv3d_9/bias/Assign#conv3d_9/bias/Read/ReadVariableOp:0(2conv3d_9/Const:08
w
conv3d_10/kernel:0conv3d_10/kernel/Assign&conv3d_10/kernel/Read/ReadVariableOp:0(2conv3d_10/truncated_normal:08
f
conv3d_10/bias:0conv3d_10/bias/Assign$conv3d_10/bias/Read/ReadVariableOp:0(2conv3d_10/Const:08
w
conv3d_11/kernel:0conv3d_11/kernel/Assign&conv3d_11/kernel/Read/ReadVariableOp:0(2conv3d_11/truncated_normal:08
f
conv3d_11/bias:0conv3d_11/bias/Assign$conv3d_11/bias/Read/ReadVariableOp:0(2conv3d_11/Const:08
w
conv3d_12/kernel:0conv3d_12/kernel/Assign&conv3d_12/kernel/Read/ReadVariableOp:0(2conv3d_12/truncated_normal:08
f
conv3d_12/bias:0conv3d_12/bias/Assign$conv3d_12/bias/Read/ReadVariableOp:0(2conv3d_12/Const:08
w
conv3d_13/kernel:0conv3d_13/kernel/Assign&conv3d_13/kernel/Read/ReadVariableOp:0(2conv3d_13/truncated_normal:08
f
conv3d_13/bias:0conv3d_13/bias/Assign$conv3d_13/bias/Read/ReadVariableOp:0(2conv3d_13/Const:08
w
conv3d_14/kernel:0conv3d_14/kernel/Assign&conv3d_14/kernel/Read/ReadVariableOp:0(2conv3d_14/truncated_normal:08
f
conv3d_14/bias:0conv3d_14/bias/Assign$conv3d_14/bias/Read/ReadVariableOp:0(2conv3d_14/Const:08
w
conv3d_15/kernel:0conv3d_15/kernel/Assign&conv3d_15/kernel/Read/ReadVariableOp:0(2conv3d_15/truncated_normal:08
f
conv3d_15/bias:0conv3d_15/bias/Assign$conv3d_15/bias/Read/ReadVariableOp:0(2conv3d_15/Const:08
q
features/kernel:0features/kernel/Assign%features/kernel/Read/ReadVariableOp:0(2features/random_uniform:08
b
features/bias:0features/bias/Assign#features/bias/Read/ReadVariableOp:0(2features/Const:08
a
prob/kernel:0prob/kernel/Assign!prob/kernel/Read/ReadVariableOp:0(2prob/random_uniform:08
R
prob/bias:0prob/bias/Assignprob/bias/Read/ReadVariableOp:0(2prob/Const:08
a
dist/kernel:0dist/kernel/Assign!dist/kernel/Read/ReadVariableOp:0(2dist/random_uniform:08
R
dist/bias:0dist/bias/Assigndist/bias/Read/ReadVariableOp:0(2dist/Const:08

conv3d_transpose_1/kernel:0 conv3d_transpose_1/kernel/Assign/conv3d_transpose_1/kernel/Read/ReadVariableOp:0(2conv3d_transpose_1/Const:08*р
serving_defaultЬ
N
inputE
input:08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ^
outputT
concatenate_1/concat:08џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџatensorflow/serving/predict