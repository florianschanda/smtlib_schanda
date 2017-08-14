(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA9B3D337)))
;; x should be Float32(0xA9B3D337 [Rational(-11785015, 147573952589676412928), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0xBD367A66E0000000 [Rational(-11785015, 147573952589676412928), -0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xBD367A66E0000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
