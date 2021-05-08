
import SceneKit
import PlaygroundSupport

let sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))

PlaygroundPage.current.liveView = sceneView

let scene = SCNScene()

sceneView.scene = scene

sceneView.backgroundColor = UIColor.gray
sceneView.autoenablesDefaultLighting = true

let torusNode = SCNNode()
torusNode.geometry = SCNTorus(ringRadius: 1, pipeRadius: 0.5)
torusNode.geometry?.firstMaterial?.diffuse.contents = UIColor.brown

let boxNode = SCNNode()
boxNode.geometry = SCNBox(width: 1, height: 1, length: 1, chamferRadius: 0.1)
boxNode.geometry?.firstMaterial?.diffuse.contents = UIColor.green


let boxNode1 = SCNNode()
boxNode1.geometry = SCNBox(width: 1, height: 1, length: 1, chamferRadius: 0.1)
boxNode1.geometry?.firstMaterial?.diffuse.contents = UIColor.red


torusNode.eulerAngles = SCNVector3(90*CGFloat.pi/180, 0, 0)
boxNode.position = SCNVector3(0, 0, -5)
boxNode1.position = SCNVector3(-10 , 0, -5)

scene.rootNode.addChildNode(torusNode)
scene.rootNode.addChildNode(boxNode)
scene.rootNode.addChildNode(boxNode1)

let cameraNode = SCNNode()

cameraNode.camera = SCNCamera()

scene.rootNode.addChildNode(cameraNode)
sceneView.pointOfView = cameraNode

cameraNode.position = SCNVector3(0,0,3)

SCNTransaction.begin()
SCNTransaction.animationDuration = 5
//cameraNode.position = SCNVector3(0, 0, -3)
//cameraNode.scale = SCNVector3(0.09, 0.09, 0.09)
cameraNode.eulerAngles = SCNVector3(0,360*CGFloat.pi/180, 0)

SCNTransaction.commit()




