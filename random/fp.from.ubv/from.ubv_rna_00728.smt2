(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 38704) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1001011100110000))
;; x should be 38704
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.eq r (fp #b0 #b11110 #b0010111001)))
(check-sat)
(exit)
