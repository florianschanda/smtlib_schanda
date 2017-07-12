(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 7910812125079254786) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0110110111001000110110011011011011101000001100111011011100000010))
;; x should be 7910812125079254786
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
