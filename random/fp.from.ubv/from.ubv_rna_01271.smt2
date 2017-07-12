(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 2301320222) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b10001001001010110101110000011110))
;; x should be 2301320222
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x41E1256B83C00000))))
(check-sat)
(exit)
