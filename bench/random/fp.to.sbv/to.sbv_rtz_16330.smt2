(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010000 #b01011010110000111100000)))
;; x should be Float32(0x482D61E0 [Rational(355087, 2), 177543.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be 177543

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000101011010110000111))
;; z should be 177543

(assert (= y z))
(check-sat)
(exit)
