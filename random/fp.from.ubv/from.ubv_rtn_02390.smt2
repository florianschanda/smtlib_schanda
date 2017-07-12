(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 309310299993990083519749135489699230399) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11101000101100101111111100110011111101011000010101111000001110010111110111010110001111000101101100001111110001010011001010111111))
;; x should be 309310299993990083519749135489699230399
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.leq r ((_ to_fp 11 53) #x47ED165FE67EB0AF)))
(check-sat)
(exit)
