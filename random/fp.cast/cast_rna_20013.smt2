(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x2B495A6D)))
;; x should be Float32(0x2B495A6D [Rational(13195885, 18446744073709551616), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x3D692B4DA0000000 [Rational(13195885, 18446744073709551616), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x3D692B4DA0000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
