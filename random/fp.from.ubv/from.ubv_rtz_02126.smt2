(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 140663901291010888819684195018815056986) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b01101001110100101110000111001000000100011100110100000001111000111100011010110110111010100111100010011111011111000010110001011010))
;; x should be 140663901291010888819684195018815056986
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTZ x)))
(assert (fp.eq r ((_ to_fp 8 24) #x7ED3A5C3)))
(check-sat)
(exit)
