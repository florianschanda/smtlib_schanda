(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(= 3061626625) -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10110110011111001011011100000001))
;; x should be 3061626625
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.eq r ((_ to_fp 8 24) #x4F367CB7)))
(check-sat)
(exit)
