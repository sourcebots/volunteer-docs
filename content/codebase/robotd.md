---
title: RobotD
---

RobotD runs a master process which motors for robot peripherals. For each peripheral it finds, it opens a UNIX seqpacket socket in `/var/robotd/<type>/<id>`.

You can find out more about how to use it at the GitHub page: {{< github "sourcebots/robotd" >}}.

This page details information about how the code works that is beyond the scope of the README file. The information is not guarenteed to be completely up to date, but is intended to give a general overview of the structure and workings of the module.

## Diagram of RobotD

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
{{</mermaid>}}

This diagram represents a simplified structure of the classes inside robotD and how they interact with each other. More information on the individual classes can be found below.

## BoardMeta
| Class:         | BoardMeta         |
| -------------- | ----------------- |
| Inherits From: | `type`            |
| Subclasses:    | `Board`           |
| File:          | `devices_base.py` |

This is a [MetaClass](Some Python Docs) that manages the creation of Boards.

It creates a list of all boards that have been defined in `BoardMeta.BOARDS`.

## Board

| Class:         | Board             |
| -------------- | ----------------- |
| Inherits From: | `object`          |
| Subclasses:    | `Lots of Boards`  |
| File:          | `devices_base.py` |

