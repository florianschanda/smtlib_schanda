(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00010101 #b10101111001001000011100)))
;; x should be Float32(0x0AD7921C [Rational(3531911, 170141183460469231731687303715884105728), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 30046176287549701242786163982928500617796682943.0 1447401115466452442794637312608598848165874808320507050493219800098914120499200.0))))
;; w should be Float32(0x0AD7921C [Rational(3531911, 170141183460469231731687303715884105728), 0.000000])

(assert (= x w))
(check-sat)
(exit)
