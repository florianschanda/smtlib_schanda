(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCB4A6703)))
;; x should be Float32(0xCB4A6703 [Rational(-13264643), -13264643.000000])

(declare-const r Real)
(assert (and (> r (- 13264644.0)) (<= r (- 13264643.0))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP r)))
(assert (not (= x w)))
(check-sat)
(exit)
