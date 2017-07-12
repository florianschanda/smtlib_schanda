(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 4611686018427387906) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0100000000000000000000000000000000000000000000000000000000000010))
;; x should be 4611686018427387906
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x5E800000))))
(check-sat)
(exit)
