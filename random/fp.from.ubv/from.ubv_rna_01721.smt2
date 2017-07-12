(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 13576507035564457973) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1011110001101001011100010011011110101001011010010011111111110101))
;; x should be 13576507035564457973
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x43E78D2E26F52D28))))
(check-sat)
(exit)
