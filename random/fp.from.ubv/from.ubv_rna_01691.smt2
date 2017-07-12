(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 9783098947771872240) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1000011111000100100011001010100011110000011100001011001111110000))
;; x should be 9783098947771872240
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.leq r ((_ to_fp 11 53) #x43E0F891951E0E16)))
(check-sat)
(exit)
