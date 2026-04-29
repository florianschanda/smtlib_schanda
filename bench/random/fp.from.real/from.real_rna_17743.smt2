(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x497D1EB8)))
;; x should be Float32(0x497D1EB8 [Rational(2073559, 2), 1036779.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 1327077769.0 1280.0))))
;; w should be Float32(0x497D1EB8 [Rational(2073559, 2), 1036779.500000])

(assert (= x w))
(check-sat)
(exit)
