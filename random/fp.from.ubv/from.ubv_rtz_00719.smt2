(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 29315) -> float
(declare-const x (_ BitVec 16))
(assert (bvuge x #b0111001010000011))
;; x should be 29315
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7728)))
(check-sat)
(exit)
