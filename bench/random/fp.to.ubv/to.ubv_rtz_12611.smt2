(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01101000001111111100110)))
;; x should be Float32(0x4AB41FE6 [Rational(5902323), 5902323.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be 5902323

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010110100000111111110011))
;; z should be 5902323

(assert (= y z))
(check-sat)
(exit)
