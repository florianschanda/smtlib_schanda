(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00800000)))
;; y should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11000101 #b10101010101010100100010)))
;; z should be Float32(0x62D55522 [Rational(1967645476671283265536), 1967645476671283265536.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b0 #b11000101 #b10101010101010100100011)))
(check-sat)
(exit)
