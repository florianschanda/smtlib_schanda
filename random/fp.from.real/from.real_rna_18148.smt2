(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x (fp #b1 #b11100011 #b00011101100110110001100)))
;; x should be Float32(0xF18ECD8C [Rational(-1414251594206707215682034991104), -1414251594206707215682034991104.000000])

(declare-const r Real)
(assert (and (> r (- 1414251669764570941596358410240.0)) (<= r (- 1414251518648843489767711571968.0))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA r)))
(assert (not (= x w)))
(check-sat)
(exit)
