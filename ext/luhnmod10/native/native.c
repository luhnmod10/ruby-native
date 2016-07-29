#include <ruby.h>

VALUE Luhnmod10 = Qnil;
VALUE Luhnmod10Native = Qnil;

void Init_native();
VALUE method_luhnmod10_native_valid(VALUE self, VALUE number);

void Init_native() {
  if (rb_const_defined(rb_cObject, rb_intern("Luhnmod10"))) {
    Luhnmod10 = rb_const_get(rb_cObject, rb_intern("Luhnmod10"));
  } else {
    Luhnmod10 = rb_define_module("Luhnmod10");
  }

  Luhnmod10Native = rb_define_module_under(Luhnmod10, "Native");
  rb_define_singleton_method(Luhnmod10Native, "valid?", method_luhnmod10_native_valid, 1);
}

VALUE method_luhnmod10_native_valid(VALUE self, VALUE vNumber) {
  unsigned int checksum = 0;

  char *number = RSTRING_PTR(vNumber);
  size_t numberLen = RSTRING_LEN(vNumber);

  long i;
  for (i = numberLen - 1; i >= 0; i -= 2) {
    unsigned char n = number[i] - '0';
    checksum += n;
  }
  for (i = numberLen - 2; i >= 0; i -= 2) {
    unsigned char n = number[i] - '0';
    n *= 2;
    if (n > 9) {
      n -= 9;
    }
    checksum += n;
  }

  return checksum%10 == 0 ? Qtrue : Qfalse;
}
