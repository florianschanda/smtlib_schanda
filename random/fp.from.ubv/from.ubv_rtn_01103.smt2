(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 1487419792) -> float
(declare-const x (_ BitVec 32))
(assert (bvuge x #b01011000101010000011100110010000))
;; x should be 1487419792
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (not (fp.geq r ((_ to_fp 8 24) #x4EB15073))))
(check-sat)
(exit)
