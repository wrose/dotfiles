function ju
	set -Ux JAVA_HOME (/usr/libexec/java_home -v 1.$argv[1])
	set -U fish_user_paths $JAVA_HOME/bin
	java -version
end
