(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 274668614596281601793153289318246344488) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b11001110101000110100000000111111001000111011101110110001100011101101100100000101011010111000101100100101010100110110011100101000))
;; x should be 274668614596281601793153289318246344488
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (fp.eq r (fp #b0 #b10001111110 #b1001110101000110100000000111111001000111011101110111)))
(check-sat)
(exit)
