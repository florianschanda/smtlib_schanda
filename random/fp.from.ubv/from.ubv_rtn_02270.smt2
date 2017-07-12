(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 180604595919998712652697585064016545915) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10000111110111110010111000010000011001000111010010010011111100101101001110111101110011010001111000110011000000110000100001111011))
;; x should be 180604595919998712652697585064016545915
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r ((_ to_fp 11 53) #x47E0FBE5C20C8E92)))
(check-sat)
(exit)
