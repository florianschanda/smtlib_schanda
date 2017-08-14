(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01111100010101001001010)))
;; x should be Float32(0x4ABE2A4A [Rational(6231333), 6231333.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be 6231333

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010111110001010100100101))
;; z should be 6231333

(assert (= y z))
(check-sat)
(exit)
