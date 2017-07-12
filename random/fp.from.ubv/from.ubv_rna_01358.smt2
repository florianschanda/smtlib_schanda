(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 3455820505) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11001101111110111010001011011001))
;; x should be 3455820505
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (fp.eq r ((_ to_fp 8 24) #x4F4DFBA3)))
(check-sat)
(exit)
