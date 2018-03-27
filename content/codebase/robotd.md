---
title: RobotD
---

Introductory sentence here.

{{<mermaid>}}
graph TB
subgraph ""
BoardMeta --> Board
Board --> Camera
Board --> Motor
Board --> Servo
Board --> Game
Board --> Power
end
subgraph ""
MasterProcess -.-> BoardRunner
BoardRunner -.-> Connection
BoardRunner -.-> Board
end

click BoardMeta "#BoardMeta" "More Info about BoardMeta"
{{</mermaid>}}

## BoardMeta
Yes, this is a metaclass
