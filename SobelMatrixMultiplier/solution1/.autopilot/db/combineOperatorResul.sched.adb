<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>combineOperatorResul</name>
		<ret_bitwidth>12</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>2</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>verticalResult</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>verticalResult</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>horizontalResult</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>horizontalResult</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>10</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_3">
				<Value>
					<Obj>
						<type>0</type>
						<id>3</id>
						<name>horizontalResult_rea</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>horizontalResult</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>16</item>
					<item>17</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>4</id>
						<name>verticalResult_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>verticalResult</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>18</item>
					<item>19</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>6</id>
						<name>result</name>
						<fileName>SobelMatrixMultiplier/powerFunction.cpp</fileName>
						<fileDirectory>C:\Users\db217620\Repositories\FPGAColorIdentifier</fileDirectory>
						<lineNumber>7</lineNumber>
						<contextFuncName>power</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>C:\Users\db217620\Repositories\FPGAColorIdentifier</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>2</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</first>
											<second>combineOperatorResults</second>
										</first>
										<second>46</second>
									</item>
									<item>
										<first>
											<first>SobelMatrixMultiplier/powerFunction.cpp</first>
											<second>power</second>
										</first>
										<second>7</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>result</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>20</item>
					<item>21</item>
				</oprand_edges>
				<opcode>mul</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>7</id>
						<name>p_Val2_2</name>
						<fileName>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</fileName>
						<fileDirectory>C:\Users\db217620\Repositories\FPGAColorIdentifier</fileDirectory>
						<lineNumber>46</lineNumber>
						<contextFuncName>combineOperatorResults</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\db217620\Repositories\FPGAColorIdentifier</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</first>
											<second>combineOperatorResults</second>
										</first>
										<second>46</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>__Val2__</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>22</item>
					<item>24</item>
				</oprand_edges>
				<opcode>shl</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>8</id>
						<name>result_1</name>
						<fileName>SobelMatrixMultiplier/powerFunction.cpp</fileName>
						<fileDirectory>C:\Users\db217620\Repositories\FPGAColorIdentifier</fileDirectory>
						<lineNumber>7</lineNumber>
						<contextFuncName>power</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\db217620\Repositories\FPGAColorIdentifier</first>
								<second>
									<count>2</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</first>
											<second>combineOperatorResults</second>
										</first>
										<second>47</second>
									</item>
									<item>
										<first>
											<first>SobelMatrixMultiplier/powerFunction.cpp</first>
											<second>power</second>
										</first>
										<second>7</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>result</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>25</item>
					<item>26</item>
				</oprand_edges>
				<opcode>mul</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>9</id>
						<name>p_Val2_3</name>
						<fileName>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</fileName>
						<fileDirectory>C:\Users\db217620\Repositories\FPGAColorIdentifier</fileDirectory>
						<lineNumber>47</lineNumber>
						<contextFuncName>combineOperatorResults</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\db217620\Repositories\FPGAColorIdentifier</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</first>
											<second>combineOperatorResults</second>
										</first>
										<second>47</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>__Val2__</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>27</item>
					<item>28</item>
				</oprand_edges>
				<opcode>shl</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>input_V</name>
						<fileName>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</fileName>
						<fileDirectory>C:\Users\db217620\Repositories\FPGAColorIdentifier</fileDirectory>
						<lineNumber>48</lineNumber>
						<contextFuncName>combineOperatorResults</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\db217620\Repositories\FPGAColorIdentifier</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</first>
											<second>combineOperatorResults</second>
										</first>
										<second>48</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>input.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>29</item>
					<item>30</item>
				</oprand_edges>
				<opcode>add</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>result_V</name>
						<fileName>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</fileName>
						<fileDirectory>C:\Users\db217620\Repositories\FPGAColorIdentifier</fileDirectory>
						<lineNumber>50</lineNumber>
						<contextFuncName>combineOperatorResults</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\db217620\Repositories\FPGAColorIdentifier</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</first>
											<second>combineOperatorResults</second>
										</first>
										<second>50</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>20</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>32</item>
					<item>33</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>tmp</name>
						<fileName>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</fileName>
						<fileDirectory>C:\Users\db217620\Repositories\FPGAColorIdentifier</fileDirectory>
						<lineNumber>51</lineNumber>
						<contextFuncName>combineOperatorResults</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\db217620\Repositories\FPGAColorIdentifier</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</first>
											<second>combineOperatorResults</second>
										</first>
										<second>51</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>12</bitwidth>
				</Value>
				<oprand_edges>
					<count>4</count>
					<item_version>0</item_version>
					<item>35</item>
					<item>36</item>
					<item>37</item>
					<item>39</item>
				</oprand_edges>
				<opcode>partselect</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name></name>
						<fileName>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</fileName>
						<fileDirectory>C:\Users\db217620\Repositories\FPGAColorIdentifier</fileDirectory>
						<lineNumber>51</lineNumber>
						<contextFuncName>combineOperatorResults</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\db217620\Repositories\FPGAColorIdentifier</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>SobelMatrixMultiplier/SobelMatrixMultiplier.cpp</first>
											<second>combineOperatorResults</second>
										</first>
										<second>51</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>40</item>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_13">
				<Value>
					<Obj>
						<type>2</type>
						<id>23</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>8</content>
			</item>
			<item class_id_reference="16" object_id="_14">
				<Value>
					<Obj>
						<type>2</type>
						<id>31</id>
						<name>fxp_sqrt</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>20</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fxp_sqrt&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_15">
				<Value>
					<Obj>
						<type>2</type>
						<id>38</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>19</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_16">
				<Obj>
					<type>3</type>
					<id>14</id>
					<name>combineOperatorResul</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>10</count>
					<item_version>0</item_version>
					<item>3</item>
					<item>4</item>
					<item>6</item>
					<item>7</item>
					<item>8</item>
					<item>9</item>
					<item>10</item>
					<item>11</item>
					<item>12</item>
					<item>13</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>18</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_17">
				<id>17</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>3</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_18">
				<id>19</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>4</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_19">
				<id>20</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>6</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_20">
				<id>21</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>6</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_21">
				<id>22</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>7</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_22">
				<id>24</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>7</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_23">
				<id>25</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>26</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>8</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>27</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>9</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>28</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>9</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>29</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>10</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>30</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>10</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>32</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>11</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>33</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>11</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>36</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>12</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>37</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>12</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>39</id>
				<edge_type>1</edge_type>
				<source_obj>38</source_obj>
				<sink_obj>12</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>40</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>13</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_35">
			<mId>1</mId>
			<mTag>combineOperatorResul</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</basic_blocks>
			<mII>1</mII>
			<mDepth>14</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>13</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="26" tracking_level="0" version="0">
		<count>10</count>
		<item_version>0</item_version>
		<item class_id="27" tracking_level="0" version="0">
			<first>3</first>
			<second class_id="28" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>4</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>6</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>7</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>8</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>9</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>11</first>
			<second>
				<first>1</first>
				<second>12</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>13</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>13</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="29" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="30" tracking_level="0" version="0">
			<first>14</first>
			<second class_id="31" tracking_level="0" version="0">
				<first>0</first>
				<second>13</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="32" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="33" tracking_level="1" version="0" object_id="_36">
			<region_name>combineOperatorResul</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>14</item>
			</basic_blocks>
			<nodes>
				<count>0</count>
				<item_version>0</item_version>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>8</region_type>
			<interval>1</interval>
			<pipe_depth>14</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="34" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="35" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="36" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="37" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="38" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>
