(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 2945828147) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10101111100101011100010100110011))
;; x should be 2945828147
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.eq r ((_ to_fp 8 24) #x4F2F95C5)))
(check-sat)
(exit)
