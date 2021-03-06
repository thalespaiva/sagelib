from sage.libs.ntl.ntl_ZZ_decl cimport ZZ_c
from sage.libs.ntl.ntl_ZZ_p_decl cimport ZZ_p_c
from sage.libs.ntl.ntl_ZZ_pX_decl cimport ZZ_pX_c

cdef extern from "ntl_wrap.h":
    #### ZZ_pE_c
    ctypedef struct ZZ_pE_c "struct ZZ_pE":
        pass

    # Some boiler-plate
    ZZ_pE_c* ZZ_pE_new "New<ZZ_pE>"()
    ZZ_pE_c* ZZ_pE_construct "Construct<ZZ_pE>"(void *mem)
    void ZZ_pE_destruct "Destruct<ZZ_pE>"(ZZ_pE_c *mem)
    void ZZ_pE_delete "Delete<ZZ_pE>"(ZZ_pE_c *mem)
    void ZZ_pE_from_str "_from_str<ZZ_pE>"(ZZ_pE_c* dest, char* s)
    object ZZ_pE_to_PyString "_to_PyString<ZZ_pE>"(ZZ_pE_c *x)
    int ZZ_pE_equal "_equal<ZZ_pE>"(ZZ_pE_c x, ZZ_pE_c y)

    #ZZ_pE_c* str_to_ZZ_pE(char* s)
    #void del_ZZ_pE(ZZ_pE_c* n)
    #void ZZ_pE_to_str(char** s, ZZ_pE_c* x)
    void ZZ_pE_add "add"( ZZ_pE_c x, ZZ_pE_c a, ZZ_pE_c b)
    void ZZ_pE_add_long "add"( ZZ_pE_c x, ZZ_pE_c a, long b)
    void ZZ_pE_add_ZZ_p "add"( ZZ_pE_c x, ZZ_pE_c a, ZZ_p_c b)
    void ZZ_pE_sub "sub"( ZZ_pE_c x, ZZ_pE_c a, ZZ_pE_c b)
    void ZZ_pE_sub_long "add"( ZZ_pE_c x, ZZ_pE_c a, long b)
    void ZZ_pE_sub_ZZ_p "sub"( ZZ_pE_c x, ZZ_pE_c a, ZZ_p_c b)
    void ZZ_pE_mul "mul"( ZZ_pE_c x, ZZ_pE_c a, ZZ_pE_c b)
    void ZZ_pE_mul_long "mul"( ZZ_pE_c x, ZZ_pE_c a, long b)
    void ZZ_pE_mul_ZZ_p "mul"( ZZ_pE_c x, ZZ_pE_c a, ZZ_p_c b)
    void ZZ_pE_negate "negate"(ZZ_pE_c x, ZZ_pE_c a)
    void ZZ_pE_power "power"(ZZ_pE_c t, ZZ_pE_c x, long e)
    int ZZ_pE_IsOne "IsOne"(ZZ_pE_c x)
    int ZZ_pE_IsZero "IsZero"(ZZ_pE_c x)
    ZZ_pX_c ZZ_pE_rep "rep"(ZZ_pE_c z)
    #void ntl_ZZ_pE_set_modulus(ZZ_pX_c* x)
    #int ZZ_pE_eq( ZZ_pE_c* x,  ZZ_pE_c* y)
    #int ZZ_pE_eq_ZZ_p( ZZ_pE_c* x, ZZ_p_c* y)
    void ZZ_pE_inv "inv"( ZZ_pE_c x, ZZ_pE_c a) # raises an error if a not invertible
    void ZZ_pE_div "div"( ZZ_pE_c x, ZZ_pE_c a, ZZ_pE_c b) # raises an error if b not invertible
    void ZZ_pE_div_ZZ_p "div"( ZZ_pE_c x, ZZ_pE_c a, ZZ_p_c b) # raises an error if b not invertible
    void ZZ_pE_ZZ_p_div "div"( ZZ_pE_c x, ZZ_p_c a, ZZ_pE_c b) # raises an error if b not invertible
    void ZZ_pE_random "random"( ZZ_pE_c x)
    void ZZ_pE_trace "trace"( ZZ_p_c x, ZZ_pE_c a)
    void ZZ_pE_norm "norm"( ZZ_p_c x, ZZ_pE_c a)

    ZZ_pE_c long_to_ZZ_pE "to_ZZ_pE"(long i)
    ZZ_pE_c ZZ_to_ZZ_pE "to_ZZ_pE"(ZZ_c i)
    ZZ_pE_c ZZ_p_to_ZZ_pE "to_ZZ_pE"(ZZ_p_c i)
    ZZ_pE_c ZZ_pX_to_ZZ_pE "to_ZZ_pE"(ZZ_pX_c i)
    ZZ_pX_c ZZ_pE_to_ZZ_pX(ZZ_pE_c x)
    
    #ZZ_pX_c rep(ZZ_pE_c x)
