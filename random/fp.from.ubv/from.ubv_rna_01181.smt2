(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 1678641563) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01100100000011100000100110011011))
;; x should be 1678641563
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
