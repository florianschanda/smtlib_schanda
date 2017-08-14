(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010001 #b10011001100110001100000)))
;; x should be Float32(0x48CCCC60 [Rational(419427), 419427.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be 419427

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000001100110011001100011))
;; z should be 419427

(assert (not (= y z)))
(check-sat)
(exit)
