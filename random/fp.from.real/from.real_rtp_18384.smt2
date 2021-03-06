(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x3529B1A2)))
;; x should be Float32(0x3529B1A2 [Rational(5560529, 8796093022208), 0.000001])

(declare-const r Real)
(assert (and (> r (/ 11121057.0 17592186044416.0)) (<= r (/ 5560529.0 8796093022208.0))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP r)))
(assert (not (= x w)))
(check-sat)
(exit)
