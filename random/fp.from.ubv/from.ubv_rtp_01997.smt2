(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 66461623164534664897311857935044741922) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b00110010000000000000101100000011011001000111110001000111000110010110111011111111011001001100000011101001000111101000101100100010))
;; x should be 66461623164534664897311857935044741922
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTP x)))
(assert (fp.eq r (_ +oo 5 11)))
(check-sat)
(exit)
