(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01110101001100100100111)))
;; x should be Float32(0x4ABA9927 [Rational(12228903, 2), 6114451.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7F946BE2)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xFF7FFFFF)))
;; z should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (_ NaN 8 24)))
(check-sat)
(exit)
