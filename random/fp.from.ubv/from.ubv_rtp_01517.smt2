(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 4501097363312523118) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0011111001110111000111000011010000111111101100001011011101101110))
;; x should be 4501097363312523118
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.eq r (_ +oo 5 11)))
(check-sat)
(exit)
