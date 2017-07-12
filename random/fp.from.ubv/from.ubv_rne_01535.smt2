(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 2056216806754390707) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0001110010001001001001100100101010011011110010001001001010110011))
;; x should be 2056216806754390707
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (not (fp.geq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
