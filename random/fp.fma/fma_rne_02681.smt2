(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b01001011 #b10101001100000110110010)))
;; x should be Float32(0x25D4C1B2 [Rational(6971609, 18889465931478580854784), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0049A550)))
;; y should be Float32(0x0049A550 [Rational(301653, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4AB6EB41)))
;; z should be Float32(0x4AB6EB41 [Rational(11987777, 2), 5993888.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x4AB6EB41))))
(check-sat)
(exit)
