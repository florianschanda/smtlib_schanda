(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 8779641617429355983) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0111100111010111100011011000100011010110000111001101110111001111))
;; x should be 8779641617429355983
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.eq r (fp #b0 #b11110 #b1111111111)))
(check-sat)
(exit)
