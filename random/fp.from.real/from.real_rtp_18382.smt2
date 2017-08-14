(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x3529B1A2)))
;; x should be Float32(0x3529B1A2 [Rational(5560529, 8796093022208), 0.000001])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 24063988219.0 87960930222080000.0))))
;; w should be Float32(0x3492DFFC [Rational(2406399, 8796093022208), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
