(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b00000100010110011101010)))
;; x should be Float32(0x4A022CEA [Rational(4265589, 2), 2132794.500000])

(declare-const result Bool)
(assert (= result (fp.isIntegral x)))
(assert (not (not result)))
(check-sat)
(exit)
