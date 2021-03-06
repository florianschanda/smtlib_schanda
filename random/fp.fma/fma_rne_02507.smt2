(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00000001)))
;; x should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b11111000101101100100110)))
;; y should be Float32(0x807C5B26 [Rational(-4074899, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b10110101101010100110011)))
;; z should be Float32(0x805AD533 [Rational(-5952819, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x805AD533))))
(check-sat)
(exit)
