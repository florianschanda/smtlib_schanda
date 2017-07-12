(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 3325827982302454997) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0010111000100111101101101110110111001101001100010010010011010101))
;; x should be 3325827982302454997
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r ((_ to_fp 8 24) #x5E389EDC)))
(check-sat)
(exit)
