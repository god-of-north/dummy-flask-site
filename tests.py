from this_site import index, index_html

r = index()
r2 = index_html()
if r!=r2:
    print("Index test: FAILED!")
    exit(100)
else:
    print("Index test: SUCCESS!")

exit(0)
