(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 13835058055282163714) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1100000000000000000000000000000000000000000000000000000000000010))
;; x should be 13835058055282163714
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNA x)))
(assert (not (fp.leq r ((_ to_fp 5 11) #x7C00))))
(check-sat)
(exit)
