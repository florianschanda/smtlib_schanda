(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10001000100101111101110)))
;; x should be Float32(0x4AC44BEE [Rational(6432247), 6432247.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 6432247

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011000100010010111110111))
;; z should be 6432247

(assert (= y z))
(check-sat)
(exit)
