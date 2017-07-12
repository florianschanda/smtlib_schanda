(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 43604414175045858036892627368631397335) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b00100000110011011110011110011010001101000100001001011011000100110101111111001110010011011100111111011011011000001110101111010111))
;; x should be 43604414175045858036892627368631397335
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.leq r (fp #b0 #b10001111100 #b0000011001101111001111001101000110100010000100101101)))
(check-sat)
(exit)
