(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 13835058055282163708) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1011111111111111111111111111111111111111111111111111111111111100))
;; x should be 13835058055282163708
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7C00)))
(check-sat)
(exit)
