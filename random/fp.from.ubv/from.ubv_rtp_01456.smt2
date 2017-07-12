(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 4611686018427387900) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0011111111111111111111111111111111111111111111111111111111111100))
;; x should be 4611686018427387900
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.eq r ((_ to_fp 11 53) #x43D0000000000000)))
(check-sat)
(exit)
