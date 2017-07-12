(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 3209961073952485951) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0010110010001100000100101001011011110011110001001111001000111111))
;; x should be 3209961073952485951
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.geq r (fp #b0 #b10111100 #b01100100011000001001010)))
(check-sat)
(exit)
