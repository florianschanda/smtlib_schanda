(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x69AAD78D)))
;; x should be Float32(0x69AAD78D [Rational(25816912389902290808471552), 25816912389902290808471552.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x45355AF1A0000000 [Rational(25816912389902290808471552), 25816912389902290808471552.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10001010011 #b0101010110101111000110100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
