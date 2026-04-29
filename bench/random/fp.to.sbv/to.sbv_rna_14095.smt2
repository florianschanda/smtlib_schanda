(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10000111101110111111010)))
;; x should be Float32(0x4A43DDFA [Rational(6418173, 2), 3209086.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be 3209087

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001100001111011101111111))
;; z should be 3209087

(assert (not (= y z)))
(check-sat)
(exit)
