if [ -e ./arch/arm/boot/zImage ]; then
	echo "**** Successfully built kernel ****"

	echo "**** Copying kernel to build_result/kernel/ ****"
	mkdir -p ./build_result/kernel/
	cp ./arch/arm/boot/zImage ./build_result/kernel/zImage

	echo "**** Copying all built modules (.ko) to build_result/modules/ ****"
	mkdir -p ./build_result/modules/
	for file in $(find ./ -name *.ko); do
		cp $file ./build_result/modules/
	done
fi
