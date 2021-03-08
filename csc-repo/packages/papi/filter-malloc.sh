# Replace <malloc.h> with <stdlib.h>

find . -name \*.[ch] -exec sed -i -e 's/<malloc.h>/<stdlib.h>/g' {} \;
