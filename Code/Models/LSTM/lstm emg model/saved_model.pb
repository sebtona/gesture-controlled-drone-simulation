ú2
ÔŁ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ł
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint˙˙˙˙˙˙˙˙˙
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-15-g6290819256d8Ä¤0

Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/lstm/lstm_cell/bias/v

.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:*
dtype0
Ş
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
Ł
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v* 
_output_shapes
:
*
dtype0

Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0*-
shared_nameAdam/lstm/lstm_cell/kernel/v

0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes
:	0*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
*
dtype0

Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/lstm/lstm_cell/bias/m

.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:*
dtype0
Ş
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
Ł
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m* 
_output_shapes
:
*
dtype0

Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0*-
shared_nameAdam/lstm/lstm_cell/kernel/m

0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes
:	0*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:*
dtype0

lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*0
shared_name!lstm/lstm_cell/recurrent_kernel

3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
*
dtype0

lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0*&
shared_namelstm/lstm_cell/kernel

)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	0*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
*
dtype0
s
serving_default_lstm_inputPlaceholder*"
_output_shapes
:0*
dtype0*
shape:0

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_inputlstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_7050

NoOpNoOp
R
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ŐQ
valueËQBČQ BÁQ

layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Á
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
Ľ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator* 
Ś
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias*
Ś
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias*
Ś
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias*
Ś
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias*
R
@0
A1
B2
&3
'4
.5
/6
67
78
>9
?10*
R
@0
A1
B2
&3
'4
.5
/6
67
78
>9
?10*
* 
°
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
* 
 
Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_rate&mŁ'm¤.mĽ/mŚ6m§7m¨>mŠ?mŞ@mŤAmŹBm­&vŽ'vŻ.v°/vą6v˛7vł>v´?vľ@vśAvˇBv¸*

Userving_default* 

@0
A1
B2*

@0
A1
B2*
	
V0* 


Wstates
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
]trace_0
^trace_1
_trace_2
`trace_3* 
6
atrace_0
btrace_1
ctrace_2
dtrace_3* 
* 
ă
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
k_random_generator
l
state_size

@kernel
Arecurrent_kernel
Bbias*
* 
* 
* 
* 

mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

rtrace_0
strace_1* 

ttrace_0
utrace_1* 
* 

&0
'1*

&0
'1*
* 

vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

{trace_0* 

|trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

.0
/1*

.0
/1*
* 

}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

60
71*

60
71*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

>0
?1*

>0
?1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUElstm/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

trace_0* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

@0
A1
B2*

@0
A1
B2*
	
V0* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
	variables
	keras_api

total

count*
M
	variables
	keras_api

 total

Ącount
˘
_fn_kwargs*
* 
* 
* 
* 
	
V0* 
* 

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

 0
Ą1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Î
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_10088
	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biaslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_10224Ăâ.
Ř;
ž
__inference_standard_lstm_5018

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	0:
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4932*
condR
while_cond_4931*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	0:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	0:
:*=
api_implements+)lstm_c3c6f8a6-6dd5-4906-8dad-d95458be4d5b*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
ˇ
while_cond_8587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_8587___redundant_placeholder02
.while_while_cond_8587___redundant_placeholder12
.while_while_cond_8587___redundant_placeholder22
.while_while_cond_8587___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ŕK
đ
%__forward_gpu_lstm_with_fallback_6184

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0ś
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_0f2d1ea5-6c27-4db3-b6c1-375cb6532708*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_6011_6185*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
˘ 
ó
>__inference_lstm_layer_call_and_return_conditional_losses_6191

inputs/
read_readvariableop_resource:	02
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOp˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpZ
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    d
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes
:	S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    j
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	0v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	::	:	: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_5914
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	Ć
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:0: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:J F
"
_output_shapes
:0
 
_user_specified_nameinputs
ő	
ź
__inference_loss_fn_0_9939S
@lstm_lstm_cell_kernel_regularizer_l2loss_readvariableop_resource:	0
identity˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpš
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp@lstm_lstm_cell_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentity)lstm/lstm_cell/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp
âB
Ę
'__inference_gpu_lstm_with_fallback_5114

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:Ö
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	0:
:*=
api_implements+)lstm_c3c6f8a6-6dd5-4906-8dad-d95458be4d5b*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
9
ž
__inference_standard_lstm_5914

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŕ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:0*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	V
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	\
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	K
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes
:	Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitL
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	N
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	K
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	F
TanhTanhsplit:output:2*
T0*
_output_shapes
:	M
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	L
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	N
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	C
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	Q
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*T
_output_shapesB
@: : : : :	:	: : :	0:
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_5828*
condR
while_cond_5827*S
output_shapesB
@: : : : :	:	: : :	0:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Î
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	U

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	P

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_0f2d1ea5-6c27-4db3-b6c1-375cb6532708*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ç
ˇ
while_cond_7639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_7639___redundant_placeholder02
.while_while_cond_7639___redundant_placeholder12
.while_while_cond_7639___redundant_placeholder22
.while_while_cond_7639___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0: : : : :	:	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:


&__inference_dense_1_layer_call_fn_9879

inputs
unknown:	
	unknown_0:
identity˘StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6234f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	: : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	
 
_user_specified_nameinputs
ŕK
đ
%__forward_gpu_lstm_with_fallback_9379

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0ś
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_24952a46-753d-41ac-8e95-eab9c44e75f6*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_9206_9380*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ě
ą
#__inference_lstm_layer_call_fn_8072

inputs
unknown:	0
	unknown_0:

	unknown_1:	
identity˘StatefulPartitionedCallŘ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6191g
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:0
 
_user_specified_nameinputs
Šž
ň
7__inference___backward_gpu_lstm_with_fallback_7823_7997
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	\
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	X
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: r
!gradients/ExpandDims_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*
_output_shapes
:	q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:˝
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*
_output_shapes
:	w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*#
_output_shapes
:*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ş
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_26gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*H
_output_shapes6
4:0:::
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:0p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˝
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Á
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:`ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	0ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:0l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	n

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	0i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ě
_input_shapesÚ
×:	::	:	: ::0:::::::: ::::::::: : : : *=
api_implements+)lstm_e7a2dd03-f4f6-4e09-b244-52f57c147dd2*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_7996*
go_backwards( *

time_major( :% !

_output_shapes
:	:)%
#
_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::($
"
_output_shapes
:0:)%
#
_output_shapes
::)%
#
_output_shapes
::"	

_output_shapes

::)
%
#
_output_shapes
::)%
#
_output_shapes
::)%
#
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ç	
ň
A__inference_dense_3_layer_call_and_return_conditional_losses_6268

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:M
SoftmaxSoftmaxBiasAdd:output:0*
T0*
_output_shapes

:W
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:@
 
_user_specified_nameinputs
˘ 
ó
>__inference_lstm_layer_call_and_return_conditional_losses_9386

inputs/
read_readvariableop_resource:	02
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOp˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpZ
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    d
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes
:	S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    j
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	0v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	::	:	: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_9109
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	Ć
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:0: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:J F
"
_output_shapes
:0
 
_user_specified_nameinputs
9
ž
__inference_standard_lstm_4556

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŕ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:0*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	V
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	\
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	K
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes
:	Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitL
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	N
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	K
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	F
TanhTanhsplit:output:2*
T0*
_output_shapes
:	M
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	L
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	N
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	C
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	Q
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*T
_output_shapesB
@: : : : :	:	: : :	0:
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_4470*
condR
while_cond_4469*S
output_shapesB
@: : : : :	:	: : :	0:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Î
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	U

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	P

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_f6cb641e-c9cb-47e3-9b79-0329a0eda424*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
A
Ę
'__inference_gpu_lstm_with_fallback_4652

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:˛
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_f6cb641e-c9cb-47e3-9b79-0329a0eda424*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Šž
ň
7__inference___backward_gpu_lstm_with_fallback_9639_9813
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	\
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	X
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: r
!gradients/ExpandDims_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*
_output_shapes
:	q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:˝
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*
_output_shapes
:	w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*#
_output_shapes
:*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ş
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_26gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*H
_output_shapes6
4:0:::
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:0p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˝
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Á
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:`ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	0ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:0l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	n

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	0i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ě
_input_shapesÚ
×:	::	:	: ::0:::::::: ::::::::: : : : *=
api_implements+)lstm_ed46ced5-79bb-4483-91ac-e28acd8d996c*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_9812*
go_backwards( *

time_major( :% !

_output_shapes
:	:)%
#
_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::($
"
_output_shapes
:0:)%
#
_output_shapes
::)%
#
_output_shapes
::"	

_output_shapes

::)
%
#
_output_shapes
::)%
#
_output_shapes
::)%
#
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
É
_
&__inference_dropout_layer_call_fn_9833

inputs
identity˘StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_6364g
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	
 
_user_specified_nameinputs
Šž
ň
7__inference___backward_gpu_lstm_with_fallback_9206_9380
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	\
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	X
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: r
!gradients/ExpandDims_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*
_output_shapes
:	q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:˝
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*
_output_shapes
:	w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*#
_output_shapes
:*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ş
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_26gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*H
_output_shapes6
4:0:::
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:0p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˝
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Á
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:`ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	0ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:0l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	n

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	0i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ě
_input_shapesÚ
×:	::	:	: ::0:::::::: ::::::::: : : : *=
api_implements+)lstm_24952a46-753d-41ac-8e95-eab9c44e75f6*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_9379*
go_backwards( *

time_major( :% !

_output_shapes
:	:)%
#
_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::($
"
_output_shapes
:0:)%
#
_output_shapes
::)%
#
_output_shapes
::"	

_output_shapes

::)
%
#
_output_shapes
::)%
#
_output_shapes
::)%
#
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
9
ž
__inference_standard_lstm_9542

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŕ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:0*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	V
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	\
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	K
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes
:	Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitL
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	N
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	K
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	F
TanhTanhsplit:output:2*
T0*
_output_shapes
:	M
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	L
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	N
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	C
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	Q
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*T
_output_shapesB
@: : : : :	:	: : :	0:
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_9456*
condR
while_cond_9455*S
output_shapesB
@: : : : :	:	: : :	0:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Î
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	U

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	P

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_ed46ced5-79bb-4483-91ac-e28acd8d996c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
#

D__inference_sequential_layer_call_and_return_conditional_losses_6279

inputs
	lstm_6192:	0
	lstm_6194:

	lstm_6196:	

dense_6218:


dense_6220:	
dense_1_6235:	
dense_1_6237:
dense_2_6252:@
dense_2_6254:@
dense_3_6269:@
dense_3_6271:
identity˘dense/StatefulPartitionedCall˘dense_1/StatefulPartitionedCall˘dense_2/StatefulPartitionedCall˘dense_3/StatefulPartitionedCall˘lstm/StatefulPartitionedCall˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpß
lstm/StatefulPartitionedCallStatefulPartitionedCallinputs	lstm_6192	lstm_6194	lstm_6196*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6191Ë
dropout/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_6204đ
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0
dense_6218
dense_6220*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6217ý
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6235dense_1_6237*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6234˙
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6252dense_2_6254*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6251˙
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_6269dense_3_6271*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_6268
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp	lstm_6192*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: n
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:Ľ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^lstm/StatefulPartitionedCall8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:0: : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:J F
"
_output_shapes
:0
 
_user_specified_nameinputs
9
ž
__inference_standard_lstm_7726

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŕ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:0*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	V
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	\
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	K
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes
:	Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitL
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	N
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	K
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	F
TanhTanhsplit:output:2*
T0*
_output_shapes
:	M
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	L
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	N
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	C
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	Q
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*T
_output_shapesB
@: : : : :	:	: : :	0:
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7640*
condR
while_cond_7639*S
output_shapesB
@: : : : :	:	: : :	0:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Î
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	U

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	P

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_e7a2dd03-f4f6-4e09-b244-52f57c147dd2*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
(
Í
while_body_7178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:0*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	z
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	n
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes
:	g
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes
:	W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¨
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitX
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	Z
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	d
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	R

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	_
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	^
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	Z
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	O
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	c
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ŕ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	W
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :	:	: : :	0:
:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	0:&	"
 
_output_shapes
:
:!


_output_shapes	
:
Ş


)__inference_sequential_layer_call_fn_7108

inputs
unknown:	0
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:	
	unknown_4:	
	unknown_5:
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:
identity˘StatefulPartitionedCallĹ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_6887f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:0: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:0
 
_user_specified_nameinputs
ç	
ň
A__inference_dense_3_layer_call_and_return_conditional_losses_9930

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:M
SoftmaxSoftmaxBiasAdd:output:0*
T0*
_output_shapes

:W
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:@
 
_user_specified_nameinputs
âB
Ę
'__inference_gpu_lstm_with_fallback_8770

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:Ö
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	0:
:*=
api_implements+)lstm_e9032891-a19c-4f53-bd9a-abd99c28f7d7*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
âH
đ	
__inference__wrapped_model_4858

lstm_input?
,sequential_lstm_read_readvariableop_resource:	0B
.sequential_lstm_read_1_readvariableop_resource:
=
.sequential_lstm_read_2_readvariableop_resource:	C
/sequential_dense_matmul_readvariableop_resource:
?
0sequential_dense_biasadd_readvariableop_resource:	D
1sequential_dense_1_matmul_readvariableop_resource:	@
2sequential_dense_1_biasadd_readvariableop_resource:C
1sequential_dense_2_matmul_readvariableop_resource:@@
2sequential_dense_2_biasadd_readvariableop_resource:@C
1sequential_dense_3_matmul_readvariableop_resource:@@
2sequential_dense_3_biasadd_readvariableop_resource:
identity˘'sequential/dense/BiasAdd/ReadVariableOp˘&sequential/dense/MatMul/ReadVariableOp˘)sequential/dense_1/BiasAdd/ReadVariableOp˘(sequential/dense_1/MatMul/ReadVariableOp˘)sequential/dense_2/BiasAdd/ReadVariableOp˘(sequential/dense_2/MatMul/ReadVariableOp˘)sequential/dense_3/BiasAdd/ReadVariableOp˘(sequential/dense_3/MatMul/ReadVariableOp˘#sequential/lstm/Read/ReadVariableOp˘%sequential/lstm/Read_1/ReadVariableOp˘%sequential/lstm/Read_2/ReadVariableOpj
sequential/lstm/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   m
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ą
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ł
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*
_output_shapes
:	c
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*
_output_shapes
:	
#sequential/lstm/Read/ReadVariableOpReadVariableOp,sequential_lstm_read_readvariableop_resource*
_output_shapes
:	0*
dtype0{
sequential/lstm/IdentityIdentity+sequential/lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	0
%sequential/lstm/Read_1/ReadVariableOpReadVariableOp.sequential_lstm_read_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
sequential/lstm/Identity_1Identity-sequential/lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:

%sequential/lstm/Read_2/ReadVariableOpReadVariableOp.sequential_lstm_read_2_readvariableop_resource*
_output_shapes	
:*
dtype0{
sequential/lstm/Identity_2Identity-sequential/lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ô
sequential/lstm/PartitionedCallPartitionedCall
lstm_inputsequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0!sequential/lstm/Identity:output:0#sequential/lstm/Identity_1:output:0#sequential/lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	::	:	: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_4556{
sequential/dropout/IdentityIdentity(sequential/lstm/PartitionedCall:output:0*
T0*
_output_shapes
:	
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
sequential/dense/MatMulMatMul$sequential/dropout/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ą
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	j
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*
_output_shapes
:	
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ł
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ś
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:s
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*
_output_shapes

:
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0¤
sequential/dense_2/MatMulMatMul$sequential/dense_1/Softmax:softmax:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ś
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@m
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*
_output_shapes

:@
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Ľ
sequential/dense_3/MatMulMatMul%sequential/dense_2/Relu:activations:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ś
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:s
sequential/dense_3/SoftmaxSoftmax#sequential/dense_3/BiasAdd:output:0*
T0*
_output_shapes

:j
IdentityIdentity$sequential/dense_3/Softmax:softmax:0^NoOp*
T0*
_output_shapes

:
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp$^sequential/lstm/Read/ReadVariableOp&^sequential/lstm/Read_1/ReadVariableOp&^sequential/lstm/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:0: : : : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp2J
#sequential/lstm/Read/ReadVariableOp#sequential/lstm/Read/ReadVariableOp2N
%sequential/lstm/Read_1/ReadVariableOp%sequential/lstm/Read_1/ReadVariableOp2N
%sequential/lstm/Read_2/ReadVariableOp%sequential/lstm/Read_2/ReadVariableOp:N J
"
_output_shapes
:0
$
_user_specified_name
lstm_input
ë	
ó
A__inference_dense_1_layer_call_and_return_conditional_losses_9890

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:M
SoftmaxSoftmaxBiasAdd:output:0*
T0*
_output_shapes

:W
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs
éÂ
á
7__inference___backward_gpu_lstm_with_fallback_5561_5737
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ť
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ľ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Š
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ć
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ł
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ž
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ů
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ć
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Ę
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:`ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	0ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	0i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_4ac8b558-b078-428a-96a7-95fa5caf6adc*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_5736*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:	

_output_shapes
:::
6
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:"

_output_shapes

:: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ř;
ž
__inference_standard_lstm_8239

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	0:
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_8153*
condR
while_cond_8152*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	0:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	0:
:*=
api_implements+)lstm_b272049d-5f6a-416e-993b-1fbfffaf12f6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ŕK
đ
%__forward_gpu_lstm_with_fallback_9812

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0ś
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_ed46ced5-79bb-4483-91ac-e28acd8d996c*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_9639_9813*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Šž
ň
7__inference___backward_gpu_lstm_with_fallback_6011_6185
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	\
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	X
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: r
!gradients/ExpandDims_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*
_output_shapes
:	q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:˝
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*
_output_shapes
:	w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*#
_output_shapes
:*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ş
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_26gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*H
_output_shapes6
4:0:::
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:0p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˝
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Á
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:`ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	0ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:0l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	n

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	0i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ě
_input_shapesÚ
×:	::	:	: ::0:::::::: ::::::::: : : : *=
api_implements+)lstm_0f2d1ea5-6c27-4db3-b6c1-375cb6532708*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_6184*
go_backwards( *

time_major( :% !

_output_shapes
:	:)%
#
_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::($
"
_output_shapes
:0:)%
#
_output_shapes
::)%
#
_output_shapes
::"	

_output_shapes

::)
%
#
_output_shapes
::)%
#
_output_shapes
::)%
#
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 


&__inference_dense_2_layer_call_fn_9899

inputs
unknown:@
	unknown_0:@
identity˘StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6251f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs
Ř;
ž
__inference_standard_lstm_8674

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	0:
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_8588*
condR
while_cond_8587*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	0:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	0:
:*=
api_implements+)lstm_e9032891-a19c-4f53-bd9a-abd99c28f7d7*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
(
Í
while_body_9456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:0*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	z
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	n
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes
:	g
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes
:	W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¨
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitX
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	Z
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	d
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	R

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	_
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	^
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	Z
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	O
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	c
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ŕ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	W
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :	:	: : :	0:
:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	0:&	"
 
_output_shapes
:
:!


_output_shapes	
:
ě)
Í
while_body_4932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ŕ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	0:
:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	0:&	"
 
_output_shapes
:
:!


_output_shapes	
:
â	
ň
A__inference_dense_2_layer_call_and_return_conditional_losses_6251

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@G
ReluReluBiasAdd:output:0*
T0*
_output_shapes

:@X
IdentityIdentityRelu:activations:0^NoOp*
T0*
_output_shapes

:@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
ç
ˇ
while_cond_6449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_6449___redundant_placeholder02
.while_while_cond_6449___redundant_placeholder12
.while_while_cond_6449___redundant_placeholder22
.while_while_cond_6449___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0: : : : :	:	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ś$
Ť
D__inference_sequential_layer_call_and_return_conditional_losses_6887

inputs
	lstm_6854:	0
	lstm_6856:

	lstm_6858:	

dense_6862:


dense_6864:	
dense_1_6867:	
dense_1_6869:
dense_2_6872:@
dense_2_6874:@
dense_3_6877:@
dense_3_6879:
identity˘dense/StatefulPartitionedCall˘dense_1/StatefulPartitionedCall˘dense_2/StatefulPartitionedCall˘dense_3/StatefulPartitionedCall˘dropout/StatefulPartitionedCall˘lstm/StatefulPartitionedCall˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpß
lstm/StatefulPartitionedCallStatefulPartitionedCallinputs	lstm_6854	lstm_6856	lstm_6858*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6813Ű
dropout/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_6364ř
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0
dense_6862
dense_6864*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6217ý
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6867dense_1_6869*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6234˙
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6872dense_2_6874*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6251˙
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_6877dense_3_6879*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_6268
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp	lstm_6854*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: n
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:Ç
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^lstm/StatefulPartitionedCall8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:0: : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:J F
"
_output_shapes
:0
 
_user_specified_nameinputs
´
_
A__inference_dropout_layer_call_and_return_conditional_losses_9838

inputs

identity_1F
IdentityIdentityinputs*
T0*
_output_shapes
:	S

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
:	"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	:G C

_output_shapes
:	
 
_user_specified_nameinputs
(
Í
while_body_9023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:0*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	z
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	n
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes
:	g
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes
:	W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¨
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitX
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	Z
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	d
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	R

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	_
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	^
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	Z
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	O
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	c
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ŕ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	W
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :	:	: : :	0:
:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	0:&	"
 
_output_shapes
:
:!


_output_shapes	
:
	
ˇ
while_cond_4931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_4931___redundant_placeholder02
.while_while_cond_4931___redundant_placeholder12
.while_while_cond_4931___redundant_placeholder22
.while_while_cond_4931___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ŕK
đ
%__forward_gpu_lstm_with_fallback_6806

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0ś
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_7eab91d7-cf1f-4a4d-a262-9a84d103c521*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_6633_6807*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias

ł
#__inference_lstm_layer_call_fn_8050
inputs_0
unknown:	0
	unknown_0:

	unknown_1:	
identity˘StatefulPartitionedCallă
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_5297p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
"
_user_specified_name
inputs_0
9
ž
__inference_standard_lstm_7264

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŕ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:0*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	V
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	\
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	K
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes
:	Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitL
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	N
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	K
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	F
TanhTanhsplit:output:2*
T0*
_output_shapes
:	M
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	L
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	N
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	C
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	Q
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*T
_output_shapesB
@: : : : :	:	: : :	0:
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_7178*
condR
while_cond_7177*S
output_shapesB
@: : : : :	:	: : :	0:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Î
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	U

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	P

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_35b1b999-7658-4e31-a920-6391107c49f9*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ě	
ó
?__inference_dense_layer_call_and_return_conditional_losses_6217

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0a
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	H
ReluReluBiasAdd:output:0*
T0*
_output_shapes
:	Y
IdentityIdentityRelu:activations:0^NoOp*
T0*
_output_shapes
:	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs
éÂ
á
7__inference___backward_gpu_lstm_with_fallback_8771_8947
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ť
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ľ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Š
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ć
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ł
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ž
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ů
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ć
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Ę
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:`ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	0ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	0i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_e9032891-a19c-4f53-bd9a-abd99c28f7d7*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_8946*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:	

_output_shapes
:::
6
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:"

_output_shapes

:: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
ˇ
while_cond_8152
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_8152___redundant_placeholder02
.while_while_cond_8152___redundant_placeholder12
.while_while_cond_8152___redundant_placeholder22
.while_while_cond_8152___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ě
ą
#__inference_lstm_layer_call_fn_8083

inputs
unknown:	0
	unknown_0:

	unknown_1:	
identity˘StatefulPartitionedCallŘ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6813g
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:0
 
_user_specified_nameinputs
˘#

D__inference_sequential_layer_call_and_return_conditional_losses_6975

lstm_input
	lstm_6942:	0
	lstm_6944:

	lstm_6946:	

dense_6950:


dense_6952:	
dense_1_6955:	
dense_1_6957:
dense_2_6960:@
dense_2_6962:@
dense_3_6965:@
dense_3_6967:
identity˘dense/StatefulPartitionedCall˘dense_1/StatefulPartitionedCall˘dense_2/StatefulPartitionedCall˘dense_3/StatefulPartitionedCall˘lstm/StatefulPartitionedCall˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpă
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_input	lstm_6942	lstm_6944	lstm_6946*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6191Ë
dropout/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_6204đ
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0
dense_6950
dense_6952*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6217ý
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6955dense_1_6957*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6234˙
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6960dense_2_6962*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6251˙
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_6965dense_3_6967*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_6268
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp	lstm_6942*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: n
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:Ľ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^lstm/StatefulPartitionedCall8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:0: : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:N J
"
_output_shapes
:0
$
_user_specified_name
lstm_input
ę	
`
A__inference_dropout_layer_call_and_return_conditional_losses_6364

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŰ6@\
dropout/MulMulinputsdropout/Const:output:0*
T0*
_output_shapes
:	^
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ff&?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*
_output_shapes
:	Y
IdentityIdentitydropout/SelectV2:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	:G C

_output_shapes
:	
 
_user_specified_nameinputs
ś


)__inference_sequential_layer_call_fn_6939

lstm_input
unknown:	0
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:	
	unknown_4:	
	unknown_5:
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:
identity˘StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_6887f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:0: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
"
_output_shapes
:0
$
_user_specified_name
lstm_input
˘ 
ó
>__inference_lstm_layer_call_and_return_conditional_losses_6813

inputs/
read_readvariableop_resource:	02
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOp˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpZ
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    d
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes
:	S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    j
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	0v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	::	:	: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_6536
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	Ć
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:0: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:J F
"
_output_shapes
:0
 
_user_specified_nameinputs
ŕK
đ
%__forward_gpu_lstm_with_fallback_7534

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0ś
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_35b1b999-7658-4e31-a920-6391107c49f9*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_7361_7535*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ě)
Í
while_body_5378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ŕ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	0:
:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	0:&	"
 
_output_shapes
:
:!


_output_shapes	
:
(
Í
while_body_4470
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:0*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	z
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	n
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes
:	g
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes
:	W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¨
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitX
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	Z
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	d
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	R

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	_
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	^
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	Z
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	O
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	c
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ŕ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	W
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :	:	: : :	0:
:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	0:&	"
 
_output_shapes
:
:!


_output_shapes	
:
ć 
ó
>__inference_lstm_layer_call_and_return_conditional_losses_5743

inputs/
read_readvariableop_resource:	02
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOp˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	0v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:´
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_5464
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ć
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs
Šž
ň
7__inference___backward_gpu_lstm_with_fallback_7361_7535
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	\
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	X
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: r
!gradients/ExpandDims_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*
_output_shapes
:	q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:˝
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*
_output_shapes
:	w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*#
_output_shapes
:*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ş
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_26gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*H
_output_shapes6
4:0:::
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:0p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˝
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Á
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:`ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	0ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:0l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	n

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	0i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ě
_input_shapesÚ
×:	::	:	: ::0:::::::: ::::::::: : : : *=
api_implements+)lstm_35b1b999-7658-4e31-a920-6391107c49f9*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_7534*
go_backwards( *

time_major( :% !

_output_shapes
:	:)%
#
_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::($
"
_output_shapes
:0:)%
#
_output_shapes
::)%
#
_output_shapes
::"	

_output_shapes

::)
%
#
_output_shapes
::)%
#
_output_shapes
::)%
#
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
A
Ę
'__inference_gpu_lstm_with_fallback_9205

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:˛
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_24952a46-753d-41ac-8e95-eab9c44e75f6*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
9
ž
__inference_standard_lstm_9109

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŕ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:0*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	V
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	\
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	K
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes
:	Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitL
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	N
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	K
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	F
TanhTanhsplit:output:2*
T0*
_output_shapes
:	M
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	L
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	N
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	C
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	Q
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*T
_output_shapesB
@: : : : :	:	: : :	0:
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_9023*
condR
while_cond_9022*S
output_shapesB
@: : : : :	:	: : :	0:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Î
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	U

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	P

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_24952a46-753d-41ac-8e95-eab9c44e75f6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias


&__inference_dense_3_layer_call_fn_9919

inputs
unknown:@
	unknown_0:
identity˘StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_6268f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:@: : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:@
 
_user_specified_nameinputs
ůI
Ů
D__inference_sequential_layer_call_and_return_conditional_losses_8039

inputs4
!lstm_read_readvariableop_resource:	07
#lstm_read_1_readvariableop_resource:
2
#lstm_read_2_readvariableop_resource:	8
$dense_matmul_readvariableop_resource:
4
%dense_biasadd_readvariableop_resource:	9
&dense_1_matmul_readvariableop_resource:	5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity˘dense/BiasAdd/ReadVariableOp˘dense/MatMul/ReadVariableOp˘dense_1/BiasAdd/ReadVariableOp˘dense_1/MatMul/ReadVariableOp˘dense_2/BiasAdd/ReadVariableOp˘dense_2/MatMul/ReadVariableOp˘dense_3/BiasAdd/ReadVariableOp˘dense_3/MatMul/ReadVariableOp˘lstm/Read/ReadVariableOp˘lstm/Read_1/ReadVariableOp˘lstm/Read_2/ReadVariableOp˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp_

lstm/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*
_output_shapes
:	X
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    y
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*
_output_shapes
:	{
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	0*
dtype0e
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	0
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource* 
_output_shapes
:
*
dtype0j
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
{
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:*
dtype0e
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Ž
lstm/PartitionedCallPartitionedCallinputslstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	::	:	: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_7726Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŰ6@
dropout/dropout/MulMullstm/PartitionedCall:output:0dropout/dropout/Const:output:0*
T0*
_output_shapes
:	f
dropout/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*
_output_shapes
:	*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ff&?ś
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ť
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*
_output_shapes
:	
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense/MatMulMatMul!dropout/dropout/SelectV2:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	T

dense/ReluReludense/BiasAdd:output:0*
T0*
_output_shapes
:	
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:]
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*
_output_shapes

:
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_2/MatMulMatMuldense_1/Softmax:softmax:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@W
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*
_output_shapes

:@
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:]
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*
_output_shapes

:
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*
_output_shapes

:Ő
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:0: : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:J F
"
_output_shapes
:0
 
_user_specified_nameinputs
ç
ˇ
while_cond_5827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_5827___redundant_placeholder02
.while_while_cond_5827___redundant_placeholder12
.while_while_cond_5827___redundant_placeholder22
.while_while_cond_5827___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0: : : : :	:	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ú´
Ţ
!__inference__traced_restore_10224
file_prefix1
assignvariableop_dense_kernel:
,
assignvariableop_1_dense_bias:	4
!assignvariableop_2_dense_1_kernel:	-
assignvariableop_3_dense_1_bias:3
!assignvariableop_4_dense_2_kernel:@-
assignvariableop_5_dense_2_bias:@3
!assignvariableop_6_dense_3_kernel:@-
assignvariableop_7_dense_3_bias:;
(assignvariableop_8_lstm_lstm_cell_kernel:	0F
2assignvariableop_9_lstm_lstm_cell_recurrent_kernel:
6
'assignvariableop_10_lstm_lstm_cell_bias:	'
assignvariableop_11_adam_iter:	 )
assignvariableop_12_adam_beta_1: )
assignvariableop_13_adam_beta_2: (
assignvariableop_14_adam_decay: 0
&assignvariableop_15_adam_learning_rate: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: #
assignvariableop_18_total: #
assignvariableop_19_count: ;
'assignvariableop_20_adam_dense_kernel_m:
4
%assignvariableop_21_adam_dense_bias_m:	<
)assignvariableop_22_adam_dense_1_kernel_m:	5
'assignvariableop_23_adam_dense_1_bias_m:;
)assignvariableop_24_adam_dense_2_kernel_m:@5
'assignvariableop_25_adam_dense_2_bias_m:@;
)assignvariableop_26_adam_dense_3_kernel_m:@5
'assignvariableop_27_adam_dense_3_bias_m:C
0assignvariableop_28_adam_lstm_lstm_cell_kernel_m:	0N
:assignvariableop_29_adam_lstm_lstm_cell_recurrent_kernel_m:
=
.assignvariableop_30_adam_lstm_lstm_cell_bias_m:	;
'assignvariableop_31_adam_dense_kernel_v:
4
%assignvariableop_32_adam_dense_bias_v:	<
)assignvariableop_33_adam_dense_1_kernel_v:	5
'assignvariableop_34_adam_dense_1_bias_v:;
)assignvariableop_35_adam_dense_2_kernel_v:@5
'assignvariableop_36_adam_dense_2_bias_v:@;
)assignvariableop_37_adam_dense_3_kernel_v:@5
'assignvariableop_38_adam_dense_3_bias_v:C
0assignvariableop_39_adam_lstm_lstm_cell_kernel_v:	0N
:assignvariableop_40_adam_lstm_lstm_cell_recurrent_kernel_v:
=
.assignvariableop_41_adam_lstm_lstm_cell_bias_v:	
identity_43˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_28˘AssignVariableOp_29˘AssignVariableOp_3˘AssignVariableOp_30˘AssignVariableOp_31˘AssignVariableOp_32˘AssignVariableOp_33˘AssignVariableOp_34˘AssignVariableOp_35˘AssignVariableOp_36˘AssignVariableOp_37˘AssignVariableOp_38˘AssignVariableOp_39˘AssignVariableOp_4˘AssignVariableOp_40˘AssignVariableOp_41˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9Â
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*č
valueŢBŰ+B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHĆ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ř
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Â
_output_shapesŻ
Ź:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_3_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_3_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_8AssignVariableOp(assignvariableop_8_lstm_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_9AssignVariableOp2assignvariableop_9_lstm_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_10AssignVariableOp'assignvariableop_10_lstm_lstm_cell_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:ś
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_iterIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_2Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_decayIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_15AssignVariableOp&assignvariableop_15_adam_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_kernel_mIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_21AssignVariableOp%assignvariableop_21_adam_dense_bias_mIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_1_kernel_mIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_1_bias_mIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_2_kernel_mIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_2_bias_mIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_3_kernel_mIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_dense_3_bias_mIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_28AssignVariableOp0assignvariableop_28_adam_lstm_lstm_cell_kernel_mIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ó
AssignVariableOp_29AssignVariableOp:assignvariableop_29_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_30AssignVariableOp.assignvariableop_30_adam_lstm_lstm_cell_bias_mIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_kernel_vIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_dense_bias_vIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_1_kernel_vIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_1_bias_vIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_2_kernel_vIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_2_bias_vIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_3_kernel_vIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_3_bias_vIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_39AssignVariableOp0assignvariableop_39_adam_lstm_lstm_cell_kernel_vIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ó
AssignVariableOp_40AssignVariableOp:assignvariableop_40_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_41AssignVariableOp.assignvariableop_41_adam_lstm_lstm_cell_bias_vIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ë
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: Ř
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


$__inference_dense_layer_call_fn_9859

inputs
unknown:

	unknown_0:	
identity˘StatefulPartitionedCallĚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6217g
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	: : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	
 
_user_specified_nameinputs
Â$
Ż
D__inference_sequential_layer_call_and_return_conditional_losses_7011

lstm_input
	lstm_6978:	0
	lstm_6980:

	lstm_6982:	

dense_6986:


dense_6988:	
dense_1_6991:	
dense_1_6993:
dense_2_6996:@
dense_2_6998:@
dense_3_7001:@
dense_3_7003:
identity˘dense/StatefulPartitionedCall˘dense_1/StatefulPartitionedCall˘dense_2/StatefulPartitionedCall˘dense_3/StatefulPartitionedCall˘dropout/StatefulPartitionedCall˘lstm/StatefulPartitionedCall˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpă
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_input	lstm_6978	lstm_6980	lstm_6982*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6813Ű
dropout/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_6364ř
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0
dense_6986
dense_6988*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_6217ý
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_6991dense_1_6993*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_6234˙
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_6996dense_2_6998*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_6251˙
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_7001dense_3_7003*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_6268
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp	lstm_6978*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: n
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:Ç
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^lstm/StatefulPartitionedCall8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:0: : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:N J
"
_output_shapes
:0
$
_user_specified_name
lstm_input
ě	
ó
?__inference_dense_layer_call_and_return_conditional_losses_9870

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0a
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	H
ReluReluBiasAdd:output:0*
T0*
_output_shapes
:	Y
IdentityIdentityRelu:activations:0^NoOp*
T0*
_output_shapes
:	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs
ŕK
đ
%__forward_gpu_lstm_with_fallback_4826

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0ś
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_f6cb641e-c9cb-47e3-9b79-0329a0eda424*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_4653_4827*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Šž
ň
7__inference___backward_gpu_lstm_with_fallback_6633_6807
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	\
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	X
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: r
!gradients/ExpandDims_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*
_output_shapes
:	q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:˝
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*
_output_shapes
:	w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*#
_output_shapes
:*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ş
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_26gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*H
_output_shapes6
4:0:::
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:0p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˝
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Á
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:`ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	0ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:0l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	n

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	0i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ě
_input_shapesÚ
×:	::	:	: ::0:::::::: ::::::::: : : : *=
api_implements+)lstm_7eab91d7-cf1f-4a4d-a262-9a84d103c521*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_6806*
go_backwards( *

time_major( :% !

_output_shapes
:	:)%
#
_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::($
"
_output_shapes
:0:)%
#
_output_shapes
::)%
#
_output_shapes
::"	

_output_shapes

::)
%
#
_output_shapes
::)%
#
_output_shapes
::)%
#
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

ł
#__inference_lstm_layer_call_fn_8061
inputs_0
unknown:	0
	unknown_0:

	unknown_1:	
identity˘StatefulPartitionedCallă
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_5743p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
"
_user_specified_name
inputs_0
ę	
`
A__inference_dropout_layer_call_and_return_conditional_losses_9850

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nŰ6@\
dropout/MulMulinputsdropout/Const:output:0*
T0*
_output_shapes
:	^
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ff&?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*
_output_shapes
:	Y
IdentityIdentitydropout/SelectV2:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	:G C

_output_shapes
:	
 
_user_specified_nameinputs
N

%__forward_gpu_lstm_with_fallback_5290

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ú
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ž
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	0:
:*=
api_implements+)lstm_c3c6f8a6-6dd5-4906-8dad-d95458be4d5b*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_5115_5291*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
¨V
Ă
__inference__traced_save_10088
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ż
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*č
valueŢBŰ+B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHĂ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ˛
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *9
dtypes/
-2+	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ń
_input_shapesż
ź: :
::	::@:@:@::	0:
:: : : : : : : : : :
::	::@:@:@::	0:
::
::	::@:@:@::	0:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%	!

_output_shapes
:	0:&
"
 
_output_shapes
:
:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	0:&"
 
_output_shapes
:
:!

_output_shapes	
::& "
 
_output_shapes
:
:!!

_output_shapes	
::%"!

_output_shapes
:	: #

_output_shapes
::$$ 

_output_shapes

:@: %

_output_shapes
:@:$& 

_output_shapes

:@: '

_output_shapes
::%(!

_output_shapes
:	0:&)"
 
_output_shapes
:
:!*

_output_shapes	
::+

_output_shapes
: 
Ş


)__inference_sequential_layer_call_fn_7081

inputs
unknown:	0
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:	
	unknown_4:	
	unknown_5:
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:
identity˘StatefulPartitionedCallĹ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_6279f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:0: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:0
 
_user_specified_nameinputs
ć 
ó
>__inference_lstm_layer_call_and_return_conditional_losses_5297

inputs/
read_readvariableop_resource:	02
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOp˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	0v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:´
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_5018
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ć
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs
ç
ˇ
while_cond_4469
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_4469___redundant_placeholder02
.while_while_cond_4469___redundant_placeholder12
.while_while_cond_4469___redundant_placeholder22
.while_while_cond_4469___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0: : : : :	:	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
âB
Ę
'__inference_gpu_lstm_with_fallback_5560

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:Ö
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	0:
:*=
api_implements+)lstm_4ac8b558-b078-428a-96a7-95fa5caf6adc*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
˘ 
ó
>__inference_lstm_layer_call_and_return_conditional_losses_9819

inputs/
read_readvariableop_resource:	02
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOp˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpZ
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    d
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*
_output_shapes
:	S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    j
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*
_output_shapes
:	q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	0v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	::	:	: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_9542
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	Ć
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:0: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:J F
"
_output_shapes
:0
 
_user_specified_nameinputs
A
Ę
'__inference_gpu_lstm_with_fallback_6010

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:˛
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_0f2d1ea5-6c27-4db3-b6c1-375cb6532708*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ë	
ó
A__inference_dense_1_layer_call_and_return_conditional_losses_6234

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:M
SoftmaxSoftmaxBiasAdd:output:0*
T0*
_output_shapes

:W
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs
ç
ˇ
while_cond_7177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_7177___redundant_placeholder02
.while_while_cond_7177___redundant_placeholder12
.while_while_cond_7177___redundant_placeholder22
.while_while_cond_7177___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0: : : : :	:	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
	
ˇ
while_cond_5377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_5377___redundant_placeholder02
.while_while_cond_5377___redundant_placeholder12
.while_while_cond_5377___redundant_placeholder22
.while_while_cond_5377___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ě)
Í
while_body_8588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ŕ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	0:
:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	0:&	"
 
_output_shapes
:
:!


_output_shapes	
:
ÍB
Ů
D__inference_sequential_layer_call_and_return_conditional_losses_7570

inputs4
!lstm_read_readvariableop_resource:	07
#lstm_read_1_readvariableop_resource:
2
#lstm_read_2_readvariableop_resource:	8
$dense_matmul_readvariableop_resource:
4
%dense_biasadd_readvariableop_resource:	9
&dense_1_matmul_readvariableop_resource:	5
'dense_1_biasadd_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity˘dense/BiasAdd/ReadVariableOp˘dense/MatMul/ReadVariableOp˘dense_1/BiasAdd/ReadVariableOp˘dense_1/MatMul/ReadVariableOp˘dense_2/BiasAdd/ReadVariableOp˘dense_2/MatMul/ReadVariableOp˘dense_3/BiasAdd/ReadVariableOp˘dense_3/MatMul/ReadVariableOp˘lstm/Read/ReadVariableOp˘lstm/Read_1/ReadVariableOp˘lstm/Read_2/ReadVariableOp˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp_

lstm/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*
_output_shapes
:	X
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    y
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*
_output_shapes
:	{
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	0*
dtype0e
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	0
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource* 
_output_shapes
:
*
dtype0j
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
{
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:*
dtype0e
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Ž
lstm/PartitionedCallPartitionedCallinputslstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *F
_output_shapes4
2:	::	:	: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_7264e
dropout/IdentityIdentitylstm/PartitionedCall:output:0*
T0*
_output_shapes
:	
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	T

dense/ReluReludense/BiasAdd:output:0*
T0*
_output_shapes
:	
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:]
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*
_output_shapes

:
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_2/MatMulMatMuldense_1/Softmax:softmax:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@W
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*
_output_shapes

:@
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:]
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*
_output_shapes

:
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*
_output_shapes

:Ő
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:0: : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:J F
"
_output_shapes
:0
 
_user_specified_nameinputs
(
Í
while_body_5828
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:0*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	z
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	n
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes
:	g
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes
:	W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¨
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitX
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	Z
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	d
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	R

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	_
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	^
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	Z
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	O
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	c
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ŕ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	W
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :	:	: : :	0:
:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	0:&	"
 
_output_shapes
:
:!


_output_shapes	
:
´
_
A__inference_dropout_layer_call_and_return_conditional_losses_6204

inputs

identity_1F
IdentityIdentityinputs*
T0*
_output_shapes
:	S

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
:	"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	:G C

_output_shapes
:	
 
_user_specified_nameinputs
éÂ
á
7__inference___backward_gpu_lstm_with_fallback_8336_8512
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ť
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ľ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Š
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ć
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ł
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ž
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ů
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ć
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Ę
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:`ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	0ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	0i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_b272049d-5f6a-416e-993b-1fbfffaf12f6*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_8511*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:	

_output_shapes
:::
6
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:"

_output_shapes

:: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ś


)__inference_sequential_layer_call_fn_6304

lstm_input
unknown:	0
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:	
	unknown_4:	
	unknown_5:
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:
identity˘StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_6279f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:0: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
"
_output_shapes
:0
$
_user_specified_name
lstm_input
Šž
ň
7__inference___backward_gpu_lstm_with_fallback_4653_4827
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5V
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
:	\
gradients/grad_ys_1Identityplaceholder_1*
T0*#
_output_shapes
:X
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes
:	X
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
:	O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: r
!gradients/ExpandDims_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˘
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*
_output_shapes
:	q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*#
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"          
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*#
_output_shapes
:˝
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*
_output_shapes
:	w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:˘
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*#
_output_shapes
:*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ş
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_26gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*H
_output_shapes6
4:0:::
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:0p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ˝
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes
:	r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Á
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes
:	^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:`ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	0ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:i
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:0l

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes
:	n

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes
:	f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	0i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*ě
_input_shapesÚ
×:	::	:	: ::0:::::::: ::::::::: : : : *=
api_implements+)lstm_f6cb641e-c9cb-47e3-9b79-0329a0eda424*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_4826*
go_backwards( *

time_major( :% !

_output_shapes
:	:)%
#
_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::($
"
_output_shapes
:0:)%
#
_output_shapes
::)%
#
_output_shapes
::"	

_output_shapes

::)
%
#
_output_shapes
::)%
#
_output_shapes
::)%
#
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
éÂ
á
7__inference___backward_gpu_lstm_with_fallback_5115_5291
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
:Ť
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ľ
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:Š
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Ć
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ł
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ž
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ů
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Ć
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:Ę
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:`j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:`k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ř
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ě
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:`đ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:`ń
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ń
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:đ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:đ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ó
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ˘
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ¨
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	0o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      Š
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¤
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:§
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ś
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:¸
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:¸
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:¸
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	0
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:š
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:š
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:š
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:

,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:š
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:Ż
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	0ś
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ę
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ň
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	0i

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: ::::::::: : : : *=
api_implements+)lstm_c3c6f8a6-6dd5-4906-8dad-d95458be4d5b*
api_preferred_deviceGPU*@
forward_function_name'%__forward_gpu_lstm_with_fallback_5290*
go_backwards( *

time_major( :. *
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:;7
5
_output_shapes#
!:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:	

_output_shapes
:::
6
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:2.
,
_output_shapes
:˙˙˙˙˙˙˙˙˙:"

_output_shapes

:: 

_output_shapes
::.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
A
Ę
'__inference_gpu_lstm_with_fallback_6632

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:˛
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_7eab91d7-cf1f-4a4d-a262-9a84d103c521*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
î 
ő
>__inference_lstm_layer_call_and_return_conditional_losses_8518
inputs_0/
read_readvariableop_resource:	02
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOp˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	0v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ś
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_8239
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ć
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
"
_user_specified_name
inputs_0



"__inference_signature_wrapper_7050

lstm_input
unknown:	0
	unknown_0:

	unknown_1:	
	unknown_2:

	unknown_3:	
	unknown_4:	
	unknown_5:
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:
identity˘StatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_4858f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:0: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
"
_output_shapes
:0
$
_user_specified_name
lstm_input
î 
ő
>__inference_lstm_layer_call_and_return_conditional_losses_8953
inputs_0/
read_readvariableop_resource:	02
read_1_readvariableop_resource:
-
read_2_readvariableop_resource:	

identity_3˘Read/ReadVariableOp˘Read_1/ReadVariableOp˘Read_2/ReadVariableOp˘7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	0v
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ś
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference_standard_lstm_8674
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	0*
dtype0
(lstm/lstm_cell/kernel/Regularizer/L2LossL2Loss?lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'lstm/lstm_cell/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *ˇQ9˛
%lstm/lstm_cell/kernel/Regularizer/mulMul0lstm/lstm_cell/kernel/Regularizer/mul/x:output:01lstm/lstm_cell/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ć
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp8^lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2r
7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp7lstm/lstm_cell/kernel/Regularizer/L2Loss/ReadVariableOp:^ Z
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
"
_user_specified_name
inputs_0
Ř;
ž
__inference_standard_lstm_5464

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ş
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	0:
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_5378*
condR
while_cond_5377*e
output_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	0:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	0:
:*=
api_implements+)lstm_4ac8b558-b078-428a-96a7-95fa5caf6adc*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
÷
B
&__inference_dropout_layer_call_fn_9828

inputs
identity¤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_6204X
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	:G C

_output_shapes
:	
 
_user_specified_nameinputs
9
ž
__inference_standard_lstm_6536

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"      0   ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙˛
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   ŕ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ŕ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:0*
shrink_axis_mask\
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes
:	V
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes
:	\
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes
:	K
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes
:	Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitL
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes
:	N
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes
:	K
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes
:	F
TanhTanhsplit:output:2*
T0*
_output_shapes
:	M
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes
:	L
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:	N
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes
:	C
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes
:	Q
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes
:	n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ĺ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŇF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*T
_output_shapesB
@: : : : :	:	: : :	0:
:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_6450*
condR
while_cond_6449*S
output_shapesB
@: : : : :	:	: : :	0:
:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Î
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*#
_output_shapes
:*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:˙
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?X
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes
:	U

Identity_1Identitytranspose_1:y:0*
T0*#
_output_shapes
:P

Identity_2Identitywhile:output:4*
T0*
_output_shapes
:	P

Identity_3Identitywhile:output:5*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_7eab91d7-cf1f-4a4d-a262-9a84d103c521*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ç
ˇ
while_cond_9455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_9455___redundant_placeholder02
.while_while_cond_9455___redundant_placeholder12
.while_while_cond_9455___redundant_placeholder22
.while_while_cond_9455___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0: : : : :	:	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
A
Ę
'__inference_gpu_lstm_with_fallback_7822

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:˛
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_e7a2dd03-f4f6-4e09-b244-52f57c147dd2*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
A
Ę
'__inference_gpu_lstm_with_fallback_7360

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:˛
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_35b1b999-7658-4e31-a920-6391107c49f9*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
N

%__forward_gpu_lstm_with_fallback_8511

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ú
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ž
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	0:
:*=
api_implements+)lstm_b272049d-5f6a-416e-993b-1fbfffaf12f6*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_8336_8512*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ŕK
đ
%__forward_gpu_lstm_with_fallback_7996

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0ś
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_e7a2dd03-f4f6-4e09-b244-52f57c147dd2*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_7823_7997*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
ç
ˇ
while_cond_9022
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice2
.while_while_cond_9022___redundant_placeholder02
.while_while_cond_9022___redundant_placeholder12
.while_while_cond_9022___redundant_placeholder22
.while_while_cond_9022___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0: : : : :	:	: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
(
Í
while_body_6450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:0*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	z
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	n
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes
:	g
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes
:	W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¨
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitX
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	Z
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	d
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	R

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	_
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	^
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	Z
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	O
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	c
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ŕ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	W
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :	:	: : :	0:
:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	0:&	"
 
_output_shapes
:
:!


_output_shapes	
:
A
Ę
'__inference_gpu_lstm_with_fallback_9638

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : g

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*#
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : k
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*#
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:˛
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*E
_output_shapes3
1::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_maskh
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes
:	*
squeeze_dims
 j
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes
:	*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :{
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*#
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @V
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes
:	[

Identity_1IdentityExpandDims_2:output:0*
T0*#
_output_shapes
:R

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes
:	T

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes
:	I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:0:	:	:	0:
:*=
api_implements+)lstm_ed46ced5-79bb-4483-91ac-e28acd8d996c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:0
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_nameinit_h:GC

_output_shapes
:	
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
N

%__forward_gpu_lstm_with_fallback_8946

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ú
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ž
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	0:
:*=
api_implements+)lstm_e9032891-a19c-4f53-bd9a-abd99c28f7d7*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_8771_8947*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
âB
Ę
'__inference_gpu_lstm_with_fallback_8335

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:Ö
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ć
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	0:
:*=
api_implements+)lstm_b272049d-5f6a-416e-993b-1fbfffaf12f6*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
N

%__forward_gpu_lstm_with_fallback_5736

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	0:	0:	0:	0*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
:
:
:
*
	num_splite
zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:U
zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0*
T0*
_output_shapes	
:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ľ
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	0Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	0[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:`a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Ú
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ž
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:	0:
:*=
api_implements+)lstm_4ac8b558-b078-428a-96a7-95fa5caf6adc*
api_preferred_deviceGPU*S
backward_function_name97__inference___backward_gpu_lstm_with_fallback_5561_5737*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0
 
_user_specified_nameinputs:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_h:PL
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinit_c:GC

_output_shapes
:	0
 
_user_specified_namekernel:RN
 
_output_shapes
:

*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
(
Í
while_body_7640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"   0   
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:0*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes
:	z
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes
:	n
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes
:	g
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes
:	W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¨
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*@
_output_shapes.
,:	:	:	:	*
	num_splitX
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes
:	Z
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes
:	d
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes
:	R

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes
:	_
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes
:	^
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes
:	Z
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes
:	O
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes
:	c
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes
:	r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ŕ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: W
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes
:	W
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes
:	"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :	:	: : :	0:
:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	0:&	"
 
_output_shapes
:
:!


_output_shapes	
:
â	
ň
A__inference_dense_2_layer_call_and_return_conditional_losses_9910

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@G
ReluReluBiasAdd:output:0*
T0*
_output_shapes

:@X
IdentityIdentityRelu:activations:0^NoOp*
T0*
_output_shapes

:@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
ě)
Í
while_body_8153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙0   Ś
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙0*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ě
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ŕ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŇO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :	0:
:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:.*
(
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	0:&	"
 
_output_shapes
:
:!


_output_shapes	
:"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*˘
serving_default
<

lstm_input.
serving_default_lstm_input:002
dense_3'
StatefulPartitionedCall:0tensorflow/serving/predict:Ő
ś
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ú
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
ź
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
ť
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias"
_tf_keras_layer
ť
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias"
_tf_keras_layer
ť
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias"
_tf_keras_layer
ť
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias"
_tf_keras_layer
n
@0
A1
B2
&3
'4
.5
/6
67
78
>9
?10"
trackable_list_wrapper
n
@0
A1
B2
&3
'4
.5
/6
67
78
>9
?10"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ů
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32î
)__inference_sequential_layer_call_fn_6304
)__inference_sequential_layer_call_fn_7081
)__inference_sequential_layer_call_fn_7108
)__inference_sequential_layer_call_fn_6939ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
Ĺ
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32Ú
D__inference_sequential_layer_call_and_return_conditional_losses_7570
D__inference_sequential_layer_call_and_return_conditional_losses_8039
D__inference_sequential_layer_call_and_return_conditional_losses_6975
D__inference_sequential_layer_call_and_return_conditional_losses_7011ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
ÍBĘ
__inference__wrapped_model_4858
lstm_input"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ż
Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_rate&mŁ'm¤.mĽ/mŚ6m§7m¨>mŠ?mŞ@mŤAmŹBm­&vŽ'vŻ.v°/vą6v˛7vł>v´?vľ@vśAvˇBv¸"
	optimizer
,
Userving_default"
signature_map
5
@0
A1
B2"
trackable_list_wrapper
5
@0
A1
B2"
trackable_list_wrapper
'
V0"
trackable_list_wrapper
š

Wstates
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ö
]trace_0
^trace_1
_trace_2
`trace_32ë
#__inference_lstm_layer_call_fn_8050
#__inference_lstm_layer_call_fn_8061
#__inference_lstm_layer_call_fn_8072
#__inference_lstm_layer_call_fn_8083Ô
Ë˛Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z]trace_0z^trace_1z_trace_2z`trace_3
Â
atrace_0
btrace_1
ctrace_2
dtrace_32×
>__inference_lstm_layer_call_and_return_conditional_losses_8518
>__inference_lstm_layer_call_and_return_conditional_losses_8953
>__inference_lstm_layer_call_and_return_conditional_losses_9386
>__inference_lstm_layer_call_and_return_conditional_losses_9819Ô
Ë˛Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zatrace_0zbtrace_1zctrace_2zdtrace_3
"
_generic_user_object
ř
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
k_random_generator
l
state_size

@kernel
Arecurrent_kernel
Bbias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
˝
rtrace_0
strace_12
&__inference_dropout_layer_call_fn_9828
&__inference_dropout_layer_call_fn_9833ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zrtrace_0zstrace_1
ó
ttrace_0
utrace_12ź
A__inference_dropout_layer_call_and_return_conditional_losses_9838
A__inference_dropout_layer_call_and_return_conditional_losses_9850ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zttrace_0zutrace_1
"
_generic_user_object
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
č
{trace_02Ë
$__inference_dense_layer_call_fn_9859˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z{trace_0

|trace_02ć
?__inference_dense_layer_call_and_return_conditional_losses_9870˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z|trace_0
 :
2dense/kernel
:2
dense/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ż
}non_trainable_variables

~layers
metrics
 layer_regularization_losses
layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
ě
trace_02Í
&__inference_dense_1_layer_call_fn_9879˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02č
A__inference_dense_1_layer_call_and_return_conditional_losses_9890˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
!:	2dense_1/kernel
:2dense_1/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
ě
trace_02Í
&__inference_dense_2_layer_call_fn_9899˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02č
A__inference_dense_2_layer_call_and_return_conditional_losses_9910˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
 :@2dense_2/kernel
:@2dense_2/bias
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
ě
trace_02Í
&__inference_dense_3_layer_call_fn_9919˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02č
A__inference_dense_3_layer_call_and_return_conditional_losses_9930˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
 :@2dense_3/kernel
:2dense_3/bias
(:&	02lstm/lstm_cell/kernel
3:1
2lstm/lstm_cell/recurrent_kernel
": 2lstm/lstm_cell/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ţBű
)__inference_sequential_layer_call_fn_6304
lstm_input"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
úB÷
)__inference_sequential_layer_call_fn_7081inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
úB÷
)__inference_sequential_layer_call_fn_7108inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ţBű
)__inference_sequential_layer_call_fn_6939
lstm_input"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_7570inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_8039inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_6975
lstm_input"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_7011
lstm_input"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ĚBÉ
"__inference_signature_wrapper_7050
lstm_input"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Í
trace_02Ž
__inference_loss_fn_0_9939
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
#__inference_lstm_layer_call_fn_8050inputs_0"Ô
Ë˛Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
#__inference_lstm_layer_call_fn_8061inputs_0"Ô
Ë˛Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
#__inference_lstm_layer_call_fn_8072inputs"Ô
Ë˛Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
#__inference_lstm_layer_call_fn_8083inputs"Ô
Ë˛Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ŚBŁ
>__inference_lstm_layer_call_and_return_conditional_losses_8518inputs_0"Ô
Ë˛Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ŚBŁ
>__inference_lstm_layer_call_and_return_conditional_losses_8953inputs_0"Ô
Ë˛Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
¤BĄ
>__inference_lstm_layer_call_and_return_conditional_losses_9386inputs"Ô
Ë˛Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
¤BĄ
>__inference_lstm_layer_call_and_return_conditional_losses_9819inputs"Ô
Ë˛Ç
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
5
@0
A1
B2"
trackable_list_wrapper
5
@0
A1
B2"
trackable_list_wrapper
'
V0"
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
Ă2Ŕ˝
´˛°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ă2Ŕ˝
´˛°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ëBč
&__inference_dropout_layer_call_fn_9828inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ëBč
&__inference_dropout_layer_call_fn_9833inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
A__inference_dropout_layer_call_and_return_conditional_losses_9838inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
A__inference_dropout_layer_call_and_return_conditional_losses_9850inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŘBŐ
$__inference_dense_layer_call_fn_9859inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
óBđ
?__inference_dense_layer_call_and_return_conditional_losses_9870inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÚB×
&__inference_dense_1_layer_call_fn_9879inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
A__inference_dense_1_layer_call_and_return_conditional_losses_9890inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÚB×
&__inference_dense_2_layer_call_fn_9899inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
A__inference_dense_2_layer_call_and_return_conditional_losses_9910inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÚB×
&__inference_dense_3_layer_call_fn_9919inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
őBň
A__inference_dense_3_layer_call_and_return_conditional_losses_9930inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

 total

Ącount
˘
_fn_kwargs"
_tf_keras_metric
ąBŽ
__inference_loss_fn_0_9939"
˛
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *˘ 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
V0"
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
 0
Ą1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
%:#
2Adam/dense/kernel/m
:2Adam/dense/bias/m
&:$	2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
%:#@2Adam/dense_2/kernel/m
:@2Adam/dense_2/bias/m
%:#@2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
-:+	02Adam/lstm/lstm_cell/kernel/m
8:6
2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%2Adam/lstm/lstm_cell/bias/m
%:#
2Adam/dense/kernel/v
:2Adam/dense/bias/v
&:$	2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
%:#@2Adam/dense_2/kernel/v
:@2Adam/dense_2/bias/v
%:#@2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
-:+	02Adam/lstm/lstm_cell/kernel/v
8:6
2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%2Adam/lstm/lstm_cell/bias/v
__inference__wrapped_model_4858g@AB&'./67>?.˘+
$˘!


lstm_input0
Ş "(Ş%
#
dense_3
dense_3
A__inference_dense_1_layer_call_and_return_conditional_losses_9890R./'˘$
˘

inputs	
Ş "#˘ 

tensor_0
 q
&__inference_dense_1_layer_call_fn_9879G./'˘$
˘

inputs	
Ş "
unknown
A__inference_dense_2_layer_call_and_return_conditional_losses_9910Q67&˘#
˘

inputs
Ş "#˘ 

tensor_0@
 p
&__inference_dense_2_layer_call_fn_9899F67&˘#
˘

inputs
Ş "
unknown@
A__inference_dense_3_layer_call_and_return_conditional_losses_9930Q>?&˘#
˘

inputs@
Ş "#˘ 

tensor_0
 p
&__inference_dense_3_layer_call_fn_9919F>?&˘#
˘

inputs@
Ş "
unknown
?__inference_dense_layer_call_and_return_conditional_losses_9870S&''˘$
˘

inputs	
Ş "$˘!

tensor_0	
 p
$__inference_dense_layer_call_fn_9859H&''˘$
˘

inputs	
Ş "
unknown	
A__inference_dropout_layer_call_and_return_conditional_losses_9838S+˘(
!˘

inputs	
p 
Ş "$˘!

tensor_0	
 
A__inference_dropout_layer_call_and_return_conditional_losses_9850S+˘(
!˘

inputs	
p
Ş "$˘!

tensor_0	
 r
&__inference_dropout_layer_call_fn_9828H+˘(
!˘

inputs	
p 
Ş "
unknown	r
&__inference_dropout_layer_call_fn_9833H+˘(
!˘

inputs	
p
Ş "
unknown	B
__inference_loss_fn_0_9939$@˘

˘ 
Ş "
unknown Č
>__inference_lstm_layer_call_and_return_conditional_losses_8518@ABO˘L
E˘B
41
/,
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0

 
p 

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Č
>__inference_lstm_layer_call_and_return_conditional_losses_8953@ABO˘L
E˘B
41
/,
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0

 
p

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Ľ
>__inference_lstm_layer_call_and_return_conditional_losses_9386c@AB6˘3
,˘)

inputs0

 
p 

 
Ş "$˘!

tensor_0	
 Ľ
>__inference_lstm_layer_call_and_return_conditional_losses_9819c@AB6˘3
,˘)

inputs0

 
p

 
Ş "$˘!

tensor_0	
 Ą
#__inference_lstm_layer_call_fn_8050z@ABO˘L
E˘B
41
/,
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0

 
p 

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙Ą
#__inference_lstm_layer_call_fn_8061z@ABO˘L
E˘B
41
/,
inputs_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙0

 
p

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙
#__inference_lstm_layer_call_fn_8072X@AB6˘3
,˘)

inputs0

 
p 

 
Ş "
unknown	
#__inference_lstm_layer_call_fn_8083X@AB6˘3
,˘)

inputs0

 
p

 
Ş "
unknown	˛
D__inference_sequential_layer_call_and_return_conditional_losses_6975j@AB&'./67>?6˘3
,˘)


lstm_input0
p 

 
Ş "#˘ 

tensor_0
 ˛
D__inference_sequential_layer_call_and_return_conditional_losses_7011j@AB&'./67>?6˘3
,˘)


lstm_input0
p

 
Ş "#˘ 

tensor_0
 Ž
D__inference_sequential_layer_call_and_return_conditional_losses_7570f@AB&'./67>?2˘/
(˘%

inputs0
p 

 
Ş "#˘ 

tensor_0
 Ž
D__inference_sequential_layer_call_and_return_conditional_losses_8039f@AB&'./67>?2˘/
(˘%

inputs0
p

 
Ş "#˘ 

tensor_0
 
)__inference_sequential_layer_call_fn_6304_@AB&'./67>?6˘3
,˘)


lstm_input0
p 

 
Ş "
unknown
)__inference_sequential_layer_call_fn_6939_@AB&'./67>?6˘3
,˘)


lstm_input0
p

 
Ş "
unknown
)__inference_sequential_layer_call_fn_7081[@AB&'./67>?2˘/
(˘%

inputs0
p 

 
Ş "
unknown
)__inference_sequential_layer_call_fn_7108[@AB&'./67>?2˘/
(˘%

inputs0
p

 
Ş "
unknown
"__inference_signature_wrapper_7050u@AB&'./67>?<˘9
˘ 
2Ş/
-

lstm_input

lstm_input0"(Ş%
#
dense_3
dense_3