(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 6467547536858721377) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0101100111000001010110000011011111011110011010101010110001100001))
;; x should be 6467547536858721377
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.leq r (fp #b0 #b10111101 #b01100111000001010110000)))
(check-sat)
(exit)
