(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 1709553802) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01100101111001011011100010001010))
;; x should be 1709553802
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r ((_ to_fp 8 24) #x4ECBCB72)))
(check-sat)
(exit)
