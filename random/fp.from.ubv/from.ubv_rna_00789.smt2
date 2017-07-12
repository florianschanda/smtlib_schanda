(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 32770) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1000000000000010))
;; x should be 32770
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.eq r ((_ to_fp 8 24) #x47000200)))
(check-sat)
(exit)
