(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b11101110011111011011000)))
;; x should be Float32(0xCA773ED8 [Rational(-4050870), -4050870.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -4050870

(declare-const z (_ BitVec 32))
(assert (= z #b11111111110000100011000001001010))
;; z should be -4050870

(assert (= y z))
(check-sat)
(exit)
