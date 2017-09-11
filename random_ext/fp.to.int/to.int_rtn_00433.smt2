(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTN -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b11010001100110111110100)))
;; x should be Float32(0xC9E8CDF4 [Rational(-3814269, 2), -1907134.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -1907135

(declare-const z Int)
(assert (= z (- 1907135)))
(assert (= y z))
