(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(<= 1073741827) -> float
(declare-const x (_ BitVec 32))
(assert (bvule x #b01000000000000000000000000000011))
;; x should be 1073741827
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (not (fp.leq r ((_ to_fp 8 24) #x4E800001))))
(check-sat)
(exit)
