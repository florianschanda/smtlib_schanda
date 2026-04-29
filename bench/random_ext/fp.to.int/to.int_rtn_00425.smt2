(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTN +subnormal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10001011110110000011000)))
;; x should be Float32(0x0045EC18 [Rational(572803, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 0

(declare-const z Int)
(assert (= z 0))
(assert (= y z))
