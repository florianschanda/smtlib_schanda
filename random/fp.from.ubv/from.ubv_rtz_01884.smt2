(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(<= 13835058055282163714) -> float
(declare-const x (_ BitVec 64))
(assert (bvule x #b1100000000000000000000000000000000000000000000000000000000000010))
;; x should be 13835058055282163714
(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.leq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
