(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA1BADFA)))
;; x should be Float32(0xCA1BADFA [Rational(-5101309, 2), -2550654.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 3579146097.0 4096.0))))
;; w should be Float32(0x4955556F [Rational(13981039, 16), 873814.937500])

(assert (not (distinct x w)))
(check-sat)
(exit)
