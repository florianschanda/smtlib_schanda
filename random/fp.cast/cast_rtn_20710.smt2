(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xA9B3D337)))
;; x should be Float32(0xA9B3D337 [Rational(-11785015, 147573952589676412928), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xBFD367A66E0000000000000000000000 [Rational(-11785015, 147573952589676412928), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111111010011 #b0110011110100110011011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
