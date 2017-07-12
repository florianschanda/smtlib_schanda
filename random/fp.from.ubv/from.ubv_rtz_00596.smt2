(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 9847) -> float
(declare-const x (_ BitVec 16))
(assert (bvule x #b0010011001110111))
;; x should be 9847
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.leq r (fp #b0 #b11100 #b0011001110)))
(check-sat)
(exit)
