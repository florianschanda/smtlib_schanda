(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11110111111000000000100)))
;; x should be Float32(0xCAFBF004 [Rational(-8255490), -8255490.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -8255490

(declare-const z (_ BitVec 32))
(assert (= z #b11111111100000100000011111111110))
;; z should be -8255490

(assert (not (= y z)))
(check-sat)
(exit)
