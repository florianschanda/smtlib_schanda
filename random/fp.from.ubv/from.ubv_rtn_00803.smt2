(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 36310) -> float
(declare-const x (_ BitVec 16))
(assert (= x #b1000110111010110))
;; x should be 36310
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTN x)))
(assert (fp.eq r (fp #b0 #b10000001110 #b0001101110101100000000000000000000000000000000000000)))
(check-sat)
(exit)
