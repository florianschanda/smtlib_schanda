(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 4611686018427387906) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0100000000000000000000000000000000000000000000000000000000000010))
;; x should be 4611686018427387906
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r ((_ to_fp 8 24) #x5E800001)))
(check-sat)
(exit)
