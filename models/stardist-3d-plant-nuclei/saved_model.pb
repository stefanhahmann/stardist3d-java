Лб
№µ
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
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
÷
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
Я
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
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
ц
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
А
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И"serve*1.15.32v1.15.2-30-g4386a66ХД
ґ
inputPlaceholder*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*C
shape::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
|
conv3d_1/truncated_normal/shapeConst*
dtype0*)
value B"                *
_output_shapes
:
c
conv3d_1/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
e
 conv3d_1/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *y…±=*
dtype0
Њ
)conv3d_1/truncated_normal/TruncatedNormalTruncatedNormalconv3d_1/truncated_normal/shape**
_output_shapes
: *
T0*
seed2ЭКч*
seed±€е)*
dtype0
¶
conv3d_1/truncated_normal/mulMul)conv3d_1/truncated_normal/TruncatedNormal conv3d_1/truncated_normal/stddev*
T0**
_output_shapes
: 
Ф
conv3d_1/truncated_normalAddconv3d_1/truncated_normal/mulconv3d_1/truncated_normal/mean*
T0**
_output_shapes
: 
ї
conv3d_1/kernelVarHandleOp*
_output_shapes
: *
	container *
shape: *
dtype0*"
_class
loc:@conv3d_1/kernel* 
shared_nameconv3d_1/kernel
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
conv3d_1/ConstConst*
dtype0*
valueB *    *
_output_shapes
: 
•
conv3d_1/biasVarHandleOp*
shape: *
shared_nameconv3d_1/bias*
	container *
dtype0* 
_class
loc:@conv3d_1/bias*
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
!conv3d_1/bias/Read/ReadVariableOpReadVariableOpconv3d_1/bias*
_output_shapes
: *
dtype0

#conv3d_1/convolution/ReadVariableOpReadVariableOpconv3d_1/kernel*
dtype0**
_output_shapes
: 
ь
conv3d_1/convolutionConv3Dinput#conv3d_1/convolution/ReadVariableOp*
data_formatNDHWC*
strides	
*
	dilations	
*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
T0*
paddingSAME
i
conv3d_1/Reshape/ReadVariableOpReadVariableOpconv3d_1/bias*
dtype0*
_output_shapes
: 
s
conv3d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"                
Ч
conv3d_1/ReshapeReshapeconv3d_1/Reshape/ReadVariableOpconv3d_1/Reshape/shape**
_output_shapes
: *
Tshape0*
T0
Ц
conv3d_1/addAddV2conv3d_1/convolutionconv3d_1/Reshape*
T0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
|
conv3d_2/truncated_normal/shapeConst*)
value B"                 *
dtype0*
_output_shapes
:
c
conv3d_2/truncated_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
e
 conv3d_2/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *И	`=
Њ
)conv3d_2/truncated_normal/TruncatedNormalTruncatedNormalconv3d_2/truncated_normal/shape*
dtype0*
seed±€е)*
T0*
seed2Яђк**
_output_shapes
:  
¶
conv3d_2/truncated_normal/mulMul)conv3d_2/truncated_normal/TruncatedNormal conv3d_2/truncated_normal/stddev**
_output_shapes
:  *
T0
Ф
conv3d_2/truncated_normalAddconv3d_2/truncated_normal/mulconv3d_2/truncated_normal/mean*
T0**
_output_shapes
:  
ї
conv3d_2/kernelVarHandleOp* 
shared_nameconv3d_2/kernel*
dtype0*
_output_shapes
: *"
_class
loc:@conv3d_2/kernel*
shape:  *
	container 
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
conv3d_2/ConstConst*
dtype0*
valueB *    *
_output_shapes
: 
•
conv3d_2/biasVarHandleOp*
shared_nameconv3d_2/bias*
dtype0* 
_class
loc:@conv3d_2/bias*
shape: *
_output_shapes
: *
	container 
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
Г
conv3d_2/convolutionConv3Dconv3d_1/add#conv3d_2/convolution/ReadVariableOp*
T0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
strides	
*
	dilations	
*
data_formatNDHWC*
paddingSAME
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
Ч
conv3d_2/ReshapeReshapeconv3d_2/Reshape/ReadVariableOpconv3d_2/Reshape/shape**
_output_shapes
: *
Tshape0*
T0
Ц
conv3d_2/addAddV2conv3d_2/convolutionconv3d_2/Reshape*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
T0
|
conv3d_3/truncated_normal/shapeConst*)
value B"             @   *
dtype0*
_output_shapes
:
c
conv3d_3/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
e
 conv3d_3/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *И	`=*
dtype0
Њ
)conv3d_3/truncated_normal/TruncatedNormalTruncatedNormalconv3d_3/truncated_normal/shape*
dtype0*
seed2о Ђ**
_output_shapes
: @*
T0*
seed±€е)
¶
conv3d_3/truncated_normal/mulMul)conv3d_3/truncated_normal/TruncatedNormal conv3d_3/truncated_normal/stddev**
_output_shapes
: @*
T0
Ф
conv3d_3/truncated_normalAddconv3d_3/truncated_normal/mulconv3d_3/truncated_normal/mean*
T0**
_output_shapes
: @
ї
conv3d_3/kernelVarHandleOp*
_output_shapes
: *
shape: @*
	container *"
_class
loc:@conv3d_3/kernel*
dtype0* 
shared_nameconv3d_3/kernel
o
0conv3d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_3/kernel*
_output_shapes
: 
c
conv3d_3/kernel/AssignAssignVariableOpconv3d_3/kernelconv3d_3/truncated_normal*
dtype0

#conv3d_3/kernel/Read/ReadVariableOpReadVariableOpconv3d_3/kernel**
_output_shapes
: @*
dtype0
[
conv3d_3/ConstConst*
_output_shapes
:@*
valueB@*    *
dtype0
•
conv3d_3/biasVarHandleOp*
	container *
dtype0*
_output_shapes
: *
shared_nameconv3d_3/bias*
shape:@* 
_class
loc:@conv3d_3/bias
k
.conv3d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_3/bias*
_output_shapes
: 
T
conv3d_3/bias/AssignAssignVariableOpconv3d_3/biasconv3d_3/Const*
dtype0
k
!conv3d_3/bias/Read/ReadVariableOpReadVariableOpconv3d_3/bias*
_output_shapes
:@*
dtype0

#conv3d_3/convolution/ReadVariableOpReadVariableOpconv3d_3/kernel*
dtype0**
_output_shapes
: @
Г
conv3d_3/convolutionConv3Dconv3d_2/add#conv3d_3/convolution/ReadVariableOp*
T0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
strides	
*
paddingSAME*
data_formatNDHWC*
	dilations	

i
conv3d_3/Reshape/ReadVariableOpReadVariableOpconv3d_3/bias*
_output_shapes
:@*
dtype0
s
conv3d_3/Reshape/shapeConst*
dtype0*
_output_shapes
:*)
value B"            @   
Ч
conv3d_3/ReshapeReshapeconv3d_3/Reshape/ReadVariableOpconv3d_3/Reshape/shape*
Tshape0**
_output_shapes
:@*
T0
Ц
conv3d_3/addAddV2conv3d_3/convolutionconv3d_3/Reshape*
T0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€@
А
activation_1/ReluReluconv3d_3/add*
T0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€@
|
conv3d_4/truncated_normal/shapeConst*
_output_shapes
:*)
value B"         @   @   *
dtype0
c
conv3d_4/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
e
 conv3d_4/truncated_normal/stddevConst*
valueB
 *k=*
dtype0*
_output_shapes
: 
Њ
)conv3d_4/truncated_normal/TruncatedNormalTruncatedNormalconv3d_4/truncated_normal/shape*
seed±€е)*
seed2учм**
_output_shapes
:@@*
T0*
dtype0
¶
conv3d_4/truncated_normal/mulMul)conv3d_4/truncated_normal/TruncatedNormal conv3d_4/truncated_normal/stddev*
T0**
_output_shapes
:@@
Ф
conv3d_4/truncated_normalAddconv3d_4/truncated_normal/mulconv3d_4/truncated_normal/mean**
_output_shapes
:@@*
T0
ї
conv3d_4/kernelVarHandleOp*"
_class
loc:@conv3d_4/kernel*
dtype0*
shape:@@*
	container *
_output_shapes
: * 
shared_nameconv3d_4/kernel
o
0conv3d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_4/kernel*
_output_shapes
: 
c
conv3d_4/kernel/AssignAssignVariableOpconv3d_4/kernelconv3d_4/truncated_normal*
dtype0

#conv3d_4/kernel/Read/ReadVariableOpReadVariableOpconv3d_4/kernel**
_output_shapes
:@@*
dtype0
[
conv3d_4/ConstConst*
_output_shapes
:@*
valueB@*    *
dtype0
•
conv3d_4/biasVarHandleOp* 
_class
loc:@conv3d_4/bias*
dtype0*
shared_nameconv3d_4/bias*
	container *
_output_shapes
: *
shape:@
k
.conv3d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_4/bias*
_output_shapes
: 
T
conv3d_4/bias/AssignAssignVariableOpconv3d_4/biasconv3d_4/Const*
dtype0
k
!conv3d_4/bias/Read/ReadVariableOpReadVariableOpconv3d_4/bias*
_output_shapes
:@*
dtype0

#conv3d_4/convolution/ReadVariableOpReadVariableOpconv3d_4/kernel*
dtype0**
_output_shapes
:@@
И
conv3d_4/convolutionConv3Dactivation_1/Relu#conv3d_4/convolution/ReadVariableOp*
data_formatNDHWC*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
	dilations	
*
strides	
*
paddingSAME*
T0
i
conv3d_4/Reshape/ReadVariableOpReadVariableOpconv3d_4/bias*
_output_shapes
:@*
dtype0
s
conv3d_4/Reshape/shapeConst*
_output_shapes
:*)
value B"            @   *
dtype0
Ч
conv3d_4/ReshapeReshapeconv3d_4/Reshape/ReadVariableOpconv3d_4/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@
Ц
conv3d_4/addAddV2conv3d_4/convolutionconv3d_4/Reshape*
T0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€@
А
activation_2/ReluReluconv3d_4/add*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0
|
conv3d_5/truncated_normal/shapeConst*
_output_shapes
:*)
value B"         @   @   *
dtype0
c
conv3d_5/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
e
 conv3d_5/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *k=
Њ
)conv3d_5/truncated_normal/TruncatedNormalTruncatedNormalconv3d_5/truncated_normal/shape*
T0*
seed±€е)*
seed2жЃЪ**
_output_shapes
:@@*
dtype0
¶
conv3d_5/truncated_normal/mulMul)conv3d_5/truncated_normal/TruncatedNormal conv3d_5/truncated_normal/stddev*
T0**
_output_shapes
:@@
Ф
conv3d_5/truncated_normalAddconv3d_5/truncated_normal/mulconv3d_5/truncated_normal/mean*
T0**
_output_shapes
:@@
ї
conv3d_5/kernelVarHandleOp*"
_class
loc:@conv3d_5/kernel*
shape:@@* 
shared_nameconv3d_5/kernel*
_output_shapes
: *
	container *
dtype0
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
conv3d_5/ConstConst*
dtype0*
valueB@*    *
_output_shapes
:@
•
conv3d_5/biasVarHandleOp*
shared_nameconv3d_5/bias* 
_class
loc:@conv3d_5/bias*
	container *
dtype0*
shape:@*
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
!conv3d_5/bias/Read/ReadVariableOpReadVariableOpconv3d_5/bias*
_output_shapes
:@*
dtype0

#conv3d_5/convolution/ReadVariableOpReadVariableOpconv3d_5/kernel**
_output_shapes
:@@*
dtype0
И
conv3d_5/convolutionConv3Dactivation_2/Relu#conv3d_5/convolution/ReadVariableOp*
strides	
*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
data_formatNDHWC*
T0*
paddingSAME*
	dilations	

i
conv3d_5/Reshape/ReadVariableOpReadVariableOpconv3d_5/bias*
_output_shapes
:@*
dtype0
s
conv3d_5/Reshape/shapeConst*
dtype0*
_output_shapes
:*)
value B"            @   
Ч
conv3d_5/ReshapeReshapeconv3d_5/Reshape/ReadVariableOpconv3d_5/Reshape/shape*
T0*
Tshape0**
_output_shapes
:@
Ц
conv3d_5/addAddV2conv3d_5/convolutionconv3d_5/Reshape*
T0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€@
|
conv3d_6/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*)
value B"             @   
c
conv3d_6/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
e
 conv3d_6/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *6ДС>
Њ
)conv3d_6/truncated_normal/TruncatedNormalTruncatedNormalconv3d_6/truncated_normal/shape*
seed±€е)*
dtype0*
T0*
seed2вЕЦ**
_output_shapes
: @
¶
conv3d_6/truncated_normal/mulMul)conv3d_6/truncated_normal/TruncatedNormal conv3d_6/truncated_normal/stddev*
T0**
_output_shapes
: @
Ф
conv3d_6/truncated_normalAddconv3d_6/truncated_normal/mulconv3d_6/truncated_normal/mean**
_output_shapes
: @*
T0
ї
conv3d_6/kernelVarHandleOp* 
shared_nameconv3d_6/kernel*
	container *
shape: @*
_output_shapes
: *"
_class
loc:@conv3d_6/kernel*
dtype0
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
valueB@*    *
_output_shapes
:@*
dtype0
•
conv3d_6/biasVarHandleOp*
_output_shapes
: * 
_class
loc:@conv3d_6/bias*
shape:@*
shared_nameconv3d_6/bias*
	container *
dtype0
k
.conv3d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_6/bias*
_output_shapes
: 
T
conv3d_6/bias/AssignAssignVariableOpconv3d_6/biasconv3d_6/Const*
dtype0
k
!conv3d_6/bias/Read/ReadVariableOpReadVariableOpconv3d_6/bias*
_output_shapes
:@*
dtype0

#conv3d_6/convolution/ReadVariableOpReadVariableOpconv3d_6/kernel**
_output_shapes
: @*
dtype0
Г
conv3d_6/convolutionConv3Dconv3d_2/add#conv3d_6/convolution/ReadVariableOp*
paddingSAME*
data_formatNDHWC*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
	dilations	
*
T0*
strides	

i
conv3d_6/Reshape/ReadVariableOpReadVariableOpconv3d_6/bias*
_output_shapes
:@*
dtype0
s
conv3d_6/Reshape/shapeConst*)
value B"            @   *
dtype0*
_output_shapes
:
Ч
conv3d_6/ReshapeReshapeconv3d_6/Reshape/ReadVariableOpconv3d_6/Reshape/shape*
Tshape0**
_output_shapes
:@*
T0
Ц
conv3d_6/addAddV2conv3d_6/convolutionconv3d_6/Reshape*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0
З
	add_1/addAddV2conv3d_6/addconv3d_5/add*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0
}
activation_3/ReluRelu	add_1/add*
T0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€@
|
conv3d_7/truncated_normal/shapeConst*
_output_shapes
:*)
value B"         @   А   *
dtype0
c
conv3d_7/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
e
 conv3d_7/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *k=
њ
)conv3d_7/truncated_normal/TruncatedNormalTruncatedNormalconv3d_7/truncated_normal/shape*
seed±€е)*
T0*
seed2Ко≤*+
_output_shapes
:@А*
dtype0
І
conv3d_7/truncated_normal/mulMul)conv3d_7/truncated_normal/TruncatedNormal conv3d_7/truncated_normal/stddev*
T0*+
_output_shapes
:@А
Х
conv3d_7/truncated_normalAddconv3d_7/truncated_normal/mulconv3d_7/truncated_normal/mean*
T0*+
_output_shapes
:@А
Љ
conv3d_7/kernelVarHandleOp*
	container * 
shape:@А*
_output_shapes
: *
dtype0* 
shared_nameconv3d_7/kernel*"
_class
loc:@conv3d_7/kernel
o
0conv3d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_7/kernel*
_output_shapes
: 
c
conv3d_7/kernel/AssignAssignVariableOpconv3d_7/kernelconv3d_7/truncated_normal*
dtype0
А
#conv3d_7/kernel/Read/ReadVariableOpReadVariableOpconv3d_7/kernel*+
_output_shapes
:@А*
dtype0
]
conv3d_7/ConstConst*
_output_shapes	
:А*
valueBА*    *
dtype0
¶
conv3d_7/biasVarHandleOp*
dtype0*
	container * 
_class
loc:@conv3d_7/bias*
shape:А*
shared_nameconv3d_7/bias*
_output_shapes
: 
k
.conv3d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_7/bias*
_output_shapes
: 
T
conv3d_7/bias/AssignAssignVariableOpconv3d_7/biasconv3d_7/Const*
dtype0
l
!conv3d_7/bias/Read/ReadVariableOpReadVariableOpconv3d_7/bias*
dtype0*
_output_shapes	
:А
А
#conv3d_7/convolution/ReadVariableOpReadVariableOpconv3d_7/kernel*
dtype0*+
_output_shapes
:@А
Й
conv3d_7/convolutionConv3Dactivation_3/Relu#conv3d_7/convolution/ReadVariableOp*
strides	
*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
T0*
paddingSAME
j
conv3d_7/Reshape/ReadVariableOpReadVariableOpconv3d_7/bias*
_output_shapes	
:А*
dtype0
s
conv3d_7/Reshape/shapeConst*)
value B"            А   *
_output_shapes
:*
dtype0
Ш
conv3d_7/ReshapeReshapeconv3d_7/Reshape/ReadVariableOpconv3d_7/Reshape/shape*
Tshape0*
T0*+
_output_shapes
:А
Ч
conv3d_7/addAddV2conv3d_7/convolutionconv3d_7/Reshape*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Б
activation_4/ReluReluconv3d_7/add*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
|
conv3d_8/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*)
value B"         А   А   
c
conv3d_8/truncated_normal/meanConst*
dtype0*
valueB
 *    *
_output_shapes
: 
e
 conv3d_8/truncated_normal/stddevConst*
valueB
 *И	а<*
dtype0*
_output_shapes
: 
њ
)conv3d_8/truncated_normal/TruncatedNormalTruncatedNormalconv3d_8/truncated_normal/shape*
dtype0*
seed±€е)*
seed2ѓйp*,
_output_shapes
:АА*
T0
®
conv3d_8/truncated_normal/mulMul)conv3d_8/truncated_normal/TruncatedNormal conv3d_8/truncated_normal/stddev*,
_output_shapes
:АА*
T0
Ц
conv3d_8/truncated_normalAddconv3d_8/truncated_normal/mulconv3d_8/truncated_normal/mean*,
_output_shapes
:АА*
T0
љ
conv3d_8/kernelVarHandleOp*"
_class
loc:@conv3d_8/kernel*
_output_shapes
: *
	container * 
shared_nameconv3d_8/kernel*!
shape:АА*
dtype0
o
0conv3d_8/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_8/kernel*
_output_shapes
: 
c
conv3d_8/kernel/AssignAssignVariableOpconv3d_8/kernelconv3d_8/truncated_normal*
dtype0
Б
#conv3d_8/kernel/Read/ReadVariableOpReadVariableOpconv3d_8/kernel*
dtype0*,
_output_shapes
:АА
]
conv3d_8/ConstConst*
_output_shapes	
:А*
valueBА*    *
dtype0
¶
conv3d_8/biasVarHandleOp*
shared_nameconv3d_8/bias*
_output_shapes
: *
shape:А*
	container * 
_class
loc:@conv3d_8/bias*
dtype0
k
.conv3d_8/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_8/bias*
_output_shapes
: 
T
conv3d_8/bias/AssignAssignVariableOpconv3d_8/biasconv3d_8/Const*
dtype0
l
!conv3d_8/bias/Read/ReadVariableOpReadVariableOpconv3d_8/bias*
dtype0*
_output_shapes	
:А
Б
#conv3d_8/convolution/ReadVariableOpReadVariableOpconv3d_8/kernel*
dtype0*,
_output_shapes
:АА
Й
conv3d_8/convolutionConv3Dactivation_4/Relu#conv3d_8/convolution/ReadVariableOp*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
strides	
*
T0*
	dilations	
*
paddingSAME*
data_formatNDHWC
j
conv3d_8/Reshape/ReadVariableOpReadVariableOpconv3d_8/bias*
_output_shapes	
:А*
dtype0
s
conv3d_8/Reshape/shapeConst*
dtype0*)
value B"            А   *
_output_shapes
:
Ш
conv3d_8/ReshapeReshapeconv3d_8/Reshape/ReadVariableOpconv3d_8/Reshape/shape*
Tshape0*
T0*+
_output_shapes
:А
Ч
conv3d_8/addAddV2conv3d_8/convolutionconv3d_8/Reshape*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
Б
activation_5/ReluReluconv3d_8/add*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
|
conv3d_9/truncated_normal/shapeConst*
_output_shapes
:*)
value B"         А   А   *
dtype0
c
conv3d_9/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
e
 conv3d_9/truncated_normal/stddevConst*
valueB
 *И	а<*
dtype0*
_output_shapes
: 
ј
)conv3d_9/truncated_normal/TruncatedNormalTruncatedNormalconv3d_9/truncated_normal/shape*
T0*,
_output_shapes
:АА*
dtype0*
seed2™ДС*
seed±€е)
®
conv3d_9/truncated_normal/mulMul)conv3d_9/truncated_normal/TruncatedNormal conv3d_9/truncated_normal/stddev*
T0*,
_output_shapes
:АА
Ц
conv3d_9/truncated_normalAddconv3d_9/truncated_normal/mulconv3d_9/truncated_normal/mean*,
_output_shapes
:АА*
T0
љ
conv3d_9/kernelVarHandleOp* 
shared_nameconv3d_9/kernel*"
_class
loc:@conv3d_9/kernel*!
shape:АА*
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
Б
#conv3d_9/kernel/Read/ReadVariableOpReadVariableOpconv3d_9/kernel*
dtype0*,
_output_shapes
:АА
]
conv3d_9/ConstConst*
valueBА*    *
_output_shapes	
:А*
dtype0
¶
conv3d_9/biasVarHandleOp*
shape:А*
	container *
_output_shapes
: *
shared_nameconv3d_9/bias*
dtype0* 
_class
loc:@conv3d_9/bias
k
.conv3d_9/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_9/bias*
_output_shapes
: 
T
conv3d_9/bias/AssignAssignVariableOpconv3d_9/biasconv3d_9/Const*
dtype0
l
!conv3d_9/bias/Read/ReadVariableOpReadVariableOpconv3d_9/bias*
_output_shapes	
:А*
dtype0
Б
#conv3d_9/convolution/ReadVariableOpReadVariableOpconv3d_9/kernel*
dtype0*,
_output_shapes
:АА
Й
conv3d_9/convolutionConv3Dactivation_5/Relu#conv3d_9/convolution/ReadVariableOp*
strides	
*
	dilations	
*
paddingSAME*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
data_formatNDHWC*
T0
j
conv3d_9/Reshape/ReadVariableOpReadVariableOpconv3d_9/bias*
dtype0*
_output_shapes	
:А
s
conv3d_9/Reshape/shapeConst*
dtype0*
_output_shapes
:*)
value B"            А   
Ш
conv3d_9/ReshapeReshapeconv3d_9/Reshape/ReadVariableOpconv3d_9/Reshape/shape*
T0*+
_output_shapes
:А*
Tshape0
Ч
conv3d_9/addAddV2conv3d_9/convolutionconv3d_9/Reshape*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
}
 conv3d_10/truncated_normal/shapeConst*)
value B"         @   А   *
_output_shapes
:*
dtype0
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
 *Х M>*
dtype0*
_output_shapes
: 
Ѕ
*conv3d_10/truncated_normal/TruncatedNormalTruncatedNormal conv3d_10/truncated_normal/shape*
seed2рл©*+
_output_shapes
:@А*
T0*
seed±€е)*
dtype0
™
conv3d_10/truncated_normal/mulMul*conv3d_10/truncated_normal/TruncatedNormal!conv3d_10/truncated_normal/stddev*
T0*+
_output_shapes
:@А
Ш
conv3d_10/truncated_normalAddconv3d_10/truncated_normal/mulconv3d_10/truncated_normal/mean*
T0*+
_output_shapes
:@А
њ
conv3d_10/kernelVarHandleOp*#
_class
loc:@conv3d_10/kernel*
_output_shapes
: * 
shape:@А*
dtype0*!
shared_nameconv3d_10/kernel*
	container 
q
1conv3d_10/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_10/kernel*
_output_shapes
: 
f
conv3d_10/kernel/AssignAssignVariableOpconv3d_10/kernelconv3d_10/truncated_normal*
dtype0
В
$conv3d_10/kernel/Read/ReadVariableOpReadVariableOpconv3d_10/kernel*+
_output_shapes
:@А*
dtype0
^
conv3d_10/ConstConst*
dtype0*
valueBА*    *
_output_shapes	
:А
©
conv3d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
_class
loc:@conv3d_10/bias*
shared_nameconv3d_10/bias*
	container 
m
/conv3d_10/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_10/bias*
_output_shapes
: 
W
conv3d_10/bias/AssignAssignVariableOpconv3d_10/biasconv3d_10/Const*
dtype0
n
"conv3d_10/bias/Read/ReadVariableOpReadVariableOpconv3d_10/bias*
dtype0*
_output_shapes	
:А
В
$conv3d_10/convolution/ReadVariableOpReadVariableOpconv3d_10/kernel*+
_output_shapes
:@А*
dtype0
Л
conv3d_10/convolutionConv3Dactivation_3/Relu$conv3d_10/convolution/ReadVariableOp*
paddingSAME*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
strides	

l
 conv3d_10/Reshape/ReadVariableOpReadVariableOpconv3d_10/bias*
dtype0*
_output_shapes	
:А
t
conv3d_10/Reshape/shapeConst*)
value B"            А   *
dtype0*
_output_shapes
:
Ы
conv3d_10/ReshapeReshape conv3d_10/Reshape/ReadVariableOpconv3d_10/Reshape/shape*+
_output_shapes
:А*
Tshape0*
T0
Ъ
conv3d_10/addAddV2conv3d_10/convolutionconv3d_10/Reshape*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
Й
	add_2/addAddV2conv3d_10/addconv3d_9/add*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
~
activation_6/ReluRelu	add_2/add*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
}
 conv3d_11/truncated_normal/shapeConst*)
value B"         А   А   *
dtype0*
_output_shapes
:
d
conv3d_11/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
f
!conv3d_11/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *И	а<*
dtype0
¬
*conv3d_11/truncated_normal/TruncatedNormalTruncatedNormal conv3d_11/truncated_normal/shape*,
_output_shapes
:АА*
T0*
dtype0*
seed2УГТ*
seed±€е)
Ђ
conv3d_11/truncated_normal/mulMul*conv3d_11/truncated_normal/TruncatedNormal!conv3d_11/truncated_normal/stddev*
T0*,
_output_shapes
:АА
Щ
conv3d_11/truncated_normalAddconv3d_11/truncated_normal/mulconv3d_11/truncated_normal/mean*
T0*,
_output_shapes
:АА
ј
conv3d_11/kernelVarHandleOp*
	container *!
shape:АА*!
shared_nameconv3d_11/kernel*
dtype0*#
_class
loc:@conv3d_11/kernel*
_output_shapes
: 
q
1conv3d_11/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_11/kernel*
_output_shapes
: 
f
conv3d_11/kernel/AssignAssignVariableOpconv3d_11/kernelconv3d_11/truncated_normal*
dtype0
Г
$conv3d_11/kernel/Read/ReadVariableOpReadVariableOpconv3d_11/kernel*,
_output_shapes
:АА*
dtype0
^
conv3d_11/ConstConst*
valueBА*    *
_output_shapes	
:А*
dtype0
©
conv3d_11/biasVarHandleOp*
shared_nameconv3d_11/bias*
_output_shapes
: *
	container *
shape:А*
dtype0*!
_class
loc:@conv3d_11/bias
m
/conv3d_11/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_11/bias*
_output_shapes
: 
W
conv3d_11/bias/AssignAssignVariableOpconv3d_11/biasconv3d_11/Const*
dtype0
n
"conv3d_11/bias/Read/ReadVariableOpReadVariableOpconv3d_11/bias*
dtype0*
_output_shapes	
:А
Г
$conv3d_11/convolution/ReadVariableOpReadVariableOpconv3d_11/kernel*,
_output_shapes
:АА*
dtype0
Л
conv3d_11/convolutionConv3Dactivation_6/Relu$conv3d_11/convolution/ReadVariableOp*
	dilations	
*
strides	
*
T0*
data_formatNDHWC*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME
l
 conv3d_11/Reshape/ReadVariableOpReadVariableOpconv3d_11/bias*
_output_shapes	
:А*
dtype0
t
conv3d_11/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"            А   
Ы
conv3d_11/ReshapeReshape conv3d_11/Reshape/ReadVariableOpconv3d_11/Reshape/shape*
Tshape0*+
_output_shapes
:А*
T0
Ъ
conv3d_11/addAddV2conv3d_11/convolutionconv3d_11/Reshape*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
В
activation_7/ReluReluconv3d_11/add*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
}
 conv3d_12/truncated_normal/shapeConst*)
value B"         А   А   *
dtype0*
_output_shapes
:
d
conv3d_12/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
f
!conv3d_12/truncated_normal/stddevConst*
valueB
 *И	а<*
dtype0*
_output_shapes
: 
¬
*conv3d_12/truncated_normal/TruncatedNormalTruncatedNormal conv3d_12/truncated_normal/shape*
dtype0*
seed2«Нћ*,
_output_shapes
:АА*
T0*
seed±€е)
Ђ
conv3d_12/truncated_normal/mulMul*conv3d_12/truncated_normal/TruncatedNormal!conv3d_12/truncated_normal/stddev*,
_output_shapes
:АА*
T0
Щ
conv3d_12/truncated_normalAddconv3d_12/truncated_normal/mulconv3d_12/truncated_normal/mean*,
_output_shapes
:АА*
T0
ј
conv3d_12/kernelVarHandleOp*
dtype0*!
shared_nameconv3d_12/kernel*!
shape:АА*
_output_shapes
: *
	container *#
_class
loc:@conv3d_12/kernel
q
1conv3d_12/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_12/kernel*
_output_shapes
: 
f
conv3d_12/kernel/AssignAssignVariableOpconv3d_12/kernelconv3d_12/truncated_normal*
dtype0
Г
$conv3d_12/kernel/Read/ReadVariableOpReadVariableOpconv3d_12/kernel*
dtype0*,
_output_shapes
:АА
^
conv3d_12/ConstConst*
_output_shapes	
:А*
dtype0*
valueBА*    
©
conv3d_12/biasVarHandleOp*
shared_nameconv3d_12/bias*
	container *
dtype0*
_output_shapes
: *!
_class
loc:@conv3d_12/bias*
shape:А
m
/conv3d_12/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_12/bias*
_output_shapes
: 
W
conv3d_12/bias/AssignAssignVariableOpconv3d_12/biasconv3d_12/Const*
dtype0
n
"conv3d_12/bias/Read/ReadVariableOpReadVariableOpconv3d_12/bias*
_output_shapes	
:А*
dtype0
Г
$conv3d_12/convolution/ReadVariableOpReadVariableOpconv3d_12/kernel*
dtype0*,
_output_shapes
:АА
Л
conv3d_12/convolutionConv3Dactivation_7/Relu$conv3d_12/convolution/ReadVariableOp*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
	dilations	
*
data_formatNDHWC*
strides	
*
paddingSAME*
T0
l
 conv3d_12/Reshape/ReadVariableOpReadVariableOpconv3d_12/bias*
dtype0*
_output_shapes	
:А
t
conv3d_12/Reshape/shapeConst*
dtype0*)
value B"            А   *
_output_shapes
:
Ы
conv3d_12/ReshapeReshape conv3d_12/Reshape/ReadVariableOpconv3d_12/Reshape/shape*
T0*
Tshape0*+
_output_shapes
:А
Ъ
conv3d_12/addAddV2conv3d_12/convolutionconv3d_12/Reshape*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
В
activation_8/ReluReluconv3d_12/add*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
}
 conv3d_13/truncated_normal/shapeConst*)
value B"         А   А   *
_output_shapes
:*
dtype0
d
conv3d_13/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
f
!conv3d_13/truncated_normal/stddevConst*
dtype0*
valueB
 *И	а<*
_output_shapes
: 
Ѕ
*conv3d_13/truncated_normal/TruncatedNormalTruncatedNormal conv3d_13/truncated_normal/shape*
dtype0*
seed±€е)*,
_output_shapes
:АА*
T0*
seed2іГ
Ђ
conv3d_13/truncated_normal/mulMul*conv3d_13/truncated_normal/TruncatedNormal!conv3d_13/truncated_normal/stddev*,
_output_shapes
:АА*
T0
Щ
conv3d_13/truncated_normalAddconv3d_13/truncated_normal/mulconv3d_13/truncated_normal/mean*,
_output_shapes
:АА*
T0
ј
conv3d_13/kernelVarHandleOp*!
shared_nameconv3d_13/kernel*#
_class
loc:@conv3d_13/kernel*
dtype0*
_output_shapes
: *
	container *!
shape:АА
q
1conv3d_13/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_13/kernel*
_output_shapes
: 
f
conv3d_13/kernel/AssignAssignVariableOpconv3d_13/kernelconv3d_13/truncated_normal*
dtype0
Г
$conv3d_13/kernel/Read/ReadVariableOpReadVariableOpconv3d_13/kernel*,
_output_shapes
:АА*
dtype0
^
conv3d_13/ConstConst*
valueBА*    *
dtype0*
_output_shapes	
:А
©
conv3d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
	container *
shared_nameconv3d_13/bias*!
_class
loc:@conv3d_13/bias
m
/conv3d_13/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_13/bias*
_output_shapes
: 
W
conv3d_13/bias/AssignAssignVariableOpconv3d_13/biasconv3d_13/Const*
dtype0
n
"conv3d_13/bias/Read/ReadVariableOpReadVariableOpconv3d_13/bias*
dtype0*
_output_shapes	
:А
Г
$conv3d_13/convolution/ReadVariableOpReadVariableOpconv3d_13/kernel*
dtype0*,
_output_shapes
:АА
Л
conv3d_13/convolutionConv3Dactivation_8/Relu$conv3d_13/convolution/ReadVariableOp*
	dilations	
*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
data_formatNDHWC*
strides	
*
T0*
paddingSAME
l
 conv3d_13/Reshape/ReadVariableOpReadVariableOpconv3d_13/bias*
dtype0*
_output_shapes	
:А
t
conv3d_13/Reshape/shapeConst*
_output_shapes
:*
dtype0*)
value B"            А   
Ы
conv3d_13/ReshapeReshape conv3d_13/Reshape/ReadVariableOpconv3d_13/Reshape/shape*+
_output_shapes
:А*
Tshape0*
T0
Ъ
conv3d_13/addAddV2conv3d_13/convolutionconv3d_13/Reshape*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
О
	add_3/addAddV2activation_6/Reluconv3d_13/add*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
~
activation_9/ReluRelu	add_3/add*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
}
 conv3d_14/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*)
value B"         А   А   
d
conv3d_14/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
f
!conv3d_14/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *И	а<
¬
*conv3d_14/truncated_normal/TruncatedNormalTruncatedNormal conv3d_14/truncated_normal/shape*
T0*
dtype0*,
_output_shapes
:АА*
seed2‘ФЫ*
seed±€е)
Ђ
conv3d_14/truncated_normal/mulMul*conv3d_14/truncated_normal/TruncatedNormal!conv3d_14/truncated_normal/stddev*
T0*,
_output_shapes
:АА
Щ
conv3d_14/truncated_normalAddconv3d_14/truncated_normal/mulconv3d_14/truncated_normal/mean*
T0*,
_output_shapes
:АА
ј
conv3d_14/kernelVarHandleOp*
_output_shapes
: *!
shape:АА*
dtype0*#
_class
loc:@conv3d_14/kernel*!
shared_nameconv3d_14/kernel*
	container 
q
1conv3d_14/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_14/kernel*
_output_shapes
: 
f
conv3d_14/kernel/AssignAssignVariableOpconv3d_14/kernelconv3d_14/truncated_normal*
dtype0
Г
$conv3d_14/kernel/Read/ReadVariableOpReadVariableOpconv3d_14/kernel*
dtype0*,
_output_shapes
:АА
^
conv3d_14/ConstConst*
_output_shapes	
:А*
valueBА*    *
dtype0
©
conv3d_14/biasVarHandleOp*
_output_shapes
: *!
_class
loc:@conv3d_14/bias*
shape:А*
dtype0*
shared_nameconv3d_14/bias*
	container 
m
/conv3d_14/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_14/bias*
_output_shapes
: 
W
conv3d_14/bias/AssignAssignVariableOpconv3d_14/biasconv3d_14/Const*
dtype0
n
"conv3d_14/bias/Read/ReadVariableOpReadVariableOpconv3d_14/bias*
_output_shapes	
:А*
dtype0
Г
$conv3d_14/convolution/ReadVariableOpReadVariableOpconv3d_14/kernel*
dtype0*,
_output_shapes
:АА
Л
conv3d_14/convolutionConv3Dactivation_9/Relu$conv3d_14/convolution/ReadVariableOp*
	dilations	
*
T0*
paddingSAME*
strides	
*
data_formatNDHWC*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
l
 conv3d_14/Reshape/ReadVariableOpReadVariableOpconv3d_14/bias*
_output_shapes	
:А*
dtype0
t
conv3d_14/Reshape/shapeConst*)
value B"            А   *
dtype0*
_output_shapes
:
Ы
conv3d_14/ReshapeReshape conv3d_14/Reshape/ReadVariableOpconv3d_14/Reshape/shape*+
_output_shapes
:А*
Tshape0*
T0
Ъ
conv3d_14/addAddV2conv3d_14/convolutionconv3d_14/Reshape*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Г
activation_10/ReluReluconv3d_14/add*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
}
 conv3d_15/truncated_normal/shapeConst*
_output_shapes
:*)
value B"         А   А   *
dtype0
d
conv3d_15/truncated_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
f
!conv3d_15/truncated_normal/stddevConst*
dtype0*
valueB
 *И	а<*
_output_shapes
: 
¬
*conv3d_15/truncated_normal/TruncatedNormalTruncatedNormal conv3d_15/truncated_normal/shape*
dtype0*
seed2УЈЎ*,
_output_shapes
:АА*
seed±€е)*
T0
Ђ
conv3d_15/truncated_normal/mulMul*conv3d_15/truncated_normal/TruncatedNormal!conv3d_15/truncated_normal/stddev*,
_output_shapes
:АА*
T0
Щ
conv3d_15/truncated_normalAddconv3d_15/truncated_normal/mulconv3d_15/truncated_normal/mean*
T0*,
_output_shapes
:АА
ј
conv3d_15/kernelVarHandleOp*#
_class
loc:@conv3d_15/kernel*
	container *!
shape:АА*
_output_shapes
: *
dtype0*!
shared_nameconv3d_15/kernel
q
1conv3d_15/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_15/kernel*
_output_shapes
: 
f
conv3d_15/kernel/AssignAssignVariableOpconv3d_15/kernelconv3d_15/truncated_normal*
dtype0
Г
$conv3d_15/kernel/Read/ReadVariableOpReadVariableOpconv3d_15/kernel*,
_output_shapes
:АА*
dtype0
^
conv3d_15/ConstConst*
dtype0*
_output_shapes	
:А*
valueBА*    
©
conv3d_15/biasVarHandleOp*
shape:А*
	container *
_output_shapes
: *
shared_nameconv3d_15/bias*!
_class
loc:@conv3d_15/bias*
dtype0
m
/conv3d_15/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_15/bias*
_output_shapes
: 
W
conv3d_15/bias/AssignAssignVariableOpconv3d_15/biasconv3d_15/Const*
dtype0
n
"conv3d_15/bias/Read/ReadVariableOpReadVariableOpconv3d_15/bias*
_output_shapes	
:А*
dtype0
Г
$conv3d_15/convolution/ReadVariableOpReadVariableOpconv3d_15/kernel*
dtype0*,
_output_shapes
:АА
М
conv3d_15/convolutionConv3Dactivation_10/Relu$conv3d_15/convolution/ReadVariableOp*
	dilations	
*
strides	
*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
data_formatNDHWC
l
 conv3d_15/Reshape/ReadVariableOpReadVariableOpconv3d_15/bias*
dtype0*
_output_shapes	
:А
t
conv3d_15/Reshape/shapeConst*
dtype0*
_output_shapes
:*)
value B"            А   
Ы
conv3d_15/ReshapeReshape conv3d_15/Reshape/ReadVariableOpconv3d_15/Reshape/shape*
T0*+
_output_shapes
:А*
Tshape0
Ъ
conv3d_15/addAddV2conv3d_15/convolutionconv3d_15/Reshape*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Г
activation_11/ReluReluconv3d_15/add*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
}
 conv3d_16/truncated_normal/shapeConst*
dtype0*)
value B"         А   А   *
_output_shapes
:
d
conv3d_16/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
f
!conv3d_16/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *И	а<
¬
*conv3d_16/truncated_normal/TruncatedNormalTruncatedNormal conv3d_16/truncated_normal/shape*
seed±€е)*
T0*,
_output_shapes
:АА*
seed2—Яг*
dtype0
Ђ
conv3d_16/truncated_normal/mulMul*conv3d_16/truncated_normal/TruncatedNormal!conv3d_16/truncated_normal/stddev*,
_output_shapes
:АА*
T0
Щ
conv3d_16/truncated_normalAddconv3d_16/truncated_normal/mulconv3d_16/truncated_normal/mean*
T0*,
_output_shapes
:АА
ј
conv3d_16/kernelVarHandleOp*#
_class
loc:@conv3d_16/kernel*!
shared_nameconv3d_16/kernel*
	container *
_output_shapes
: *!
shape:АА*
dtype0
q
1conv3d_16/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_16/kernel*
_output_shapes
: 
f
conv3d_16/kernel/AssignAssignVariableOpconv3d_16/kernelconv3d_16/truncated_normal*
dtype0
Г
$conv3d_16/kernel/Read/ReadVariableOpReadVariableOpconv3d_16/kernel*,
_output_shapes
:АА*
dtype0
^
conv3d_16/ConstConst*
valueBА*    *
dtype0*
_output_shapes	
:А
©
conv3d_16/biasVarHandleOp*
shared_nameconv3d_16/bias*
shape:А*
	container *!
_class
loc:@conv3d_16/bias*
_output_shapes
: *
dtype0
m
/conv3d_16/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_16/bias*
_output_shapes
: 
W
conv3d_16/bias/AssignAssignVariableOpconv3d_16/biasconv3d_16/Const*
dtype0
n
"conv3d_16/bias/Read/ReadVariableOpReadVariableOpconv3d_16/bias*
dtype0*
_output_shapes	
:А
Г
$conv3d_16/convolution/ReadVariableOpReadVariableOpconv3d_16/kernel*,
_output_shapes
:АА*
dtype0
М
conv3d_16/convolutionConv3Dactivation_11/Relu$conv3d_16/convolution/ReadVariableOp*
	dilations	
*
paddingSAME*
data_formatNDHWC*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
strides	
*
T0
l
 conv3d_16/Reshape/ReadVariableOpReadVariableOpconv3d_16/bias*
_output_shapes	
:А*
dtype0
t
conv3d_16/Reshape/shapeConst*
_output_shapes
:*)
value B"            А   *
dtype0
Ы
conv3d_16/ReshapeReshape conv3d_16/Reshape/ReadVariableOpconv3d_16/Reshape/shape*+
_output_shapes
:А*
T0*
Tshape0
Ъ
conv3d_16/addAddV2conv3d_16/convolutionconv3d_16/Reshape*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
О
	add_4/addAddV2activation_9/Reluconv3d_16/add*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А

activation_12/ReluRelu	add_4/add*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
z
features/random_uniform/shapeConst*)
value B"         А   А   *
dtype0*
_output_shapes
:
`
features/random_uniform/minConst*
dtype0*
valueB
 *п[сЉ*
_output_shapes
: 
`
features/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *п[с<
Є
%features/random_uniform/RandomUniformRandomUniformfeatures/random_uniform/shape*
dtype0*
seed±€е)*
seed2√КЩ*,
_output_shapes
:АА*
T0
}
features/random_uniform/subSubfeatures/random_uniform/maxfeatures/random_uniform/min*
_output_shapes
: *
T0
Э
features/random_uniform/mulMul%features/random_uniform/RandomUniformfeatures/random_uniform/sub*,
_output_shapes
:АА*
T0
П
features/random_uniformAddfeatures/random_uniform/mulfeatures/random_uniform/min*,
_output_shapes
:АА*
T0
љ
features/kernelVarHandleOp*
	container *"
_class
loc:@features/kernel*!
shape:АА* 
shared_namefeatures/kernel*
dtype0*
_output_shapes
: 
o
0features/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpfeatures/kernel*
_output_shapes
: 
a
features/kernel/AssignAssignVariableOpfeatures/kernelfeatures/random_uniform*
dtype0
Б
#features/kernel/Read/ReadVariableOpReadVariableOpfeatures/kernel*,
_output_shapes
:АА*
dtype0
]
features/ConstConst*
_output_shapes	
:А*
valueBА*    *
dtype0
¶
features/biasVarHandleOp*
shared_namefeatures/bias*
dtype0*
shape:А* 
_class
loc:@features/bias*
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
:А
Б
#features/convolution/ReadVariableOpReadVariableOpfeatures/kernel*
dtype0*,
_output_shapes
:АА
К
features/convolutionConv3Dactivation_12/Relu#features/convolution/ReadVariableOp*
data_formatNDHWC*
T0*
strides	
*
paddingSAME*
	dilations	
*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
j
features/Reshape/ReadVariableOpReadVariableOpfeatures/bias*
dtype0*
_output_shapes	
:А
s
features/Reshape/shapeConst*
dtype0*
_output_shapes
:*)
value B"            А   
Ш
features/ReshapeReshapefeatures/Reshape/ReadVariableOpfeatures/Reshape/shape*
T0*
Tshape0*+
_output_shapes
:А
Ч
features/addAddV2features/convolutionfeatures/Reshape*
T0*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А
}
features/ReluRelufeatures/add*O
_output_shapes=
;:9€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
v
prob/random_uniform/shapeConst*)
value B"         А      *
dtype0*
_output_shapes
:
\
prob/random_uniform/minConst*
valueB
 *n„\Њ*
_output_shapes
: *
dtype0
\
prob/random_uniform/maxConst*
_output_shapes
: *
valueB
 *n„\>*
dtype0
ѓ
!prob/random_uniform/RandomUniformRandomUniformprob/random_uniform/shape*+
_output_shapes
:А*
dtype0*
seed±€е)*
seed2уіЯ*
T0
q
prob/random_uniform/subSubprob/random_uniform/maxprob/random_uniform/min*
_output_shapes
: *
T0
Р
prob/random_uniform/mulMul!prob/random_uniform/RandomUniformprob/random_uniform/sub*
T0*+
_output_shapes
:А
В
prob/random_uniformAddprob/random_uniform/mulprob/random_uniform/min*
T0*+
_output_shapes
:А
∞
prob/kernelVarHandleOp*
_class
loc:@prob/kernel*
shared_nameprob/kernel*
_output_shapes
: *
	container * 
shape:А*
dtype0
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
:А
W

prob/ConstConst*
_output_shapes
:*
dtype0*
valueB*    
Щ
	prob/biasVarHandleOp*
_class
loc:@prob/bias*
shared_name	prob/bias*
dtype0*
	container *
shape:*
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
prob/bias/Read/ReadVariableOpReadVariableOp	prob/bias*
_output_shapes
:*
dtype0
x
prob/convolution/ReadVariableOpReadVariableOpprob/kernel*+
_output_shapes
:А*
dtype0
ь
prob/convolutionConv3Dfeatures/Reluprob/convolution/ReadVariableOp*
T0*
strides	
*
	dilations	
*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
data_formatNDHWC*
paddingSAME
a
prob/Reshape/ReadVariableOpReadVariableOp	prob/bias*
_output_shapes
:*
dtype0
o
prob/Reshape/shapeConst*)
value B"               *
dtype0*
_output_shapes
:
Л
prob/ReshapeReshapeprob/Reshape/ReadVariableOpprob/Reshape/shape**
_output_shapes
:*
Tshape0*
T0
К
prob/addAddV2prob/convolutionprob/Reshape*
T0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
z
prob/SigmoidSigmoidprob/add*
T0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
v
dist/random_uniform/shapeConst*
_output_shapes
:*)
value B"         А   `   *
dtype0
\
dist/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *bЧ'Њ
\
dist/random_uniform/maxConst*
valueB
 *bЧ'>*
dtype0*
_output_shapes
: 
ѓ
!dist/random_uniform/RandomUniformRandomUniformdist/random_uniform/shape*+
_output_shapes
:А`*
seed±€е)*
dtype0*
T0*
seed2∞™п
q
dist/random_uniform/subSubdist/random_uniform/maxdist/random_uniform/min*
_output_shapes
: *
T0
Р
dist/random_uniform/mulMul!dist/random_uniform/RandomUniformdist/random_uniform/sub*
T0*+
_output_shapes
:А`
В
dist/random_uniformAdddist/random_uniform/muldist/random_uniform/min*
T0*+
_output_shapes
:А`
∞
dist/kernelVarHandleOp*
_output_shapes
: *
shared_namedist/kernel*
_class
loc:@dist/kernel* 
shape:А`*
	container *
dtype0
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
:А`
W

dist/ConstConst*
dtype0*
_output_shapes
:`*
valueB`*    
Щ
	dist/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:`*
	container *
_class
loc:@dist/bias*
shared_name	dist/bias
c
*dist/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp	dist/bias*
_output_shapes
: 
H
dist/bias/AssignAssignVariableOp	dist/bias
dist/Const*
dtype0
c
dist/bias/Read/ReadVariableOpReadVariableOp	dist/bias*
_output_shapes
:`*
dtype0
x
dist/convolution/ReadVariableOpReadVariableOpdist/kernel*+
_output_shapes
:А`*
dtype0
ь
dist/convolutionConv3Dfeatures/Reludist/convolution/ReadVariableOp*
T0*
strides	
*
paddingSAME*
	dilations	
*
data_formatNDHWC*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€`
a
dist/Reshape/ReadVariableOpReadVariableOp	dist/bias*
dtype0*
_output_shapes
:`
o
dist/Reshape/shapeConst*
dtype0*
_output_shapes
:*)
value B"            `   
Л
dist/ReshapeReshapedist/Reshape/ReadVariableOpdist/Reshape/shape*
Tshape0**
_output_shapes
:`*
T0
К
dist/addAddV2dist/convolutiondist/Reshape*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€`*
T0
ќ
PlaceholderPlaceholder*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
O
AssignVariableOpAssignVariableOpconv3d_1/kernelPlaceholder*
dtype0
}
ReadVariableOpReadVariableOpconv3d_1/kernel^AssignVariableOp**
_output_shapes
: *
dtype0
h
Placeholder_1Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
Q
AssignVariableOp_1AssignVariableOpconv3d_1/biasPlaceholder_1*
dtype0
o
ReadVariableOp_1ReadVariableOpconv3d_1/bias^AssignVariableOp_1*
_output_shapes
: *
dtype0
–
Placeholder_2Placeholder*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
S
AssignVariableOp_2AssignVariableOpconv3d_2/kernelPlaceholder_2*
dtype0
Б
ReadVariableOp_2ReadVariableOpconv3d_2/kernel^AssignVariableOp_2*
dtype0**
_output_shapes
:  
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
Q
AssignVariableOp_3AssignVariableOpconv3d_2/biasPlaceholder_3*
dtype0
o
ReadVariableOp_3ReadVariableOpconv3d_2/bias^AssignVariableOp_3*
dtype0*
_output_shapes
: 
–
Placeholder_4Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
S
AssignVariableOp_4AssignVariableOpconv3d_3/kernelPlaceholder_4*
dtype0
Б
ReadVariableOp_4ReadVariableOpconv3d_3/kernel^AssignVariableOp_4**
_output_shapes
: @*
dtype0
h
Placeholder_5Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
Q
AssignVariableOp_5AssignVariableOpconv3d_3/biasPlaceholder_5*
dtype0
o
ReadVariableOp_5ReadVariableOpconv3d_3/bias^AssignVariableOp_5*
_output_shapes
:@*
dtype0
–
Placeholder_6Placeholder*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
S
AssignVariableOp_6AssignVariableOpconv3d_4/kernelPlaceholder_6*
dtype0
Б
ReadVariableOp_6ReadVariableOpconv3d_4/kernel^AssignVariableOp_6*
dtype0**
_output_shapes
:@@
h
Placeholder_7Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
Q
AssignVariableOp_7AssignVariableOpconv3d_4/biasPlaceholder_7*
dtype0
o
ReadVariableOp_7ReadVariableOpconv3d_4/bias^AssignVariableOp_7*
dtype0*
_output_shapes
:@
–
Placeholder_8Placeholder*
dtype0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
S
AssignVariableOp_8AssignVariableOpconv3d_6/kernelPlaceholder_8*
dtype0
Б
ReadVariableOp_8ReadVariableOpconv3d_6/kernel^AssignVariableOp_8*
dtype0**
_output_shapes
: @
h
Placeholder_9Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Q
AssignVariableOp_9AssignVariableOpconv3d_6/biasPlaceholder_9*
dtype0
o
ReadVariableOp_9ReadVariableOpconv3d_6/bias^AssignVariableOp_9*
dtype0*
_output_shapes
:@
—
Placeholder_10Placeholder*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
U
AssignVariableOp_10AssignVariableOpconv3d_5/kernelPlaceholder_10*
dtype0
Г
ReadVariableOp_10ReadVariableOpconv3d_5/kernel^AssignVariableOp_10*
dtype0**
_output_shapes
:@@
i
Placeholder_11Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
S
AssignVariableOp_11AssignVariableOpconv3d_5/biasPlaceholder_11*
dtype0
q
ReadVariableOp_11ReadVariableOpconv3d_5/bias^AssignVariableOp_11*
dtype0*
_output_shapes
:@
—
Placeholder_12Placeholder*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
U
AssignVariableOp_12AssignVariableOpconv3d_7/kernelPlaceholder_12*
dtype0
Д
ReadVariableOp_12ReadVariableOpconv3d_7/kernel^AssignVariableOp_12*
dtype0*+
_output_shapes
:@А
i
Placeholder_13Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
S
AssignVariableOp_13AssignVariableOpconv3d_7/biasPlaceholder_13*
dtype0
r
ReadVariableOp_13ReadVariableOpconv3d_7/bias^AssignVariableOp_13*
dtype0*
_output_shapes	
:А
—
Placeholder_14Placeholder*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0
U
AssignVariableOp_14AssignVariableOpconv3d_8/kernelPlaceholder_14*
dtype0
Е
ReadVariableOp_14ReadVariableOpconv3d_8/kernel^AssignVariableOp_14*,
_output_shapes
:АА*
dtype0
i
Placeholder_15Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
S
AssignVariableOp_15AssignVariableOpconv3d_8/biasPlaceholder_15*
dtype0
r
ReadVariableOp_15ReadVariableOpconv3d_8/bias^AssignVariableOp_15*
_output_shapes	
:А*
dtype0
—
Placeholder_16Placeholder*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0
V
AssignVariableOp_16AssignVariableOpconv3d_10/kernelPlaceholder_16*
dtype0
Е
ReadVariableOp_16ReadVariableOpconv3d_10/kernel^AssignVariableOp_16*+
_output_shapes
:@А*
dtype0
i
Placeholder_17Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
T
AssignVariableOp_17AssignVariableOpconv3d_10/biasPlaceholder_17*
dtype0
s
ReadVariableOp_17ReadVariableOpconv3d_10/bias^AssignVariableOp_17*
dtype0*
_output_shapes	
:А
—
Placeholder_18Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0
U
AssignVariableOp_18AssignVariableOpconv3d_9/kernelPlaceholder_18*
dtype0
Е
ReadVariableOp_18ReadVariableOpconv3d_9/kernel^AssignVariableOp_18*
dtype0*,
_output_shapes
:АА
i
Placeholder_19Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
S
AssignVariableOp_19AssignVariableOpconv3d_9/biasPlaceholder_19*
dtype0
r
ReadVariableOp_19ReadVariableOpconv3d_9/bias^AssignVariableOp_19*
_output_shapes	
:А*
dtype0
—
Placeholder_20Placeholder*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0
V
AssignVariableOp_20AssignVariableOpconv3d_11/kernelPlaceholder_20*
dtype0
Ж
ReadVariableOp_20ReadVariableOpconv3d_11/kernel^AssignVariableOp_20*,
_output_shapes
:АА*
dtype0
i
Placeholder_21Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
T
AssignVariableOp_21AssignVariableOpconv3d_11/biasPlaceholder_21*
dtype0
s
ReadVariableOp_21ReadVariableOpconv3d_11/bias^AssignVariableOp_21*
dtype0*
_output_shapes	
:А
—
Placeholder_22Placeholder*
dtype0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
V
AssignVariableOp_22AssignVariableOpconv3d_12/kernelPlaceholder_22*
dtype0
Ж
ReadVariableOp_22ReadVariableOpconv3d_12/kernel^AssignVariableOp_22*
dtype0*,
_output_shapes
:АА
i
Placeholder_23Placeholder*
dtype0*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€
T
AssignVariableOp_23AssignVariableOpconv3d_12/biasPlaceholder_23*
dtype0
s
ReadVariableOp_23ReadVariableOpconv3d_12/bias^AssignVariableOp_23*
_output_shapes	
:А*
dtype0
—
Placeholder_24Placeholder*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0
V
AssignVariableOp_24AssignVariableOpconv3d_13/kernelPlaceholder_24*
dtype0
Ж
ReadVariableOp_24ReadVariableOpconv3d_13/kernel^AssignVariableOp_24*
dtype0*,
_output_shapes
:АА
i
Placeholder_25Placeholder*
dtype0*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€
T
AssignVariableOp_25AssignVariableOpconv3d_13/biasPlaceholder_25*
dtype0
s
ReadVariableOp_25ReadVariableOpconv3d_13/bias^AssignVariableOp_25*
dtype0*
_output_shapes	
:А
—
Placeholder_26Placeholder*
dtype0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
V
AssignVariableOp_26AssignVariableOpconv3d_14/kernelPlaceholder_26*
dtype0
Ж
ReadVariableOp_26ReadVariableOpconv3d_14/kernel^AssignVariableOp_26*,
_output_shapes
:АА*
dtype0
i
Placeholder_27Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
T
AssignVariableOp_27AssignVariableOpconv3d_14/biasPlaceholder_27*
dtype0
s
ReadVariableOp_27ReadVariableOpconv3d_14/bias^AssignVariableOp_27*
dtype0*
_output_shapes	
:А
—
Placeholder_28Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0
V
AssignVariableOp_28AssignVariableOpconv3d_15/kernelPlaceholder_28*
dtype0
Ж
ReadVariableOp_28ReadVariableOpconv3d_15/kernel^AssignVariableOp_28*,
_output_shapes
:АА*
dtype0
i
Placeholder_29Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
T
AssignVariableOp_29AssignVariableOpconv3d_15/biasPlaceholder_29*
dtype0
s
ReadVariableOp_29ReadVariableOpconv3d_15/bias^AssignVariableOp_29*
dtype0*
_output_shapes	
:А
—
Placeholder_30Placeholder*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
V
AssignVariableOp_30AssignVariableOpconv3d_16/kernelPlaceholder_30*
dtype0
Ж
ReadVariableOp_30ReadVariableOpconv3d_16/kernel^AssignVariableOp_30*,
_output_shapes
:АА*
dtype0
i
Placeholder_31Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
T
AssignVariableOp_31AssignVariableOpconv3d_16/biasPlaceholder_31*
dtype0
s
ReadVariableOp_31ReadVariableOpconv3d_16/bias^AssignVariableOp_31*
_output_shapes	
:А*
dtype0
—
Placeholder_32Placeholder*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
U
AssignVariableOp_32AssignVariableOpfeatures/kernelPlaceholder_32*
dtype0
Е
ReadVariableOp_32ReadVariableOpfeatures/kernel^AssignVariableOp_32*
dtype0*,
_output_shapes
:АА
i
Placeholder_33Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
S
AssignVariableOp_33AssignVariableOpfeatures/biasPlaceholder_33*
dtype0
r
ReadVariableOp_33ReadVariableOpfeatures/bias^AssignVariableOp_33*
dtype0*
_output_shapes	
:А
—
Placeholder_34Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Q
AssignVariableOp_34AssignVariableOpprob/kernelPlaceholder_34*
dtype0
А
ReadVariableOp_34ReadVariableOpprob/kernel^AssignVariableOp_34*
dtype0*+
_output_shapes
:А
i
Placeholder_35Placeholder*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€*
dtype0
O
AssignVariableOp_35AssignVariableOp	prob/biasPlaceholder_35*
dtype0
m
ReadVariableOp_35ReadVariableOp	prob/bias^AssignVariableOp_35*
dtype0*
_output_shapes
:
—
Placeholder_36Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Q
AssignVariableOp_36AssignVariableOpdist/kernelPlaceholder_36*
dtype0
А
ReadVariableOp_36ReadVariableOpdist/kernel^AssignVariableOp_36*+
_output_shapes
:А`*
dtype0
i
Placeholder_37Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
O
AssignVariableOp_37AssignVariableOp	dist/biasPlaceholder_37*
dtype0
m
ReadVariableOp_37ReadVariableOp	dist/bias^AssignVariableOp_37*
_output_shapes
:`*
dtype0
O
VarIsInitializedOpVarIsInitializedOpconv3d_7/bias*
_output_shapes
: 
S
VarIsInitializedOp_1VarIsInitializedOpconv3d_6/kernel*
_output_shapes
: 
S
VarIsInitializedOp_2VarIsInitializedOpconv3d_7/kernel*
_output_shapes
: 
R
VarIsInitializedOp_3VarIsInitializedOpconv3d_10/bias*
_output_shapes
: 
T
VarIsInitializedOp_4VarIsInitializedOpconv3d_11/kernel*
_output_shapes
: 
T
VarIsInitializedOp_5VarIsInitializedOpconv3d_13/kernel*
_output_shapes
: 
R
VarIsInitializedOp_6VarIsInitializedOpconv3d_14/bias*
_output_shapes
: 
Q
VarIsInitializedOp_7VarIsInitializedOpfeatures/bias*
_output_shapes
: 
O
VarIsInitializedOp_8VarIsInitializedOpdist/kernel*
_output_shapes
: 
M
VarIsInitializedOp_9VarIsInitializedOp	dist/bias*
_output_shapes
: 
R
VarIsInitializedOp_10VarIsInitializedOpconv3d_8/bias*
_output_shapes
: 
T
VarIsInitializedOp_11VarIsInitializedOpconv3d_1/kernel*
_output_shapes
: 
U
VarIsInitializedOp_12VarIsInitializedOpconv3d_10/kernel*
_output_shapes
: 
S
VarIsInitializedOp_13VarIsInitializedOpconv3d_11/bias*
_output_shapes
: 
S
VarIsInitializedOp_14VarIsInitializedOpconv3d_12/bias*
_output_shapes
: 
U
VarIsInitializedOp_15VarIsInitializedOpconv3d_14/kernel*
_output_shapes
: 
U
VarIsInitializedOp_16VarIsInitializedOpconv3d_15/kernel*
_output_shapes
: 
S
VarIsInitializedOp_17VarIsInitializedOpconv3d_16/bias*
_output_shapes
: 
N
VarIsInitializedOp_18VarIsInitializedOp	prob/bias*
_output_shapes
: 
R
VarIsInitializedOp_19VarIsInitializedOpconv3d_9/bias*
_output_shapes
: 
T
VarIsInitializedOp_20VarIsInitializedOpconv3d_9/kernel*
_output_shapes
: 
T
VarIsInitializedOp_21VarIsInitializedOpconv3d_3/kernel*
_output_shapes
: 
T
VarIsInitializedOp_22VarIsInitializedOpconv3d_4/kernel*
_output_shapes
: 
T
VarIsInitializedOp_23VarIsInitializedOpconv3d_5/kernel*
_output_shapes
: 
S
VarIsInitializedOp_24VarIsInitializedOpconv3d_13/bias*
_output_shapes
: 
S
VarIsInitializedOp_25VarIsInitializedOpconv3d_15/bias*
_output_shapes
: 
T
VarIsInitializedOp_26VarIsInitializedOpfeatures/kernel*
_output_shapes
: 
P
VarIsInitializedOp_27VarIsInitializedOpprob/kernel*
_output_shapes
: 
R
VarIsInitializedOp_28VarIsInitializedOpconv3d_6/bias*
_output_shapes
: 
R
VarIsInitializedOp_29VarIsInitializedOpconv3d_2/bias*
_output_shapes
: 
T
VarIsInitializedOp_30VarIsInitializedOpconv3d_2/kernel*
_output_shapes
: 
R
VarIsInitializedOp_31VarIsInitializedOpconv3d_1/bias*
_output_shapes
: 
R
VarIsInitializedOp_32VarIsInitializedOpconv3d_3/bias*
_output_shapes
: 
R
VarIsInitializedOp_33VarIsInitializedOpconv3d_4/bias*
_output_shapes
: 
R
VarIsInitializedOp_34VarIsInitializedOpconv3d_5/bias*
_output_shapes
: 
T
VarIsInitializedOp_35VarIsInitializedOpconv3d_8/kernel*
_output_shapes
: 
U
VarIsInitializedOp_36VarIsInitializedOpconv3d_12/kernel*
_output_shapes
: 
U
VarIsInitializedOp_37VarIsInitializedOpconv3d_16/kernel*
_output_shapes
: 
Ъ
initNoOp^conv3d_1/bias/Assign^conv3d_1/kernel/Assign^conv3d_10/bias/Assign^conv3d_10/kernel/Assign^conv3d_11/bias/Assign^conv3d_11/kernel/Assign^conv3d_12/bias/Assign^conv3d_12/kernel/Assign^conv3d_13/bias/Assign^conv3d_13/kernel/Assign^conv3d_14/bias/Assign^conv3d_14/kernel/Assign^conv3d_15/bias/Assign^conv3d_15/kernel/Assign^conv3d_16/bias/Assign^conv3d_16/kernel/Assign^conv3d_2/bias/Assign^conv3d_2/kernel/Assign^conv3d_3/bias/Assign^conv3d_3/kernel/Assign^conv3d_4/bias/Assign^conv3d_4/kernel/Assign^conv3d_5/bias/Assign^conv3d_5/kernel/Assign^conv3d_6/bias/Assign^conv3d_6/kernel/Assign^conv3d_7/bias/Assign^conv3d_7/kernel/Assign^conv3d_8/bias/Assign^conv3d_8/kernel/Assign^conv3d_9/bias/Assign^conv3d_9/kernel/Assign^dist/bias/Assign^dist/kernel/Assign^features/bias/Assign^features/kernel/Assign^prob/bias/Assign^prob/kernel/Assign
Е
conv3d_transpose_1/ConstConst*
dtype0*)
value B*  А?**
_output_shapes
:
ў
conv3d_transpose_1/kernelVarHandleOp*
dtype0*
shape:*,
_class"
 loc:@conv3d_transpose_1/kernel*
	container **
shared_nameconv3d_transpose_1/kernel*
_output_shapes
: 
Г
:conv3d_transpose_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv3d_transpose_1/kernel*
_output_shapes
: 
v
 conv3d_transpose_1/kernel/AssignAssignVariableOpconv3d_transpose_1/kernelconv3d_transpose_1/Const*
dtype0
У
-conv3d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv3d_transpose_1/kernel**
_output_shapes
:*
dtype0
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
valueB:*
_output_shapes
:*
dtype0
r
(conv3d_transpose_1/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ў
 conv3d_transpose_1/strided_sliceStridedSliceconv3d_transpose_1/Shape&conv3d_transpose_1/strided_slice/stack(conv3d_transpose_1/strided_slice/stack_1(conv3d_transpose_1/strided_slice/stack_2*
end_mask *
Index0*
_output_shapes
: *
new_axis_mask *
ellipsis_mask *
shrink_axis_mask*

begin_mask *
T0
r
(conv3d_transpose_1/strided_slice_1/stackConst*
valueB:*
_output_shapes
:*
dtype0
t
*conv3d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
t
*conv3d_transpose_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
а
"conv3d_transpose_1/strided_slice_1StridedSliceconv3d_transpose_1/Shape(conv3d_transpose_1/strided_slice_1/stack*conv3d_transpose_1/strided_slice_1/stack_1*conv3d_transpose_1/strided_slice_1/stack_2*
end_mask *
ellipsis_mask *
new_axis_mask *
_output_shapes
: *
shrink_axis_mask*
T0*
Index0*

begin_mask 
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
valueB:*
_output_shapes
:*
dtype0
а
"conv3d_transpose_1/strided_slice_2StridedSliceconv3d_transpose_1/Shape(conv3d_transpose_1/strided_slice_2/stack*conv3d_transpose_1/strided_slice_2/stack_1*conv3d_transpose_1/strided_slice_2/stack_2*
new_axis_mask *
_output_shapes
: *

begin_mask *
shrink_axis_mask*
T0*
ellipsis_mask *
end_mask *
Index0
r
(conv3d_transpose_1/strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:
t
*conv3d_transpose_1/strided_slice_3/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
t
*conv3d_transpose_1/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
а
"conv3d_transpose_1/strided_slice_3StridedSliceconv3d_transpose_1/Shape(conv3d_transpose_1/strided_slice_3/stack*conv3d_transpose_1/strided_slice_3/stack_1*conv3d_transpose_1/strided_slice_3/stack_2*
end_mask *
shrink_axis_mask*
new_axis_mask *

begin_mask *
ellipsis_mask *
T0*
_output_shapes
: *
Index0
Z
conv3d_transpose_1/mul/yConst*
value	B :*
dtype0*
_output_shapes
: 
|
conv3d_transpose_1/mulMul"conv3d_transpose_1/strided_slice_1conv3d_transpose_1/mul/y*
T0*
_output_shapes
: 
\
conv3d_transpose_1/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
А
conv3d_transpose_1/mul_1Mul"conv3d_transpose_1/strided_slice_2conv3d_transpose_1/mul_1/y*
_output_shapes
: *
T0
\
conv3d_transpose_1/mul_2/yConst*
value	B :*
_output_shapes
: *
dtype0
А
conv3d_transpose_1/mul_2Mul"conv3d_transpose_1/strided_slice_3conv3d_transpose_1/mul_2/y*
T0*
_output_shapes
: 
\
conv3d_transpose_1/stack/4Const*
value	B :*
_output_shapes
: *
dtype0
д
conv3d_transpose_1/stackPack conv3d_transpose_1/strided_sliceconv3d_transpose_1/mulconv3d_transpose_1/mul_1conv3d_transpose_1/mul_2conv3d_transpose_1/stack/4*
N*
_output_shapes
:*
T0*

axis 
r
(conv3d_transpose_1/strided_slice_4/stackConst*
valueB: *
_output_shapes
:*
dtype0
t
*conv3d_transpose_1/strided_slice_4/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
t
*conv3d_transpose_1/strided_slice_4/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
а
"conv3d_transpose_1/strided_slice_4StridedSliceconv3d_transpose_1/stack(conv3d_transpose_1/strided_slice_4/stack*conv3d_transpose_1/strided_slice_4/stack_1*conv3d_transpose_1/strided_slice_4/stack_2*
new_axis_mask *
T0*
Index0*

begin_mask *
ellipsis_mask *
_output_shapes
: *
end_mask *
shrink_axis_mask
Ш
2conv3d_transpose_1/conv3d_transpose/ReadVariableOpReadVariableOpconv3d_transpose_1/kernel**
_output_shapes
:*
dtype0
Ў
#conv3d_transpose_1/conv3d_transposeConv3DBackpropInputV2conv3d_transpose_1/stack2conv3d_transpose_1/conv3d_transpose/ReadVariableOpprob/Sigmoid*
	dilations	
*
Tshape0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
strides	
*
paddingSAME*
data_formatNDHWC*
T0
]
up_sampling3d_1/ShapeShapedist/add*
T0*
_output_shapes
:*
out_type0
`
up_sampling3d_1/ExpandDims/dimConst*
_output_shapes
: *
value	B :*
dtype0
ї
up_sampling3d_1/ExpandDims
ExpandDimsdist/addup_sampling3d_1/ExpandDims/dim*
T0*

Tdim0*R
_output_shapes@
>:<€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€`

up_sampling3d_1/Tile/multiplesConst*
dtype0*
_output_shapes
:*-
value$B""                  
«
up_sampling3d_1/TileTileup_sampling3d_1/ExpandDimsup_sampling3d_1/Tile/multiples*

Tmultiples0*
T0*R
_output_shapes@
>:<€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€`
r
up_sampling3d_1/ConstConst*)
value B"               *
dtype0*
_output_shapes
:
m
up_sampling3d_1/mulMulup_sampling3d_1/Shapeup_sampling3d_1/Const*
_output_shapes
:*
T0
і
up_sampling3d_1/ReshapeReshapeup_sampling3d_1/Tileup_sampling3d_1/mul*
Tshape0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€`*
T0
n
up_sampling3d_1/Shape_1Shapeup_sampling3d_1/Reshape*
out_type0*
T0*
_output_shapes
:
b
 up_sampling3d_1/ExpandDims_1/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ќ
up_sampling3d_1/ExpandDims_1
ExpandDimsup_sampling3d_1/Reshape up_sampling3d_1/ExpandDims_1/dim*
T0*R
_output_shapes@
>:<€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€`*

Tdim0
Б
 up_sampling3d_1/Tile_1/multiplesConst*-
value$B""                  *
dtype0*
_output_shapes
:
Ќ
up_sampling3d_1/Tile_1Tileup_sampling3d_1/ExpandDims_1 up_sampling3d_1/Tile_1/multiples*

Tmultiples0*R
_output_shapes@
>:<€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€`*
T0
t
up_sampling3d_1/Const_1Const*)
value B"               *
_output_shapes
:*
dtype0
s
up_sampling3d_1/mul_1Mulup_sampling3d_1/Shape_1up_sampling3d_1/Const_1*
T0*
_output_shapes
:
Ї
up_sampling3d_1/Reshape_1Reshapeup_sampling3d_1/Tile_1up_sampling3d_1/mul_1*
T0*
Tshape0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€`
p
up_sampling3d_1/Shape_2Shapeup_sampling3d_1/Reshape_1*
T0*
_output_shapes
:*
out_type0
b
 up_sampling3d_1/ExpandDims_2/dimConst*
dtype0*
value	B :*
_output_shapes
: 
–
up_sampling3d_1/ExpandDims_2
ExpandDimsup_sampling3d_1/Reshape_1 up_sampling3d_1/ExpandDims_2/dim*

Tdim0*
T0*R
_output_shapes@
>:<€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€`
Б
 up_sampling3d_1/Tile_2/multiplesConst*
dtype0*-
value$B""                  *
_output_shapes
:
Ќ
up_sampling3d_1/Tile_2Tileup_sampling3d_1/ExpandDims_2 up_sampling3d_1/Tile_2/multiples*
T0*R
_output_shapes@
>:<€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€`*

Tmultiples0
t
up_sampling3d_1/Const_2Const*
dtype0*)
value B"               *
_output_shapes
:
s
up_sampling3d_1/mul_2Mulup_sampling3d_1/Shape_2up_sampling3d_1/Const_2*
T0*
_output_shapes
:
Ї
up_sampling3d_1/Reshape_2Reshapeup_sampling3d_1/Tile_2up_sampling3d_1/mul_2*
T0*
Tshape0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€`
[
concatenate_1/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
й
concatenate_1/concatConcatV2#conv3d_transpose_1/conv3d_transposeup_sampling3d_1/Reshape_2concatenate_1/concat/axis*

Tidx0*
N*
T0*N
_output_shapes<
::8€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€a
^
VarIsInitializedOp_38VarIsInitializedOpconv3d_transpose_1/kernel*
_output_shapes
: 
1
init_1NoOp!^conv3d_transpose_1/kernel/Assign
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
shape: *
dtype0
Д
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_88eb537d497f4a488a94bde445714181/part*
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
value	B : *
_output_shapes
: *
dtype0
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
к
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*О
valueДBБ'Bconv3d_1/biasBconv3d_1/kernelBconv3d_10/biasBconv3d_10/kernelBconv3d_11/biasBconv3d_11/kernelBconv3d_12/biasBconv3d_12/kernelBconv3d_13/biasBconv3d_13/kernelBconv3d_14/biasBconv3d_14/kernelBconv3d_15/biasBconv3d_15/kernelBconv3d_16/biasBconv3d_16/kernelBconv3d_2/biasBconv3d_2/kernelBconv3d_3/biasBconv3d_3/kernelBconv3d_4/biasBconv3d_4/kernelBconv3d_5/biasBconv3d_5/kernelBconv3d_6/biasBconv3d_6/kernelBconv3d_7/biasBconv3d_7/kernelBconv3d_8/biasBconv3d_8/kernelBconv3d_9/biasBconv3d_9/kernelBconv3d_transpose_1/kernelB	dist/biasBdist/kernelBfeatures/biasBfeatures/kernelB	prob/biasBprob/kernel*
_output_shapes
:'
ј
save/SaveV2/shape_and_slicesConst"/device:CPU:0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:'*
dtype0
Ѓ
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!conv3d_1/bias/Read/ReadVariableOp#conv3d_1/kernel/Read/ReadVariableOp"conv3d_10/bias/Read/ReadVariableOp$conv3d_10/kernel/Read/ReadVariableOp"conv3d_11/bias/Read/ReadVariableOp$conv3d_11/kernel/Read/ReadVariableOp"conv3d_12/bias/Read/ReadVariableOp$conv3d_12/kernel/Read/ReadVariableOp"conv3d_13/bias/Read/ReadVariableOp$conv3d_13/kernel/Read/ReadVariableOp"conv3d_14/bias/Read/ReadVariableOp$conv3d_14/kernel/Read/ReadVariableOp"conv3d_15/bias/Read/ReadVariableOp$conv3d_15/kernel/Read/ReadVariableOp"conv3d_16/bias/Read/ReadVariableOp$conv3d_16/kernel/Read/ReadVariableOp!conv3d_2/bias/Read/ReadVariableOp#conv3d_2/kernel/Read/ReadVariableOp!conv3d_3/bias/Read/ReadVariableOp#conv3d_3/kernel/Read/ReadVariableOp!conv3d_4/bias/Read/ReadVariableOp#conv3d_4/kernel/Read/ReadVariableOp!conv3d_5/bias/Read/ReadVariableOp#conv3d_5/kernel/Read/ReadVariableOp!conv3d_6/bias/Read/ReadVariableOp#conv3d_6/kernel/Read/ReadVariableOp!conv3d_7/bias/Read/ReadVariableOp#conv3d_7/kernel/Read/ReadVariableOp!conv3d_8/bias/Read/ReadVariableOp#conv3d_8/kernel/Read/ReadVariableOp!conv3d_9/bias/Read/ReadVariableOp#conv3d_9/kernel/Read/ReadVariableOp-conv3d_transpose_1/kernel/Read/ReadVariableOpdist/bias/Read/ReadVariableOpdist/kernel/Read/ReadVariableOp!features/bias/Read/ReadVariableOp#features/kernel/Read/ReadVariableOpprob/bias/Read/ReadVariableOpprob/kernel/Read/ReadVariableOp"/device:CPU:0*5
dtypes+
)2'
†
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
ђ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
_output_shapes
:*
N*

axis *
T0
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
н
save/RestoreV2/tensor_namesConst"/device:CPU:0*О
valueДBБ'Bconv3d_1/biasBconv3d_1/kernelBconv3d_10/biasBconv3d_10/kernelBconv3d_11/biasBconv3d_11/kernelBconv3d_12/biasBconv3d_12/kernelBconv3d_13/biasBconv3d_13/kernelBconv3d_14/biasBconv3d_14/kernelBconv3d_15/biasBconv3d_15/kernelBconv3d_16/biasBconv3d_16/kernelBconv3d_2/biasBconv3d_2/kernelBconv3d_3/biasBconv3d_3/kernelBconv3d_4/biasBconv3d_4/kernelBconv3d_5/biasBconv3d_5/kernelBconv3d_6/biasBconv3d_6/kernelBconv3d_7/biasBconv3d_7/kernelBconv3d_8/biasBconv3d_8/kernelBconv3d_9/biasBconv3d_9/kernelBconv3d_transpose_1/kernelB	dist/biasBdist/kernelBfeatures/biasBfeatures/kernelB	prob/biasBprob/kernel*
_output_shapes
:'*
dtype0
√
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:'*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
а
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*5
dtypes+
)2'*≤
_output_shapesЯ
Ь:::::::::::::::::::::::::::::::::::::::
N
save/Identity_1Identitysave/RestoreV2*
_output_shapes
:*
T0
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
save/Identity_6Identitysave/RestoreV2:5*
_output_shapes
:*
T0
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
save/Identity_8Identitysave/RestoreV2:7*
_output_shapes
:*
T0
[
save/AssignVariableOp_7AssignVariableOpconv3d_12/kernelsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
_output_shapes
:*
T0
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
save/Identity_11Identitysave/RestoreV2:10*
_output_shapes
:*
T0
[
save/AssignVariableOp_10AssignVariableOpconv3d_14/biassave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
_output_shapes
:*
T0
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
save/Identity_14Identitysave/RestoreV2:13*
_output_shapes
:*
T0
]
save/AssignVariableOp_13AssignVariableOpconv3d_15/kernelsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
[
save/AssignVariableOp_14AssignVariableOpconv3d_16/biassave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
_output_shapes
:*
T0
]
save/AssignVariableOp_15AssignVariableOpconv3d_16/kernelsave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
_output_shapes
:*
T0
Z
save/AssignVariableOp_16AssignVariableOpconv3d_2/biassave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
\
save/AssignVariableOp_17AssignVariableOpconv3d_2/kernelsave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
Z
save/AssignVariableOp_18AssignVariableOpconv3d_3/biassave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
\
save/AssignVariableOp_19AssignVariableOpconv3d_3/kernelsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
Z
save/AssignVariableOp_20AssignVariableOpconv3d_4/biassave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
_output_shapes
:*
T0
\
save/AssignVariableOp_21AssignVariableOpconv3d_4/kernelsave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
_output_shapes
:*
T0
Z
save/AssignVariableOp_22AssignVariableOpconv3d_5/biassave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
\
save/AssignVariableOp_23AssignVariableOpconv3d_5/kernelsave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
Z
save/AssignVariableOp_24AssignVariableOpconv3d_6/biassave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
\
save/AssignVariableOp_25AssignVariableOpconv3d_6/kernelsave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
_output_shapes
:*
T0
Z
save/AssignVariableOp_26AssignVariableOpconv3d_7/biassave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
_output_shapes
:*
T0
\
save/AssignVariableOp_27AssignVariableOpconv3d_7/kernelsave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
Z
save/AssignVariableOp_28AssignVariableOpconv3d_8/biassave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
_output_shapes
:*
T0
\
save/AssignVariableOp_29AssignVariableOpconv3d_8/kernelsave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
Z
save/AssignVariableOp_30AssignVariableOpconv3d_9/biassave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
\
save/AssignVariableOp_31AssignVariableOpconv3d_9/kernelsave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
f
save/AssignVariableOp_32AssignVariableOpconv3d_transpose_1/kernelsave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
_output_shapes
:*
T0
V
save/AssignVariableOp_33AssignVariableOp	dist/biassave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
X
save/AssignVariableOp_34AssignVariableOpdist/kernelsave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
_output_shapes
:*
T0
Z
save/AssignVariableOp_35AssignVariableOpfeatures/biassave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
\
save/AssignVariableOp_36AssignVariableOpfeatures/kernelsave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:
V
save/AssignVariableOp_37AssignVariableOp	prob/biassave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
X
save/AssignVariableOp_38AssignVariableOpprob/kernelsave/Identity_39*
dtype0
Ђ
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard"Ж<
save/Const:0save/Identity:0save/restore_all (5 @F8"±!
	variables£!†!
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
w
conv3d_16/kernel:0conv3d_16/kernel/Assign&conv3d_16/kernel/Read/ReadVariableOp:0(2conv3d_16/truncated_normal:08
f
conv3d_16/bias:0conv3d_16/bias/Assign$conv3d_16/bias/Read/ReadVariableOp:0(2conv3d_16/Const:08
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
Р
conv3d_transpose_1/kernel:0 conv3d_transpose_1/kernel/Assign/conv3d_transpose_1/kernel/Read/ReadVariableOp:0(2conv3d_transpose_1/Const:08"ї!
trainable_variables£!†!
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
w
conv3d_16/kernel:0conv3d_16/kernel/Assign&conv3d_16/kernel/Read/ReadVariableOp:0(2conv3d_16/truncated_normal:08
f
conv3d_16/bias:0conv3d_16/bias/Assign$conv3d_16/bias/Read/ReadVariableOp:0(2conv3d_16/Const:08
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
Р
conv3d_transpose_1/kernel:0 conv3d_transpose_1/kernel/Assign/conv3d_transpose_1/kernel/Read/ReadVariableOp:0(2conv3d_transpose_1/Const:08*а
serving_defaultћ
N
inputE
input:08€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€^
outputT
concatenate_1/concat:08€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€atensorflow/serving/predict