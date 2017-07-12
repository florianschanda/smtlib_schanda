(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :category random)
(set-info :status sat)
;; ubv(>= 255211775190703847597530955573826158594) -> float
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010))
;; x should be 255211775190703847597530955573826158594
(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTP x)))
(assert (fp.geq r ((_ to_fp 8 24) #x7F400001)))
(check-sat)
(exit)
