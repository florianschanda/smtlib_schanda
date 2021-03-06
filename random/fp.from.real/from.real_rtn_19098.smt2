(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; hard: non-literal interval check
(declare-const x Float32)
(assert (= x (fp #b1 #b11110001 #b01011000110101101010110)))
;; x should be Float32(0xF8AC6B56 [Rational(-27976627847423665861738774040412160), -27976627847423665861738774040412160.000000])

(declare-const r Real)
(assert (and (>= r (- 27976627847423665861738774040412160.0)) (< r (- 27976625371543587290978224242163712.0))))
(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN r)))
(assert (= x w))
(check-sat)
(exit)
