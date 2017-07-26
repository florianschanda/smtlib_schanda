(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11101000000110011000110)))
;; x should be Float32(0x4AF40CC6 [Rational(7997027), 7997027.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be 7997027

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011110100000011001100011))
;; z should be 7997027

(assert (= y z))
(check-sat)
(exit)
