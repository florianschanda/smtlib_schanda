(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 731362876489737271) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0000101000100110010100101010100101000111000101000010010000110111))
;; x should be 731362876489737271
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.leq r ((_ to_fp 11 53) #x43A44CA5528E2848)))
(check-sat)
(exit)
