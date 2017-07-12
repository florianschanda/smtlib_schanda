(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 290001031) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b00010001010010010001000010000111))
;; x should be 290001031
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.geq r (fp #b0 #b10000011011 #b0001010010010001000010000111000000000000000000000000)))
(check-sat)
(exit)
