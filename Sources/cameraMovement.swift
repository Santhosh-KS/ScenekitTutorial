//import SceneKit
//import PlaygroundSupport
//
//let sceneView = SCNView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
//
//PlaygroundPage.current.liveView = sceneView
//
//let scene = SCNScene()
//
//sceneView.scene = scene
//
//sceneView.backgroundColor = UIColor.gray
//sceneView.autoenablesDefaultLighting = true
//
//let torus = SCNNode()
//
//torus.geometry = SCNTorus(ringRadius: 1, pipeRadius: 0.5)
//torus.geometry?.firstMaterial?.diffuse.contents = UIColor.brown
//
//let box = SCNNode()
//
//box.geometry = SCNBox(width: 1, height: 1, length: 2, chamferRadius: 0.1)
//box.geometry?.firstMaterial?.diffuse.contents = UIColor.green
//
//let box1 = SCNNode()
//
//box1.geometry = SCNBox(width: 1, height: 1, length: 2, chamferRadius: 0.1)
//box1.geometry?.firstMaterial?.diffuse.contents = UIColor.systemGray
//let cameraNode = SCNNode()
//
//cameraNode.camera = SCNCamera()
//cameraNode.position = SCNVector3(x: 0,y: 0,z:1)
//scene.rootNode.addChildNode(cameraNode)
//
//
//
//sceneView.pointOfView = cameraNode
//
//scene.rootNode.addChildNode(torus)
//scene.rootNode.addChildNode(box1)
//scene.rootNode.addChildNode(box)
//
//
//torus.eulerAngles = SCNVector3(90*CGFloat.pi/180, 0, 0)
//torus.position = SCNVector3(0,0,-2)
//box.position = SCNVector3(0,0,-5)
//box1.position = SCNVector3(0,0,-7)
//
//cameraNode.position = box.position
////
//SCNTransaction.begin()
//SCNTransaction.animationDuration = 5
//cameraNode.scale = SCNVector3(0.3, 0.3, 0.3)
//cameraNode.position = SCNVector3(box.position.x, box.position.y+2, box.position.z)
//cameraNode.eulerAngles = SCNVector3(0,360*CGFloat.pi/180, 0)
//SCNTransaction.commit()
