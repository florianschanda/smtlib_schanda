(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 13835058055282163710) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1011111111111111111111111111111111111111111111111111111111111110))
;; x should be 13835058055282163710
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.geq r ((_ to_fp 11 53) #x43E8000000000000)))
(check-sat)
(exit)
