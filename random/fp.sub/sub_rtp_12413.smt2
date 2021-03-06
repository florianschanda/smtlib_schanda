(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A706B12)))
;; x should be Float32(0x4A706B12 [Rational(7878025, 2), 3939012.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA57419A)))
;; y should be Float32(0xCA57419A [Rational(-7053517, 2), -3526758.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTP x y)))
(assert (not (= result (fp #b0 #b10010101 #b11000111101011001010110))))
(check-sat)
(exit)
