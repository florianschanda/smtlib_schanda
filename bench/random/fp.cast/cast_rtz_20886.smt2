(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00170328)))
;; x should be Float32(0x00170328 [Rational(188517, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x37E7032800000000 [Rational(188517, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x37E7032800000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
