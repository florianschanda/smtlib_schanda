(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 80319932088212412135832801277571691311) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b00111100011011010000111001100101010110011011000100100000010110000010011011010100110100001000100100100001011000101111001100101111))
;; x should be 80319932088212412135832801277571691311
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.geq r ((_ to_fp 8 24) #x7E71B439)))
(check-sat)
(exit)
