(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b01010101 #b01100110111001001101100)))
;; x should be Float32(0xAAB3726C [Rational(-2940059, 9223372036854775808), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- (/ 14700298799.0 46116860184273879040000.0)))))
;; w should be Float32(0xAAB37270 [Rational(-735015, 2305843009213693952), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
