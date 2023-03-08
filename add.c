#define MAX_OPERATIONS 2048

typedef __INT32_TYPE__ int32_t;

typedef struct _operations {
  int32_t a, b, c;
} operations_t;

operations_t operations[MAX_OPERATIONS];

int32_t add(int32_t a, int32_t b) {
  return a + b;
}

void compute()
{
  for (int32_t i = 0; i < 2048; i++)
  {
    operations[i].c = add(operations[i].a, operations[i].b);
  }
}
