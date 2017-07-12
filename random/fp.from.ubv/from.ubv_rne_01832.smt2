(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 15423349224458833589) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1101011000001010101111100110011100111010101010100100111010110101))
;; x should be 15423349224458833589
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.eq r (fp #b0 #b11111 #b0000000000)))
(check-sat)
(exit)
