(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b11000001101001001100010)))
;; x should be Float32(0x4A60D262 [Rational(7366961, 2), 3683480.500000])

(declare-const r Real)
(assert (and (>= r (/ 29467843.0 8.0)) (<= r (/ 29467845.0 8.0))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE r)))
(assert (= x w))
(check-sat)
(exit)
