(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 274936281429540749773100723730842743301) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11001110110101101100110100111101100010111011001100011111111011101000000011011100010111010011100010000100011010010111001000000101))
;; x should be 274936281429540749773100723730842743301
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.geq r ((_ to_fp 11 53) #x47E9DAD9A7B17664)))
(check-sat)
(exit)
