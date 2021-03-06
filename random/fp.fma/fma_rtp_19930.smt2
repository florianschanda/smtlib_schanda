(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80649AC2)))
;; x should be Float32(0x80649AC2 [Rational(-3296609, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11111110 #b11111111111111111111111)))
;; y should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x8000F308)))
;; z should be Float32(0x8000F308 [Rational(-7777, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (= result (fp #b1 #b10000000 #b10010010011010110000011)))
(check-sat)
(exit)
