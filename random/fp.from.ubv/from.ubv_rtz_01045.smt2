(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 1073741822) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00111111111111111111111111111110))
;; x should be 1073741822
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.eq r (fp #b0 #b10011100 #b11111111111111111111111)))
(check-sat)
(exit)
