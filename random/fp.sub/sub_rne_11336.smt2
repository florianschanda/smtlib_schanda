(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00111100 #b10000010010010111111011)))
;; x should be Float32(0x1E4125FB [Rational(12658171, 1237940039285380274899124224), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b10110011001000001001000)))
;; y should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.sub RNE x y)))
(assert (= result ((_ to_fp 8 24) #xFFFFFFFF)))
(check-sat)
(exit)
