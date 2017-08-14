(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0B0B68EA)))
;; x should be Float32(0x0B0B68EA [Rational(4568181, 170141183460469231731687303715884105728), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNE x)))
;; y should be Float128(0x3F9616D1D40000000000000000000000 [Rational(4568181, 170141183460469231731687303715884105728), 0.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b011111110010110 #b0001011011010001110101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
