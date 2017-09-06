(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTZ -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00001011 #b11000111111100010111101)))
;; x should be Float32(0x85E3F8BD [Rational(-14940349, 696898287454081973172991196020261297061888), -0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 0

(declare-const z Int)
(assert (= z 0))
(assert (= y z))
