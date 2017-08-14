(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A74C9AA)))
;; x should be Float32(0x4A74C9AA [Rational(8021205, 2), 4010602.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 4010602

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000001111010011001001101010))
;; z should be 4010602

(assert (not (= y z)))
(check-sat)
(exit)
