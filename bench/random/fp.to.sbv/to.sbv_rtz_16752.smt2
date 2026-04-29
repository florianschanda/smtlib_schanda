(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11100110000000111001100)))
;; x should be Float32(0xCAF301CC [Rational(-7962854), -7962854.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -7962854

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100001100111111100011010))
;; z should be -7962854

(assert (not (= y z)))
(check-sat)
(exit)
