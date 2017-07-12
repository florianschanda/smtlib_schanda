(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 172758198319943084559464719764067196759) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10000001111110000000010011001011011000000101011111110101000011001000111110100110000110000010010000000000001100000001111101010111))
;; x should be 172758198319943084559464719764067196759
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.eq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
