(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x491C3A38)))
;; x should be Float32(0x491C3A38 [Rational(1279815, 2), 639907.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC9D4870C)))
;; y should be Float32(0xC9D4870C [Rational(-3482051, 2), -1741025.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x0054CF50)))
;; z should be Float32(0x0054CF50 [Rational(347381, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b1 #b10100111 #b00000011011001010100000))))
(check-sat)
(exit)
