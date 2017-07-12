(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 990088151575938713) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b0000110110111101011111111110110110011011000000011100011010011001))
;; x should be 990088151575938713
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.leq r ((_ to_fp 8 24) #x5D5BD7FE)))
(check-sat)
(exit)
