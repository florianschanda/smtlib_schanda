(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC915EA70)))
;; x should be Float32(0xC915EA70 [Rational(-614055), -614055.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be -614055

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111101101010000101011001))
;; z should be -614055

(assert (not (= y z)))
(check-sat)
(exit)
