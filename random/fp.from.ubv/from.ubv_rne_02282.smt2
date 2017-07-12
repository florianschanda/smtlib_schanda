(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 328202685771449298002746531154984247508) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11110110111010011000100110111100101100101011100001001010011001111110000111011111110011100100010100100000101000010010000011010100))
;; x should be 328202685771449298002746531154984247508
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNE x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x47EEDD3137965709))))
(check-sat)
(exit)
