(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 2083667150706117374) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0001110011101010101011000011101111011011111111010000101011111110))
;; x should be 2083667150706117374
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.leq r ((_ to_fp 11 53) #x43BCEAAC3BDBFD0B)))
(check-sat)
(exit)
