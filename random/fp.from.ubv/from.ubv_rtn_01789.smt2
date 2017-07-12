(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 13835058055282163711) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1011111111111111111111111111111111111111111111111111111111111111))
;; x should be 13835058055282163711
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.leq r ((_ to_fp 11 53) #x43E7FFFFFFFFFFFF)))
(check-sat)
(exit)
