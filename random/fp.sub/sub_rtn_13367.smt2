(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b10111100010110110000110)))
;; x should be Float32(0xCA5E2D86 [Rational(-7280323, 2), -3640161.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b11111111111111111111111)))
;; y should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTN x y)))
(assert (not (= result (fp #b1 #b10010100 #b10111100010110110000110))))
(check-sat)
(exit)
