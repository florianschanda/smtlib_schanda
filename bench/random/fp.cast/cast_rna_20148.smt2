(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x91596BEA)))
;; x should be Float32(0x91596BEA [Rational(-7124469, 41538374868278621028243970633760768), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xBA2B2D7D40000000 [Rational(-7124469, 41538374868278621028243970633760768), -0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xBA2B2D7D40000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
