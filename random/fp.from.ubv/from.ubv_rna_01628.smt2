(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 5945670600459702734) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0101001010000011010000111110100011011011111000100101000111001110))
;; x should be 5945670600459702734
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.geq r ((_ to_fp 8 24) #x5EA50688)))
(check-sat)
(exit)
