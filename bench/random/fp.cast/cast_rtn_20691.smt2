(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b01111011 #b01010010001011001110010)))
;; x should be Float32(0xBDA91672 [Rational(-5540665, 67108864), -0.082562])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0xBFB522CE40000000 [Rational(-5540665, 67108864), -0.082562])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xBFB522CE40000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
