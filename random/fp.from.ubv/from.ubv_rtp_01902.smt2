(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 13835058055282163715) -> float
(declare-const x (_ BitVec 64))
(assert (bvuge x #b1100000000000000000000000000000000000000000000000000000000000011))
;; x should be 13835058055282163715
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r ((_ to_fp 8 24) #x5F400001)))
(check-sat)
(exit)
