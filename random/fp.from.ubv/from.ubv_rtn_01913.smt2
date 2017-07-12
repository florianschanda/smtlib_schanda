(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 18399745723837567935) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1111111101011001000001110011111111110010110110011101001110111111))
;; x should be 18399745723837567935
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.leq r ((_ to_fp 8 24) #x5F7F5907)))
(check-sat)
(exit)
