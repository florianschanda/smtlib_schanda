(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC94E9938)))
;; x should be Float32(0xC94E9938 [Rational(-1692455, 2), -846227.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0xC129D32700000000 [Rational(-1692455, 2), -846227.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010010 #b1001110100110010011100000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
