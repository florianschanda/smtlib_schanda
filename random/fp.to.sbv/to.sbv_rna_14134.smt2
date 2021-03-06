(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10111100101101001001001)))
;; x should be Float32(0x4ADE5A49 [Rational(14572105, 2), 7286052.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be 7286053

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011011110010110100100101))
;; z should be 7286053

(assert (not (= y z)))
(check-sat)
(exit)
