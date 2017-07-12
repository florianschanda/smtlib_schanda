(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(>= 17479090249860576705) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1111001010010010001100111111100101011011111011101111010111000001))
;; x should be 17479090249860576705
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTP x)))
(assert (not (fp.geq r ((_ to_fp 11 53) #x43EE52467F2B7DDF))))
(check-sat)
(exit)
