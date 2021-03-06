(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11101110 #b00111000001010000010101)))
;; x should be Float32(0x771C1415 [Rational(3165646960605152121134085300027392), 3165646960605152121134085300027392.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7FE8F39A)))
;; y should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.min x y)))
(assert (= result (fp #b0 #b11101110 #b00111000001010000010101)))
(check-sat)
(exit)
