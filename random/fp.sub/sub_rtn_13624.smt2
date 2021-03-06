(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11111111 #b11110110100011000100011)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y (fp #b0 #b11100101 #b01100110100111100111000)))
;; y should be Float32(0x72B34F38 [Rational(7103179052837550554453704179712), 7103179052837550554453704179712.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTN x y)))
(assert (= result ((_ to_fp 8 24) #xFFFFFFFF)))
(check-sat)
(exit)
