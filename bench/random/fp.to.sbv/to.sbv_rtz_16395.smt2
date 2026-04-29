(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10000011010111110011100)))
;; x should be Float32(0x4AC1AF9C [Rational(6346702), 6346702.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be 6346702

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011000001101011111001110))
;; z should be 6346702

(assert (not (= y z)))
(check-sat)
(exit)
