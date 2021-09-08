#! /bin/zsh

if [ -z ${K8S_REPOSITORY+x} ]; then 
        echo "\n\nusage: export K8S_REPOSITORY=[your private registry here]\n\n"
        exit
fi

for f in *; do
	if [ -d "$f" ]; then
		echo 
		echo "Building $f..."
		echo 
		./build.sh $f
		echo 
		echo "Finished building $f!"
		echo 
	fi 
done
