require 'ffi'

module Fiddle

  class DLError < StandardError
  end

  HAVE_LONG_LONG = true
  SIGNEDNESS_OF_SIZE_T = 0 # is it?

  SIZEOF_VOIDP = FFI.type_size(:pointer)
  SIZEOF_CHAR = FFI.type_size(:char)
  SIZEOF_SHORT = FFI.type_size(:short)
  SIZEOF_INT = FFI.type_size(:int)
  SIZEOF_LONG = FFI.type_size(:long)
  SIZEOF_LONG_LONG = FFI.type_size(:long_long) if HAVE_LONG_LONG
  SIZEOF_FLOAT = FFI.type_size(:float)
  SIZEOF_DOUBLE = FFI.type_size(:double)
  SIZEOF_SIZE_T = FFI.type_size(:size_t)
  SIZEOF_SSIZE_T = FFI.type_size(:ssize_t)
  SIZEOF_PTRDIFF_T = FFI.type_size(:ptrdiff_t)
  SIZEOF_INTPTR_T = FFI.type_size(:intptr_t)
  SIZEOF_UINTPTR_T = FFI.type_size(:uintptr_t)

  TYPE_VOID = 0
  TYPE_VOIDP = 1
  TYPE_CHAR = 2
  TYPE_SHORT = 3
  TYPE_INT = 4
  TYPE_LONG = 5
  TYPE_LONG_LONG = 6 if HAVE_LONG_LONG
  TYPE_FLOAT = 7
  TYPE_DOUBLE = 8

  if SIZEOF_SIZE_T == SIZEOF_INT
    TYPE_SSIZE_T = TYPE_INT
  elsif SIZEOF_SIZE_T == SIZEOF_LONG
    TYPE_SSIZE_T = TYPE_LONG
  elsif HAVE_LONG_LONG && SIZEOF_SIZE_T == SIZEOF_LONG_LONG
    TYPE_SSIZE_T = TYPE_LONG_LONG
  end

  TYPE_SIZE_T = -1 * SIGNEDNESS_OF_SIZE_T * TYPE_SSIZE_T
  TYPE_PTRDIFF_T = nil
  TYPE_INTPTR_T = nil
  TYPE_UINTPTR_T = nil

  ALIGN_VOIDP = nil
  ALIGN_CHAR = nil
  ALIGN_SHORT = nil
  ALIGN_INT = nil
  ALIGN_LONG = nil
  ALIGN_LONG_LONG = nil if HAVE_LONG_LONG
  ALIGN_FLOAT = nil
  ALIGN_DOUBLE = nil
  ALIGN_SIZE_T = nil
  ALIGN_SSIZE_T = nil
  ALIGN_PTRDIFF_T = nil
  ALIGN_INTPTR_T = nil
  ALIGN_UINTPTR_T = nil

  WINDOWS = nil

  RUBY_FREE = nil

  BUILD_RUBY_PLATFORM = nil

  def self.dlwrap(*args)
    raise
  end

  def self.dlunwrap(*args)
    raise
  end

  def self.malloc(*args)
    raise
  end

  def self.realloc(*args)
    raise
  end

  def self.free(*args)
    raise
  end

  class Function

    DEFAULT = nil
    STDCALL = nil # if we have it

    def initialize(*args)
      raise
    end

    def call(*args)
      raise
    end

  end

  class Closure

    def initialize(*args)
      raise
    end

    def to_i(*args)
      raise
    end
    
  end

  class Handle

    def self.sym(*args)
      raise
    end

    def self.[](*args)
      raise
    end

    NEXT = nil
    DEFAULT = nil
    RTLD_GLOBAL = nil
    RTLD_LAZY = nil
    RTLD_NOW = nil

    def initialize(library=nil, flags=RTLD_LAZY|RTLD_GLOBAL)
      raise
    end

    def to_i(*args)
      raise
    end

    def close(*args)
      raise
    end

    def sym(*args)
      raise
    end

    def [](*args)
      raise
    end

    def disable_close(*args)
      raise
    end

    def enable_close(*args)
      raise
    end

    def close_enabled?(*args)
      raise
    end

  end

  class Pointer

    def self.malloc(*args)
      raise
    end

    def self.to_ptr(*args)
      raise
    end

    def self.[](*args)
      raise
    end

    def initialize(address, size=nil, freefunc=nil)
      raise if size
      raise if freefunc
      @pointer = FFI::Pointer.new(address)
    end

    def free=(*args)
      raise
    end

    def free(*args)
      raise
    end

    def call_free(*args)
      raise
    end

    def freed?(*args)
      raise
    end

    def to_i(*args)
      raise
    end

    def to_int(*args)
      raise
    end

    def to_value(*args)
      raise
    end

    def ptr(*args)
      raise
    end

    def +@(*args)
      raise
    end

    def ref(*args)
      raise
    end

    def -@(*args)
      raise
    end

    def null?(*args)
      raise
    end

    def to_s(*args)
      raise
    end

    def to_str(*args)
      raise
    end

    def inspect(*args)
      raise
    end

    def <=>(*args)
      raise
    end

    def ==(*args)
      raise
    end

    def eql?(*args)
      raise
    end

    def +(*args)
      raise
    end

    def -(*args)
      raise
    end

    def [](*args)
      raise
    end

    def []=(*args)
      raise
    end

    def size(*args)
      raise
    end

    def size=(*args)
      raise
    end

  end

  NULL = Pointer.new(0)

end
