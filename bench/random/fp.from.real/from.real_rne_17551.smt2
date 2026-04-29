(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
;; x should be Float32(-oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE 166474309348562569722860734257271849983.0)))
;; w should be Float32(0x7EFA7B92 [Rational(166474306345815442584071456208633987072), 166474306345815442584071456208633987072.000000])

(assert (distinct x w))
(check-sat)
(exit)
