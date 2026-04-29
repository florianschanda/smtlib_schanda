(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x48CCCC50)))
;; x should be Float32(0x48CCCC50 [Rational(838853, 2), 419426.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be 419426

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000001100110011001100010))
;; z should be 419426

(assert (not (= y z)))
(check-sat)
(exit)
