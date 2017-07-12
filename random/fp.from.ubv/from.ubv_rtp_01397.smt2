(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 3475137682) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b11001111001000100110010010010010))
;; x should be 3475137682
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.leq r ((_ to_fp 8 24) #x4F4F2265)))
(check-sat)
(exit)
