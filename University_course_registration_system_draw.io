<mxfile host="app.diagrams.net" agent="ChatGPT" pages="4">
  <diagram id="1-use-case-diagram" name="1 Use Case Diagram">
    <mxGraphModel dx="1422" dy="794" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1169" pageHeight="827" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="boundary" value="University Course Registration System" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#ffffff;strokeColor=#000000;verticalAlign=top;spacingTop=12;fontStyle=1;fontSize=18;" vertex="1" parent="1">
          <mxGeometry x="260" y="80" width="600" height="550" as="geometry" />
        </mxCell>
        <mxCell id="student" value="Student" style="shape=umlActor;verticalLabelPosition=bottom;verticalAlign=top;html=1;outlineConnect=0;fontSize=16;" vertex="1" parent="1">
          <mxGeometry x="50" y="280" width="80" height="120" as="geometry" />
        </mxCell>
        <mxCell id="officer" value="Registry Officer" style="shape=umlActor;verticalLabelPosition=bottom;verticalAlign=top;html=1;outlineConnect=0;fontSize=16;" vertex="1" parent="1">
          <mxGeometry x="970" y="280" width="100" height="120" as="geometry" />
        </mxCell>
        <mxCell id="search" value="Search Course" style="ellipse;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;fontSize=16;" vertex="1" parent="1">
          <mxGeometry x="420" y="160" width="280" height="65" as="geometry" />
        </mxCell>
        <mxCell id="register" value="Register Course" style="ellipse;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;fontSize=16;" vertex="1" parent="1">
          <mxGeometry x="420" y="260" width="280" height="65" as="geometry" />
        </mxCell>
        <mxCell id="drop" value="Drop Course" style="ellipse;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;fontSize=16;" vertex="1" parent="1">
          <mxGeometry x="420" y="360" width="280" height="65" as="geometry" />
        </mxCell>
        <mxCell id="view" value="View Registration" style="ellipse;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;fontSize=16;" vertex="1" parent="1">
          <mxGeometry x="420" y="460" width="280" height="65" as="geometry" />
        </mxCell>
        <mxCell id="s0" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1" source="student" target="search">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="s1" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1" source="student" target="register">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="s2" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1" source="student" target="drop">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="s3" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1" source="student" target="view">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="offview" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1" source="officer" target="view">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
  <diagram id="2-class-diagram" name="2 Class Diagram">
    <mxGraphModel dx="1422" dy="794" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1169" pageHeight="827" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="student" value="Student&#xa;------------------------------&#xa;- studentId: String&#xa;- fullName: String&#xa;- email: String&#xa;- programme: String&#xa;------------------------------&#xa;+ searchCourse()&#xa;+ registerCourse()&#xa;+ dropCourse()&#xa;+ viewRegistration()" style="whiteSpace=wrap;html=1;rounded=0;fillColor=#ffffff;strokeColor=#6c8ebf;fontSize=14;align=left;verticalAlign=top;spacing=8;" vertex="1" parent="1">
          <mxGeometry x="100" y="100" width="300" height="280" as="geometry" />
        </mxCell>
        <mxCell id="course" value="Course&#xa;------------------------------&#xa;- courseCode: String&#xa;- courseTitle: String&#xa;- credits: Integer&#xa;- capacity: Integer&#xa;------------------------------&#xa;+ checkAvailability()&#xa;+ getCourseDetails()" style="whiteSpace=wrap;html=1;rounded=0;fillColor=#ffffff;strokeColor=#d6b656;fontSize=14;align=left;verticalAlign=top;spacing=8;" vertex="1" parent="1">
          <mxGeometry x="690" y="100" width="300" height="250" as="geometry" />
        </mxCell>
        <mxCell id="registration" value="Registration&#xa;------------------------------&#xa;- registrationId: String&#xa;- registrationDate: Date&#xa;- semester: String&#xa;- status: String&#xa;------------------------------&#xa;+ createRegistration()&#xa;+ cancelRegistration()&#xa;+ validateRegistration()" style="whiteSpace=wrap;html=1;rounded=0;fillColor=#ffffff;strokeColor=#82b366;fontSize=14;align=left;verticalAlign=top;spacing=8;" vertex="1" parent="1">
          <mxGeometry x="395" y="470" width="310" height="260" as="geometry" />
        </mxCell>
        <mxCell id="studentreg" value="1                0..*" style="endArrow=none;startArrow=none;html=1;rounded=0;strokeWidth=2;" edge="1" parent="1" source="student" target="registration">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="coursereg" value="1                0..*" style="endArrow=none;startArrow=none;html=1;rounded=0;strokeWidth=2;" edge="1" parent="1" source="course" target="registration">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
  <diagram id="3-sequence-diagram" name="3 Sequence Diagram">
    <mxGraphModel dx="669" dy="338" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1169" pageHeight="827" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="s" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;fontStyle=1;fontSize=14;align=center;verticalAlign=middle;" value="Student" vertex="1">
          <mxGeometry height="55" width="150" x="60" y="70" as="geometry" />
        </mxCell>
        <mxCell id="sys" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;fontStyle=1;fontSize=14;align=center;verticalAlign=middle;" value="Registration System" vertex="1">
          <mxGeometry height="55" width="190" x="300" y="70" as="geometry" />
        </mxCell>
        <mxCell id="svc" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;fontStyle=1;fontSize=14;align=center;verticalAlign=middle;" value="Course Validation Service" vertex="1">
          <mxGeometry height="55" width="205" x="565" y="70" as="geometry" />
        </mxCell>
        <mxCell id="db" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontStyle=1;fontSize=14;align=center;verticalAlign=middle;" value="Registration Database" vertex="1">
          <mxGeometry height="55" width="200" x="850" y="70" as="geometry" />
        </mxCell>
        <mxCell id="life_s" parent="1" style="shape=line;html=1;strokeColor=#777777;dashed=1;dashPattern=6 6;" value="" vertex="1">
          <mxGeometry height="640" width="1" x="135" y="125" as="geometry" />
        </mxCell>
        <mxCell id="life_sys" parent="1" style="shape=line;html=1;strokeColor=#777777;dashed=1;dashPattern=6 6;" value="" vertex="1">
          <mxGeometry height="640" width="1" x="395" y="125" as="geometry" />
        </mxCell>
        <mxCell id="life_svc" parent="1" style="shape=line;html=1;strokeColor=#777777;dashed=1;dashPattern=6 6;" value="" vertex="1">
          <mxGeometry height="640" width="1" x="667" y="125" as="geometry" />
        </mxCell>
        <mxCell id="life_db" parent="1" style="shape=line;html=1;strokeColor=#777777;dashed=1;dashPattern=6 6;" value="" vertex="1">
          <mxGeometry height="640" width="1" x="950" y="125" as="geometry" />
        </mxCell>
        <mxCell id="act_student" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" value="" vertex="1">
          <mxGeometry height="45" width="14" x="128" y="170" as="geometry" />
        </mxCell>
        <mxCell id="act_sys1" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" value="" vertex="1">
          <mxGeometry height="350" width="14" x="388" y="220" as="geometry" />
        </mxCell>
        <mxCell id="act_svc" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" value="" vertex="1">
          <mxGeometry height="120" width="14" x="660" y="280" as="geometry" />
        </mxCell>
        <mxCell id="act_db" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;" value="" vertex="1">
          <mxGeometry height="90" width="14" x="943" y="475" as="geometry" />
        </mxCell>
        <mxCell id="m1" edge="1" parent="1" style="edgeStyle=none;html=1;rounded=0;strokeColor=#222222;strokeWidth=1.5;endArrow=block;endFill=1;" value="1. registerCourse(courseCode)">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="135" y="190" />
              <mxPoint x="395" y="190" />
            </Array>
            <mxPoint x="135" y="190" as="sourcePoint" />
            <mxPoint x="395" y="190" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="m2" edge="1" parent="1" style="edgeStyle=none;html=1;rounded=0;strokeColor=#222222;strokeWidth=1.5;endArrow=block;endFill=1;" value="2. validateCourse(studentId, courseCode)">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="395" y="250" />
              <mxPoint x="667" y="250" />
            </Array>
            <mxPoint x="395" y="250" as="sourcePoint" />
            <mxPoint x="667" y="250" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="m3" edge="1" parent="1" style="edgeStyle=none;html=1;rounded=0;strokeColor=#222222;strokeWidth=1.5;endArrow=open;endFill=0;dashed=1;dashPattern=6 4;" value="3. validationResult(valid / reason)">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="667" y="310" />
              <mxPoint x="395" y="310" />
            </Array>
            <mxPoint x="667" y="310" as="sourcePoint" />
            <mxPoint x="395" y="310" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="alt" parent="1" style="rounded=0;whiteSpace=wrap;html=1;fillColor=none;strokeColor=#666666;dashed=0;align=left;verticalAlign=top;spacingLeft=10;spacingTop=5;fontStyle=1;" value="alt" vertex="1">
          <mxGeometry height="350" width="1020" x="35" y="350" as="geometry" />
        </mxCell>
        <mxCell id="alt_divider" parent="1" style="shape=line;html=1;strokeColor=#666666;dashed=1;" value="" vertex="1">
          <mxGeometry height="1" width="1020" x="35" y="535" as="geometry" />
        </mxCell>
        <mxCell id="success_label" parent="1" style="text;html=1;align=left;verticalAlign=middle;fontStyle=1;fontSize=13;" value="[VALIDATION SUCCESSFUL]" vertex="1">
          <mxGeometry height="25" width="250" x="65" y="355" as="geometry" />
        </mxCell>
        <mxCell id="failure_label" parent="1" style="text;html=1;align=left;verticalAlign=middle;fontStyle=1;fontSize=13;" value="[VALIDATION FAILED]" vertex="1">
          <mxGeometry height="25" width="220" x="55" y="540" as="geometry" />
        </mxCell>
        <mxCell id="m4" edge="1" parent="1" style="edgeStyle=none;html=1;rounded=0;strokeColor=#222222;strokeWidth=1.5;endArrow=block;endFill=1;" value="4. saveRegistration(studentId, courseCode)">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="395" y="405" />
              <mxPoint x="950" y="405" />
            </Array>
            <mxPoint x="395" y="405" as="sourcePoint" />
            <mxPoint x="950" y="405" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="m5" edge="1" parent="1" style="edgeStyle=none;html=1;rounded=0;strokeColor=#222222;strokeWidth=1.5;endArrow=open;endFill=0;dashed=1;dashPattern=6 4;" value="5. registrationSaved">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="950" y="465" />
              <mxPoint x="395" y="465" />
            </Array>
            <mxPoint x="950" y="465" as="sourcePoint" />
            <mxPoint x="395" y="465" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="m6" edge="1" parent="1" style="edgeStyle=none;html=1;rounded=0;strokeColor=#222222;strokeWidth=1.5;endArrow=open;endFill=0;dashed=1;dashPattern=6 4;" value="6. showConfirmation()">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="395" y="510" />
              <mxPoint x="135" y="510" />
            </Array>
            <mxPoint x="395" y="510" as="sourcePoint" />
            <mxPoint x="135" y="510" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="m7" edge="1" parent="1" style="edgeStyle=none;html=1;rounded=0;strokeColor=#222222;strokeWidth=1.5;endArrow=open;endFill=0;dashed=1;dashPattern=6 4;" value="6. showError(validationReason)">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="395" y="600" />
              <mxPoint x="135" y="600" />
            </Array>
            <mxPoint x="395" y="600" as="sourcePoint" />
            <mxPoint x="135" y="600" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="note" parent="1" style="shape=note;whiteSpace=wrap;html=1;size=16;fillColor=#fff2cc;strokeColor=#d6b656;fontSize=12;align=left;verticalAlign=middle;" value="Checks: course exists • registration period open • eligibility/prerequisites • timetable conflicts • capacity • duplicate registration" vertex="1">
          <mxGeometry height="55" width="760" x="170" y="725" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
  <diagram id="4-activity-diagram" name="4 Activity Diagram">
    <mxGraphModel dx="1422" dy="794" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1169" pageHeight="827" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="start" value="" style="ellipse;html=1;fillColor=#000000;strokeColor=#000000;" vertex="1" parent="1">
          <mxGeometry x="530" y="30" width="30" height="30" as="geometry" />
        </mxCell>
        <mxCell id="login" value="Log in to system" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" vertex="1" parent="1">
          <mxGeometry x="460" y="80" width="170" height="42" as="geometry" />
        </mxCell>
        <mxCell id="select" value="Search and select course" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" vertex="1" parent="1">
          <mxGeometry x="460" y="140" width="170" height="42" as="geometry" />
        </mxCell>
        <mxCell id="exists" value="Course exists?" style="rhombus;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=13;" vertex="1" parent="1">
          <mxGeometry x="430" y="200" width="230" height="55" as="geometry" />
        </mxCell>
        <mxCell id="period" value="Registration period open?" style="rhombus;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=13;" vertex="1" parent="1">
          <mxGeometry x="430" y="290" width="230" height="55" as="geometry" />
        </mxCell>
        <mxCell id="eligible" value="Eligible and prerequisites met?" style="rhombus;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=13;" vertex="1" parent="1">
          <mxGeometry x="430" y="380" width="230" height="55" as="geometry" />
        </mxCell>
        <mxCell id="conflict" value="Timetable conflict?" style="rhombus;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=13;" vertex="1" parent="1">
          <mxGeometry x="430" y="470" width="230" height="55" as="geometry" />
        </mxCell>
        <mxCell id="capacity" value="Course has capacity?" style="rhombus;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=13;" vertex="1" parent="1">
          <mxGeometry x="430" y="560" width="230" height="55" as="geometry" />
        </mxCell>
        <mxCell id="duplicate" value="Duplicate registration?" style="rhombus;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=13;" vertex="1" parent="1">
          <mxGeometry x="430" y="650" width="230" height="55" as="geometry" />
        </mxCell>
        <mxCell id="save" value="Save registration" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="460" y="730" width="170" height="42" as="geometry" />
        </mxCell>
        <mxCell id="confirm" value="Show confirmation message" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="460" y="790" width="190" height="42" as="geometry" />
        </mxCell>
        <mxCell id="e1" value="Show course not found" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=13;" vertex="1" parent="1">
          <mxGeometry x="790" y="120" width="210" height="42" as="geometry" />
        </mxCell>
        <mxCell id="e2" value="Show registration closed" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=13;" vertex="1" parent="1">
          <mxGeometry x="790" y="230" width="210" height="42" as="geometry" />
        </mxCell>
        <mxCell id="e3" value="Show eligibility error" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=13;" vertex="1" parent="1">
          <mxGeometry x="790" y="340" width="210" height="42" as="geometry" />
        </mxCell>
        <mxCell id="e4" value="Resolve timetable conflict" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=13;" vertex="1" parent="1">
          <mxGeometry x="790" y="450" width="210" height="42" as="geometry" />
        </mxCell>
        <mxCell id="e5" value="Show course full message" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=13;" vertex="1" parent="1">
          <mxGeometry x="790" y="560" width="210" height="42" as="geometry" />
        </mxCell>
        <mxCell id="e6" value="Show duplicate registration" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=13;" vertex="1" parent="1">
          <mxGeometry x="790" y="670" width="210" height="42" as="geometry" />
        </mxCell>
        <mxCell id="end" value="" style="ellipse;html=1;fillColor=#000000;strokeColor=#000000;" vertex="1" parent="1">
          <mxGeometry x="1040" y="790" width="36" height="36" as="geometry" />
        </mxCell>
        <mxCell id="a1" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;" edge="1" parent="1" source="start" target="login">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="a2" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;" edge="1" parent="1" source="login" target="select">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="a3" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;" edge="1" parent="1" source="select" target="exists">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="a4" value="Yes" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;" edge="1" parent="1" source="exists" target="period">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="a5" value="Yes" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;" edge="1" parent="1" source="period" target="eligible">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="a6" value="Yes" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;" edge="1" parent="1" source="eligible" target="conflict">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="a7" value="No" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;" edge="1" parent="1" source="conflict" target="capacity">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="a8" value="Yes" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;" edge="1" parent="1" source="capacity" target="duplicate">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="a9" value="No" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;" edge="1" parent="1" source="duplicate" target="save">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="a10" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;" edge="1" parent="1" source="save" target="confirm">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="a11" value="" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;" edge="1" parent="1" source="confirm" target="end">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="err0" value="No" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;strokeColor=#b85450;" edge="1" parent="1" source="exists" target="e1">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="err1" value="No" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;strokeColor=#b85450;" edge="1" parent="1" source="period" target="e2">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="err2" value="No" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;strokeColor=#b85450;" edge="1" parent="1" source="eligible" target="e3">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="err3" value="Yes" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;strokeColor=#b85450;" edge="1" parent="1" source="conflict" target="e4">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="err4" value="No" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;strokeColor=#b85450;" edge="1" parent="1" source="capacity" target="e5">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="err5" value="Yes" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=block;endFill=1;strokeColor=#b85450;" edge="1" parent="1" source="duplicate" target="e6">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
