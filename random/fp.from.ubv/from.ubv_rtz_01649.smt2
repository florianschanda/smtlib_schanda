(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 5328432806405047026) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0100100111110010011001010110011111111011010011111000001011110010))
;; x should be 5328432806405047026
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
