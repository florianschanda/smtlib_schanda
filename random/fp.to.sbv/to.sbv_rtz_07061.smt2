(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x45F47628)))
;; x should be Float32(0x45F47628 [Rational(2002629, 256), 7822.769531])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be 7822

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000001111010001110))
;; z should be 7822

(assert (not (= y z)))
(check-sat)
(exit)
