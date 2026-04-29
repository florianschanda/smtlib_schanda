(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00010110 #b00010110110100011101010)))
;; x should be Float32(0x0B0B68EA [Rational(4568181, 170141183460469231731687303715884105728), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x39616D1D40000000 [Rational(4568181, 170141183460469231731687303715884105728), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x39616D1D40000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
