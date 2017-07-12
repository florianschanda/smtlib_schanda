(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 15159899693910466243) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1101001001100010110010000111001101110110000101100001111011000011))
;; x should be 15159899693910466243
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.geq r (fp #b0 #b10111110 #b10100100110001011001000)))
(check-sat)
(exit)
