(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 178643193519320520129034760138788303020) -> float
(declare-const x (_ BitVec 128))
(assert (= x #b10000110011001010110110101110101100111101001110010011100100100100101100011111000010011011111100011100011001101011111000010101100))
;; x should be 178643193519320520129034760138788303020
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.eq r ((_ to_fp 8 24) #x7F06656D)))
(check-sat)
(exit)
