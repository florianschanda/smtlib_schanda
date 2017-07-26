(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11101000000110011000100)))
;; x should be Float32(0x4AF40CC4 [Rational(7997026), 7997026.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be 7997026

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011110100000011001100010))
;; z should be 7997026

(assert (= y z))
(check-sat)
(exit)
