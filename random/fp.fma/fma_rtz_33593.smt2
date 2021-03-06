(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11111000110110110101110)))
;; x should be Float32(0x807C6DAE [Rational(-4077271, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010100 #b10110011110011110101010)))
;; y should be Float32(0x4A59E7AA [Rational(7140309, 2), 3570154.500000])

(declare-const z Float32)
(assert (= z (_ +zero 8 24)))
;; z should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b1 #b00010110 #b10100111101001100100100)))
(check-sat)
(exit)
