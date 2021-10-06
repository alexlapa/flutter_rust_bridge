#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct wire_Size {
  int32_t width;
  int32_t height;
} wire_Size;

typedef struct wire_Point {
  double x;
  double y;
} wire_Point;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_list_tree_node {
  struct wire_TreeNode *ptr;
  int32_t len;
} wire_list_tree_node;

typedef struct wire_TreeNode {
  struct wire_uint_8_list *name;
  struct wire_list_tree_node *children;
} wire_TreeNode;

typedef struct wire_list_size {
  struct wire_Size *ptr;
  int32_t len;
} wire_list_size;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

void wire_draw_mandelbrot(int64_t port,
                          struct wire_Size *image_size,
                          struct wire_Point *zoom_point,
                          double scale,
                          int32_t num_threads);

void wire_passing_complex_structs(int64_t port, struct wire_TreeNode *root);

void wire_memory_test_utility_input_array(int64_t port, struct wire_uint_8_list *input);

void wire_memory_test_utility_output_zero_copy_buffer(int64_t port, int32_t len);

void wire_memory_test_utility_output_vec_u8(int64_t port, int32_t len);

void wire_memory_test_utility_input_vec_of_object(int64_t port, struct wire_list_size *input);

void wire_memory_test_utility_output_vec_of_object(int64_t port, int32_t len);

void wire_memory_test_utility_input_complex_struct(int64_t port, struct wire_TreeNode *input);

void wire_memory_test_utility_output_complex_struct(int64_t port, int32_t len);

struct wire_Size *new_box_autoadd_size(void);

struct wire_Point *new_box_autoadd_point(void);

struct wire_uint_8_list *new_uint_8_list(int32_t len);

struct wire_TreeNode *new_box_autoadd_tree_node(void);

struct wire_list_tree_node *new_list_tree_node(int32_t len);

struct wire_list_size *new_list_size(int32_t len);

void store_dart_post_cobject(DartPostCObjectFnType ptr);
