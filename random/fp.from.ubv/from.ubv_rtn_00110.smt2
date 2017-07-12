(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 35) -> float
(declare-const x (_ BitVec 8))
(assert (bvule x #b00100011))
;; x should be 35
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTN x)))
(assert (fp.leq r ((_ to_fp 5 11) #x5060)))
(check-sat)
(exit)
