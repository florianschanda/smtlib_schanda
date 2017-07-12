(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 17984321807493747345) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1111100110010101001001010110011000011101111110011101001010010001))
;; x should be 17984321807493747345
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
