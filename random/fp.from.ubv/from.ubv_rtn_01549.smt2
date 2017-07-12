(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 4611686018427387903) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0011111111111111111111111111111111111111111111111111111111111111))
;; x should be 4611686018427387903
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.geq r ((_ to_fp 8 24) #x5E7FFFFF)))
(check-sat)
(exit)
