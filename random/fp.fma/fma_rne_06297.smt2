(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00100010010101011101000)))
;; x should be Float32(0x80112AE8 [Rational(-140637, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b01000010101011110110110)))
;; y should be Float32(0x002157B6 [Rational(1092571, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00001110 #b11010110011010101001100)))
;; z should be Float32(0x076B354C [Rational(3853651, 21778071482940061661655974875633165533184), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result ((_ to_fp 8 24) #x076B354C)))
(check-sat)
(exit)
