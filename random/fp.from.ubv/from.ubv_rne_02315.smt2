(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 291295018040447102501810962981230956541) -> float
(declare-const x (_ BitVec 128))
(assert (bvule x #b11011011001001010110000100111001111000100101011001001000000100100101001100001100001101111001010100001111101101110100111111111101))
;; x should be 291295018040447102501810962981230956541
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNE x)))
(assert (fp.leq r ((_ to_fp 8 24) #x7F5B2561)))
(check-sat)
(exit)
