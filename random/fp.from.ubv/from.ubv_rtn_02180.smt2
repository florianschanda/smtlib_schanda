(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 184564936441644952949353476874943344844) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10001010110110011110100111101101010101011010101001111101111111000100001100110000100000011101111001100100000001000011000011001100))
;; x should be 184564936441644952949353476874943344844
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r ((_ to_fp 11 53) #x47E15B3D3DAAB54F)))
(check-sat)
(exit)
