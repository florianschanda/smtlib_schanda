(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status unsat)
;; ubv(= 4928923892337651419) -> float
(declare-const x (_ BitVec 64))
(assert (= x #b0100010001100111000011100010101001011111101110001010111011011011))
;; x should be 4928923892337651419
(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.eq r ((_ to_fp 11 53) #x43D119C38A97EE2B))))
(check-sat)
(exit)
