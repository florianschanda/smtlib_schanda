(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11100000 #b00110101010010100110000)))
;; x should be Float32(0xF01AA530 [Rational(-191441563785258928561652236288), -191441563785258928561652236288.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x3F57BB7F)))
;; y should be Float32(0x3F57BB7F [Rational(14138239, 16777216), 0.842705])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00000001)))
;; z should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #xF00251FF))))
(check-sat)
(exit)
