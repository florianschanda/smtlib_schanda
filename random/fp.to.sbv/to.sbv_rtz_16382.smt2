(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A90E89C)))
;; x should be Float32(0x4A90E89C [Rational(4748366), 4748366.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 4748366

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010010000111010001001110))
;; z should be 4748366

(assert (not (= y z)))
(check-sat)
(exit)
