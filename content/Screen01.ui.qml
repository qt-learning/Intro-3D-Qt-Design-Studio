

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import Intro3DQtDesignStudio
import Quick3DAssets.Orbiter_Space_Shuttle_OV_103_Discovery_150k_4096
import QtQuick.Timeline 1.0

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: 0
                y: 148.786
                visible: true
                color: "#e1d9fc"
                brightness: 2.5
                ambientColor: "#393939"
                castsShadow: true
                eulerRotation.z: 66.13338
                eulerRotation.y: -40.2889
                eulerRotation.x: -22.0287
                z: -0.00002
            }

            PerspectiveCamera {
                id: sceneCamera
                z: 350
            }

            Orbiter_Space_Shuttle_OV_103_Discovery_150k_4096 {
                id: spaceShuttle
                eulerRotation.y: slider.value
                scale.y: 1
                scale.x: 1
            }
        }

        Slider {
            id: slider
            opacity: 0
            anchors.fill: parent
            to: 180
            from: -180
            value: -24.9
        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#4aee45"
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: true
                duration: 1000
                loops: 1
                to: 1000
                from: 0
            }
        ]
        startFrame: 0
        enabled: true
        endFrame: 1000

        KeyframeGroup {
            target: sceneCamera
            property: "x"
            Keyframe {
                frame: 901
                value: 0
            }

            Keyframe {
                frame: 900
                value: 0.00001
            }
        }

        KeyframeGroup {
            target: sceneCamera
            property: "y"
            Keyframe {
                frame: 901
                value: 58.58848
            }

            Keyframe {
                frame: 900
                value: 66.57422
            }
        }

        KeyframeGroup {
            target: sceneCamera
            property: "eulerRotation.x"

            Keyframe {
                frame: 901
                value: -14.96154
            }
        }

        KeyframeGroup {
            target: sceneCamera
            property: "eulerRotation.y"

            Keyframe {
                frame: 901
                value: 0
            }
        }

        KeyframeGroup {
            target: sceneCamera
            property: "eulerRotation.z"

            Keyframe {
                frame: 901
                value: -0
            }
        }

        KeyframeGroup {
            target: sceneCamera
            property: "z"
            Keyframe {
                frame: 901
                value: 294.29517
            }
        }
    }
}
