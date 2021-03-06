(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x9F6F124B)))
;; x should be Float32(0x9F6F124B [Rational(-15667787, 309485009821345068724781056), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000001)))
;; y should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4A0170EE)))
;; z should be Float32(0x4A0170EE [Rational(4241527, 2), 2120763.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b0 #b10010100 #b00000010111000011101101))))
(check-sat)
(exit)
