(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b01111101 #b11111111111111111110001)))
;; x should be Float32(0xBEFFFFF1 [Rational(-16777201, 33554432), -0.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 0

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000000))
;; z should be 0

(assert (= y z))
(check-sat)
(exit)
