import SceneKit
import PlaygroundSupport

let sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))

PlaygroundPage.current.liveView = sceneView

let scene = SCNScene()

sceneView.scene = scene

sceneView.backgroundColor = UIColor.gray
sceneView.autoenablesDefaultLighting = true

let node = SCNNode()

//torus.geometry = SCNTorus(ringRadius: 1, pipeRadius: 0.5)
//node.geometry = SCNBox(width: 1, height: 1, length: 1, chamferRadius: 0.1)
node.geometry = SCNPyramid(width: 1, height: 1, length: 1)
node.geometry?.firstMaterial?.diffuse.contents = UIColor.brown
//node.geometry?.firstMaterial?.specular.contents = UIColor.white

let node1 = SCNNode()

node1.geometry = SCNBox(width: 1, height: 1, length: 1, chamferRadius: 0.1)

node1.geometry?.firstMaterial?.diffuse.contents = UIColor.brown
//node1.geometry?.firstMaterial?.specular.contents = UIColor.white
node1.position = SCNVector3(0,-0.5,0)
node.addChildNode(node1)

//let floor = SCNNode()

//floor.geometry = SCNFloor()
//floor.position = SCNVector3(0, -1, 0)
//scene.rootNode.addChildNode(floor)

scene.rootNode.addChildNode(node)

SCNTransaction.begin()
SCNTransaction.animationDuration = 5
node.position = SCNVector3(0, 0, -1)
SCNTransaction.commit()



