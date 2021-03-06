(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01010101001000010111101)))
;; x should be Float32(0x002A90BD [Rational(2789565, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x3D7DFEA9)))
;; y should be Float32(0x3D7DFEA9 [Rational(16645801, 268435456), 0.062010])

(declare-const result Float32)
(assert (= result (fp.mul RTP x y)))
(assert (not (= result (fp #b0 #b00000000 #b00000101010001110110111))))
(check-sat)
(exit)
