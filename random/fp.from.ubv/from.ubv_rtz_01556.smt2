(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 2458248194428282743) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0010001000011101011100111011010101011110101001001010011101110111))
;; x should be 2458248194428282743
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
