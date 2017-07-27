(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b00000000000000000000000)))
;; x should be Float32(-oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 233592976477322330981042763959163970785.0))))
;; w should be Float32(0xFF2FBC5F [Rational(-233592977900677172261020243847825850368), -233592977900677172261020243847825850368.000000])

(assert (distinct x w))
(check-sat)
(exit)
