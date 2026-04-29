(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b11101100 #b11111111001100100101001)))
;; x should be Float32(0x767F9929 [Rational(1296037261670315269226544754589696), 1296037261670315269226544754589696.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ 86180914606321896723228515631445.0)))
;; w should be Float32(0x7487F831 [Rational(86180907673812322152013916798976), 86180907673812322152013916798976.000000])

(assert (distinct x w))
(check-sat)
(exit)
