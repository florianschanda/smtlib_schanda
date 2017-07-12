(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 202984350568980296164624943387396230352) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b10011000101101010101110100101000100100011001011110100010000011100001110011010101111100101011011001011011100010110100110011010000))
;; x should be 202984350568980296164624943387396230352
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.leq r ((_ to_fp 11 53) #x47E316ABA51232F4))))
(check-sat)
(exit)
