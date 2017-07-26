(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10110100 #b01001111000011111100111)))
;; x should be Float32(0xDA2787E7 [Rational(-11788936829468672), -11788936829468672.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -11788936829468672

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111010110000111100000011001000000000000000000000000000000))
;; z should be -11788936829468672

(assert (= y z))
(check-sat)
(exit)
