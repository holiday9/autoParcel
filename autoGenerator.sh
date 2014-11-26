#read
awk '
{
	if ($2 == "int") {
		printf("%s = %s;\n", $3,"in.readInt()");
	} else if ($2 == "boolean") {
		printf("%s = %s;\n", $3,"ParcelUtils.readBooleanFromParcel(in)");
	}
}

' ./parcelTxt > result_read.txt

#write
awk '
{
	if ($2 == "int") {
		printf("dest.writeInt(%s);\n", $3);
	} else if ($2 == "boolean") {
	printf("ParcelUtils.writeBooleanToParcel(dest, %s);\n", $3);
	}
}

' ./parcelTxt > result_write.txt
