(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 43153771664033336956047496815949960730) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00100000011101110001110100110110000011101011010010010101100001001100001001100111110010100111011111000111000110001101011000011010))
;; x should be 43153771664033336956047496815949960730
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r ((_ to_fp 11 53) #x47C03B8E9B075A4A)))
(check-sat)
(exit)
