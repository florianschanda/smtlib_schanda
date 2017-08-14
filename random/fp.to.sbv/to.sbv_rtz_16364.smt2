(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b00110010000011000000000)))
;; x should be Float32(0x49990600 [Rational(1253568), 1253568.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 1253568

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000100110010000011000000))
;; z should be 1253568

(assert (not (= y z)))
(check-sat)
(exit)
