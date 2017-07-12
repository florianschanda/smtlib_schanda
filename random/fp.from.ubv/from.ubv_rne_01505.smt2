(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 3230624902888266542) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b0010110011010101011111000011101110001011001011111001101100101110))
;; x should be 3230624902888266542
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RNE x)))
(assert (fp.geq r (_ +oo 5 11)))
(check-sat)
(exit)
