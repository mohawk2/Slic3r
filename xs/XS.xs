#include <xsinit.h>

/* We need one MODULE... line to start the actual XS section of the file.
 * The XS++ preprocessor will output its own MODULE and PACKAGE lines */
MODULE = Slic3r::XS            PACKAGE = Slic3r::XS
 
## The include line executes xspp with the supplied typemap and the
## xsp interface code for our class.
## It will include the output of the xsubplusplus run.

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/BoundingBox.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/BridgeDetector.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Clipper.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/ConditionalGcode.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Config.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/ExPolygon.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/ExPolygonCollection.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Extruder.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/ExtrusionEntityCollection.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/ExtrusionLoop.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/ExtrusionPath.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Filler.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Flow.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/GCode.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/GCodeSender.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/GCodeTimeEstimator.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/GCodeWriter.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/GUI.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/GUI_3DScene.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Geometry.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Layer.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/LayerHeightSpline.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Line.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Model.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/MotionPlanner.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/PerimeterGenerator.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/PlaceholderParser.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Point.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Polygon.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Polyline.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/PolylineCollection.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Print.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/SLAPrint.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/SlicingAdaptive.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/SupportMaterial.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/Surface.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/SurfaceCollection.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/TriangleMesh.xsp

INCLUDE_COMMAND: $^X -MExtUtils::XSpp::Cmd -e xspp -- --typemap=xsp/typemap.xspt xsp/XS.xsp
