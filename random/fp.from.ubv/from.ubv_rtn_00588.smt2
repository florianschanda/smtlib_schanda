(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 3) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b0000000000000011))
;; x should be 3
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r ((_ to_fp 8 24) #x40400000)))
(check-sat)
(exit)
