(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b01011101 #b00101111011111111011100)))
;; x should be Float32(0x2E97BFDC [Rational(2486263, 36028797018963968), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 2400843311.0 90071992547409920000.0)))))
;; w should be Float32(0xADEA7515 [Rational(-15365397, 576460752303423488), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
