(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 14896159402561574627) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b1100111010111001110010100000110110101011010001110001011011100011))
;; x should be 14896159402561574627
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.eq r ((_ to_fp 8 24) #x5F4EB9CA)))
(check-sat)
(exit)
