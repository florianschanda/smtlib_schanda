(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 13835058055282163715) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1100000000000000000000000000000000000000000000000000000000000011))
;; x should be 13835058055282163715
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x5F400000))))
(check-sat)
(exit)
