let project = new Project('krafix');

project.setCmd();

project.kore = false;
project.cpp11 = true;

project.addExclude('.git/**');
project.addExclude('build/**');

project.addFile('Sources/**');

if (platform === Platform.Windows) {
	project.addIncludeDir("Libraries/DirectX/Include");
	project.addLibFor("Win32", "d3d11");
	project.addLibFor("Win32", "d3dcompiler");
}

resolve(project);
