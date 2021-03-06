(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ +zero 8 24)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b10001110110001001010010)))
;; y should be Float32(0x80476252 [Rational(-2339113, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RNA x y)))
(assert (= result (fp #b0 #b00000000 #b10001110110001001010010)))
(check-sat)
(exit)
