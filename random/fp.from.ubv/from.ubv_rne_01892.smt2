(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 16201481274380459407) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1110000011010111001110010110000101000010100101110001110110001111))
;; x should be 16201481274380459407
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
