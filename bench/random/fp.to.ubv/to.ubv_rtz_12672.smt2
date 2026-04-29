(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00101111000101010100000)))
;; x should be Float32(0x4A978AA0 [Rational(4965712), 4965712.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be 4965712

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010010111100010101010000))
;; z should be 4965712

(assert (not (= y z)))
(check-sat)
(exit)
